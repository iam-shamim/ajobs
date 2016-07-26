<?php

namespace App\Http\Controllers;

use App\model\interview;
use App\model\notification;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Auth;
use Validator;

class applicantInterviewController extends Controller
{
    public function interviewCreate($jobsID,$applicantID){
        $currentUserData=session('profilesData');
        $job_applicants=DB::table('job_applicants')->where('id',$applicantID)->where('jobID',$jobsID)->where('status','ShortListed')->first();
        if(!$job_applicants){
            return view('404');
        }
        $profile=DB::table('profiles')->where('id',$job_applicants->profileID)->first();

        return view('interviewCreate',['data'=>$currentUserData,'profile'=>$profile,'jobsID'=>$jobsID,'applicantID'=>$applicantID]);

    }
    public function interviewStore(Request $input,$jobsID,$applicantID){
        $currentUserData=session('profilesData');
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $job=DB::table('jobs')->select(['jobs.id','jobs.jobTitle'])->where('id',$jobsID)->where('jobs.employerID',$employerID)->first();
        if(!$job){
            return redirect()->back();
        }
        $job_applicants=DB::table('job_applicants')->where('id',$applicantID)->where('jobID',$jobsID)->where('status','ShortListed')->first();
        $applicantsProfileID=$job_applicants->profileID;
        if(!$job_applicants){
            return redirect()->back();
        }
        $validation=Validator::make($input->all(),[
            'interviewDate'     =>  'required|date_format:d-m-Y',
            'interviewTime'     =>  'required',
            'interviewInfo'     =>  'required'
        ]);
        if($validation->fails()){
            return redirect()->back()->withErrors($validation)->withInput();
        }
        $interviewCount=DB::table('interviews')->where('jobID',$jobsID)->where('applicantID',$applicantID)->count();
        if($interviewCount){
            return redirect(route('applicant.shortList.view',$jobsID));
        }



        $interview=new interview();
        $interview->jobID=$jobsID;
        $interview->applicantID=$applicantID;
        $interview->interviewDate=date('Y-m-d',strtotime($input->interviewDate));
        $interview->interviewTime=htmlspecialchars($input->interviewTime);
        $interview->interviewType=$input->interviewType;
        $interview->interviewInfo=$input->interviewInfo;
        $interview->save();

        $notification=new notification();
        $notification->profileID=$applicantsProfileID;
        $notification->notificationText='You are invitated for an interview from "'.$job->jobTitle.'"';
        $notification->url=route('my.jobs.interview',$jobsID);
        $notification->save();
        return redirect(route('applicant.shortList.view',$jobsID));

    }

    public function newApplicant($id){
        $currentUserData=session('profilesData');
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $job=DB::table('jobs')->select('jobs.jobTitle','jobs.id')->where('id',$id)->where('jobs.employerID',$employerID)->first();
        if(!$job){
            return view('404');
        }
        $applicant=DB::table('jobs')
            ->select(['coverletters.coverLetter','job_applicants.id AS applicantsID','job_applicants.attachedResume','profiles.userID','profiles.firstName','profiles.middleName','profiles.lastName','job_applicants.status'])
            ->leftJoin('job_applicants','job_applicants.jobID','=','jobs.id')
            ->leftJoin('coverletters','coverletters.id','=','job_applicants.coverLetterID')
            ->leftJoin('employers','employers.id','=','jobs.employerID')
            ->leftJoin('profiles','profiles.id','=','job_applicants.profileID')
            ->where('jobs.id',$id)
            ->where('jobs.employerID',$employerID)
            ->where('job_applicants.status','applied')
            ->whereNotNull('job_applicants.id')
            ->orderBy('job_applicants.id','DESC')
            ->paginate(15);
        $applicantData=$applicant->items();
        $applicantApplied=[];
        while(list($key,$val)=each($applicantData)){
            if($val->status==='Applied'){
                $applicantApplied[]=$val->applicantsID;
                DB::table('notifications')->where('profileID',$currentUserData->id)->where('url',route('applicant.view',['jobsID'=>$id,'applicantID'=>$val->applicantsID]))->delete();
            }
        }
        if($applicantApplied){
            $update=DB::table('job_applicants')->whereIn('id',$applicantApplied)->update(['status'=>'Viewed']);
        }
        return view('jobsApplicantList',['data'=>$currentUserData,'job'=>$job,'applicant'=>$applicant,'pageTitle'=>'New Job Applications']);
    }
    public function shortListView($id){
        $currentUserData=session('profilesData');
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $job=DB::table('jobs')->select('jobs.jobTitle','jobs.id')->where('id',$id)->where('jobs.employerID',$employerID)->first();
        if(!$job){
            return view('404');
        }
        $applicant=DB::table('jobs')
            ->select(['coverletters.coverLetter','job_applicants.id AS applicantsID','job_applicants.attachedResume','profiles.userID','profiles.firstName','profiles.middleName','profiles.lastName','job_applicants.status','interviews.id AS interviewID'])
            ->leftJoin('job_applicants','job_applicants.jobID','=','jobs.id')
            ->leftJoin('coverletters','coverletters.id','=','job_applicants.coverLetterID')
            ->leftJoin('employers','employers.id','=','jobs.employerID')
            ->leftJoin('profiles','profiles.id','=','job_applicants.profileID')
            ->leftJoin('interviews','interviews.applicantID','=','job_applicants.id')
            ->where('jobs.id',$id)
            ->where('jobs.employerID',$employerID)
            ->where('job_applicants.status','ShortListed')
            ->whereNotNull('job_applicants.id')
            ->orderBy('job_applicants.id','DESC')
            ->paginate(15);
        
        return view('jobsApplicantShortList',['data'=>$currentUserData,'job'=>$job,'applicant'=>$applicant,'pageTitle'=>'Short List']);
    }


    public function shortList(Request $input,$id){
        $job_applicants=DB::table('job_applicants')->where('id',$id)->first();
        if(!$job_applicants){
            return false;
        }
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $jobID=$job_applicants->jobID;
        $job=DB::table('jobs')->where('id',$jobID)->where('employerID',$employerID)->first();
        if(!$job){
            return false;
        }
        if($input->actionType==='add'){
            DB::table('job_applicants')->where('id',$id)->update(['status'=>'ShortListed']);
        }else if($input->actionType=='remove'){
            DB::table('job_applicants')->where('id',$id)->update(['status'=>'Viewed']);
        }else{
            return false;
        }
    }
    public function reject(Request $input,$id){
        $job_applicants=DB::table('job_applicants')->where('id',$id)->first();
        if(!$job_applicants){
            return false;
        }
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $jobID=$job_applicants->jobID;
        $job=DB::table('jobs')->where('id',$jobID)->where('employerID',$employerID)->first();
        if(!$job){
            return false;
        }
        if($input->actionType==='add'){
            DB::table('job_applicants')->where('id',$id)->update(['status'=>'Rejected']);
        }else if($input->actionType=='remove'){
            DB::table('job_applicants')->where('id',$id)->update(['status'=>'Viewed']);
        }else{
            return false;
        }

    }
    public function applicant($id){
        $currentUserData=session('profilesData');
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $job=DB::table('jobs')->select('jobs.jobTitle','jobs.id')->where('id',$id)->where('jobs.employerID',$employerID)->first();
        if(!$job){
            return view('404');
        }
        $applicant=DB::table('jobs')
            ->select(['coverletters.coverLetter','job_applicants.id AS applicantsID','job_applicants.attachedResume','profiles.userID','profiles.firstName','profiles.middleName','profiles.lastName','job_applicants.status'])
            ->leftJoin('job_applicants','job_applicants.jobID','=','jobs.id')
            ->leftJoin('coverletters','coverletters.id','=','job_applicants.coverLetterID')
            ->leftJoin('employers','employers.id','=','jobs.employerID')
            ->leftJoin('profiles','profiles.id','=','job_applicants.profileID')
            ->where('jobs.id',$id)
            ->where('jobs.employerID',$employerID)
            ->whereNotNull('job_applicants.id')
            ->orderBy('job_applicants.id','DESC')
            ->paginate(15);
        $applicantData=$applicant->items();
        $applicantApplied=[];
        while(list($key,$val)=each($applicantData)){
            if($val->status==='Applied'){
                $applicantApplied[]=$val->applicantsID;
                echo route('applicant.view',['jobsID'=>$id,'applicantID'=>$val->applicantsID])."<br>";
                DB::table('notifications')->where('profileID',$currentUserData->id)->where('url',route('applicant.view',['jobsID'=>$id,'applicantID'=>$val->applicantsID]))->delete();
            }
        }
        if($applicantApplied){
            $update=DB::table('job_applicants')->whereIn('id',$applicantApplied)->update(['status'=>'Viewed']);

        }
        return view('jobsApplicantList',['data'=>$currentUserData,'job'=>$job,'applicant'=>$applicant,'pageTitle'=>'Job Applications']);
    }
    public function edit($id){
        $currentUserData=session('profilesData');
        $interview=interview::findOrFail($id);

        $job_applicants=DB::table('job_applicants')->where('id',$interview->applicantID)->where('jobID',$interview->jobID)->where('status','ShortListed')->first();
        if(!$job_applicants){
            return view('404');
        }
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $job=DB::table('jobs')->select('jobs.id')->where('id',$interview->jobID)->where('jobs.employerID',$employerID)->first();
        if(!$job){
            return view('404');
        }
        $profile=DB::table('profiles')->where('id',$job_applicants->profileID)->first();

        return view('interviewEdit',['data'=>$currentUserData,'profile'=>$profile,'interview'=>$interview]);
    }
    public function update(Request $input,$id){
        $currentUserData=session('profilesData');
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $interview=interview::findOrFail($id);
        $job=DB::table('jobs')->select(['jobs.id','jobs.jobTitle'])->where('id',$interview->jobID)->where('jobs.employerID',$employerID)->first();
        if(!$job){
            return redirect()->back();
        }
        $validation=Validator::make($input->all(),[
            'interviewDate'     =>  'required|date_format:d-m-Y',
            'interviewTime'     =>  'required',
            'interviewInfo'     =>  'required'
        ]);
        if($validation->fails()){
            return redirect()->back()->withErrors($validation)->withInput();
        }
        $job_applicants=DB::table('job_applicants')->where('id',$interview->applicantID)->where('jobID',$interview->jobID)->where('status','ShortListed')->first();
        $applicantsProfileID=$job_applicants->profileID;
        $countNotification=DB::table('notifications')->where('profileID',$applicantsProfileID)->where('url',route('my.jobs.interview',$interview->jobID))->count();
        if(!$countNotification){
            $notification=new notification();
            $notification->profileID=$applicantsProfileID;
            $notification->notificationText='Something changed your job interview for "'.$job->jobTitle.'"';
            $notification->url=route('my.jobs.interview',$interview->jobID);
            $notification->save();

            DB::table('interviews')->where('id',$id)->update(['seenByApplicant'=>null]);
        }


        $input->interviewDate;
        $interview->interviewDate=date('Y-m-d',strtotime($input->interviewDate));
        $interview->interviewTime=htmlspecialchars($input->interviewTime);
        $interview->interviewType=$input->interviewType;
        $interview->interviewInfo=$input->interviewInfo;
        $interview->save();
        return redirect(route('applicant.shortList.view',$interview->jobID));
    }
    public function interview($id){
        $currentUserData=session('profilesData');
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $job=DB::table('jobs')->select('jobs.jobTitle','jobs.id')->where('id',$id)->where('jobs.employerID',$employerID)->first();
        if(!$job){
            return view('404');
        }
        $interviews=DB::table('interviews')
            ->select(['interviews.id AS interviewID','interviewDate','interviewTime','interviewType','interviews.interviewInfo','seenByApplicant','job_applicants.id AS job_applicantID','firstName','lastName','middleName','userID'])
            ->leftjoin('job_applicants','job_applicants.id','=','interviews.applicantID')
            ->leftjoin('profiles','profiles.id','=','job_applicants.profileID')
            ->where('job_applicants.jobID',$id)
            ->paginate(15);
        return view('jobsApplicantInterviewList',['data'=>$currentUserData,'job'=>$job,'interviews'=>$interviews]);
    }
    public function applicantView($jobsID,$applicantID){
        $currentUserData=session('profilesData');
        if(isset($_GET['notificationDelete']) AND $_GET['notificationDelete']==='true'){
            DB::table('notifications')->where('profileID',$currentUserData->id)->where('url',route('applicant.view',['jobsID'=>$jobsID,'applicantID'=>$applicantID]))->delete();
        }
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $job=DB::table('jobs')->select(['jobs.id','jobs.jobTitle'])->where('id',$jobsID)->where('jobs.employerID',$employerID)->first();
        if(!$job){
            return view('404');
        }
        $job_applicants=DB::table('job_applicants')
            ->select(['job_applicants.*','coverletters.*','job_applicants.id AS applicantsID','firstName','lastName','middleName','userID','interviews.id AS interviewID'])
            ->leftJoin('coverletters','coverletters.id','=','job_applicants.coverLetterID')
            ->leftJoin('interviews','interviews.applicantID','=','job_applicants.id')
            ->leftJoin('profiles','profiles.id','=','job_applicants.profileID')
            ->where('job_applicants.id',$applicantID)
            ->where('job_applicants.jobID',$jobsID)
            ->first();
        if(!$job_applicants){
            return view('404');
        }
        if($job_applicants->status==='Applied'){
            DB::table('job_applicants')->where('id',$job_applicants->applicantsID)->update(['status'=>'Viewed']);
            DB::table('notifications')->where('profileID',$currentUserData->id)->where('url',route('applicant.view',['jobsID'=>$jobsID,'applicantID'=>$applicantID]))->delete();
        }
        return view('jobsApplicantView',['data'=>$currentUserData,'job'=>$job,'value'=>$job_applicants,'pageTitle'=>'Job Applications']);
    }
    public function interviewView($jobsID,$interviewID){
        $currentUserData=session('profilesData');
        $employer=DB::table('employers')
            ->where('userID',Auth::user()->id)
            ->first();
        $employerID=$employer->id;
        $job=DB::table('jobs')->select(['jobs.id','jobs.jobTitle'])->where('id',$jobsID)->where('jobs.employerID',$employerID)->first();
        if(!$job){
            return view('404');
        }
        $interview=DB::table('interviews')
            ->select(['job_applicants.*','interviews.*','job_applicants.id AS job_applicantID','firstName','lastName','middleName','userID','interviews.id AS interviewID'])
            ->leftJoin('job_applicants','job_applicants.id','=','interviews.applicantID')
            ->leftJoin('profiles','profiles.id','=','job_applicants.profileID')
            ->where('interviews.id',$interviewID)
            ->where('interviews.jobID',$jobsID)
            ->first();
        if(!$interview){
            return view('404');
        }
        return view('jobsInterviewSingle',['data'=>$currentUserData,'job'=>$job,'value'=>$interview,'pageTitle'=>'Job Interview']);
    }

}

<?php

namespace App\Http\Controllers;

use App\model\job;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Auth;

class applicantInterviewController extends Controller
{
    public function interviewCreate($jobsID,$applicantID){
        $currentUserData=session('profilesData');
        $job_applicants=DB::table('job_applicants')->where('id',$applicantID)->where('jobID',$jobsID)->where('status','ShortListed')->first();
        if(!$job_applicants){
            return view('404');
        }
        $profile=DB::table('profiles')->where('id',$job_applicants->profileID)->first();

        return view('interviewCreate',['data'=>$currentUserData,'profile'=>$profile]);

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
            ->select(['coverletters.coverLetter','job_applicants.id AS applicantsID','job_applicants.attachedResume','profiles.userID','profiles.firstName','profiles.middleName','profiles.lastName','job_applicants.status'])
            ->leftJoin('job_applicants','job_applicants.jobID','=','jobs.id')
            ->leftJoin('coverletters','coverletters.id','=','job_applicants.coverLetterID')
            ->leftJoin('employers','employers.id','=','jobs.employerID')
            ->leftJoin('profiles','profiles.id','=','job_applicants.profileID')
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
            }
        }
        if($applicantApplied){
            $update=DB::table('job_applicants')->whereIn('id',$applicantApplied)->update(['status'=>'Viewed']);
        }
        return view('jobsApplicantList',['data'=>$currentUserData,'job'=>$job,'applicant'=>$applicant,'pageTitle'=>'Job Applications']);
    }
}

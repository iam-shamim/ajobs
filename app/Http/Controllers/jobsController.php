<?php

namespace App\Http\Controllers;

use App\model\applicants;
use App\model\coverLetter;
use App\model\featuredApply;
use App\model\job;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Validator;
use Auth;
use App\model\notification;
use App\traits\jobCategoriesWithJobsCount;
class jobsController extends Controller{
    use jobCategoriesWithJobsCount;
    public function index(){
        $currentUserData=session('profilesData');
        return view('jobs_index',['data'=>$currentUserData]);
    }
    public function ownJobsList(){
        $page = (isset($_GET['page']))? $_GET['page']:1;
        $paginateValue=15;
        $sl=($page-1)*$paginateValue;
        $currentUserData=session()->get('profilesData');
        $employer=DB::table('employers')
            ->where('userID',$currentUserData->userID)
            ->first();

        if(!$employer){
            return redirect(route('company.index'));
        }
        $employerID=$employer->id;
        $jobs=DB::table('jobs')
            ->select(DB::raw('jobs.jobTitle,jobs.id AS jobID,employers.id AS employersID,count(`job_applicants`.`id`) AS applicantsCount'))
            ->leftJoin('categories','jobs.jobCategory','=','categories.id')
            ->leftJoin('employers','jobs.employerID','=','employers.id')
            ->leftJoin('companies','employers.companyID','=','companies.id')
            ->leftJoin('job_applicants','job_applicants.jobID','=','jobs.id')
            ->where('jobs.employerID',$employerID)
            ->orderBy('jobs.id','DESC')
            ->groupBy('jobs.id')
            ->paginate($paginateValue);
        $jobsIdStore=[];
        $jobsData=$jobs->items();
        while((list($key,$val)=each($jobsData))){
            $jobsIdStore[]=$val->jobID;
        }
        $interviewsCount=DB::table('interviews')
            ->select(DB::raw('count(jobID) as total,jobID'))
            ->whereIn('jobID',$jobsIdStore)
            ->groupBy('jobID')
            ->lists('total','jobID');
        $unseen=DB::table('job_applicants')
            ->select(DB::raw('count(jobID) as total,jobID'))
            ->whereIn('jobID',$jobsIdStore)
            ->where('status','Applied')
            ->groupBy('jobID')
            ->lists('total','jobID');
        $shortList=DB::table('job_applicants')
            ->select(DB::raw('count(jobID) as total,jobID'))
            ->whereIn('jobID',$jobsIdStore)
            ->where('status','ShortListed')
            ->groupBy('jobID')
            ->lists('total','jobID');

        return view('ownJobsList',['data'=>$currentUserData,'jobs'=>$jobs,'interviewsCount'=>$interviewsCount,'unseen'=>$unseen,'shortList'=>$shortList,'sl'=>$sl]);
    }
    public function newFeaturedJob(){
        $category=$this->categories();
        $hotJobs=DB::table('jobs')->select(['jobs.*','categories.categoryName','companies.companyName','companies.logo','employers.id AS employersID'])->where('jobs.featuredJob','=','1')->leftJoin('categories','jobs.jobCategory','=','categories.id')->leftJoin('employers','jobs.employerID','=','employers.id')->leftJoin('companies','employers.companyID','=','companies.id')->orderBy('jobs.id','DESC')->paginate(15);
        return view('newFeaturedJob',['hotJobs'=>$hotJobs,'category'=>$category]);
    }
    public function newJobs(){
        $category=$this->categories();
        $jobs=DB::table('jobs')->select(['jobs.*','categories.categoryName'])->leftJoin('categories','jobs.jobCategory','=','categories.id')->orderBy('jobs.id','DESC')->paginate(15);
        return view('newJobsQuery',['jobs'=>$jobs,'category'=>$category]);
    }
    public function jobCompany($id){
        $category=$this->categories();
        $company=DB::table('companies')->select('companyName')->leftJoin('employers','companies.id','=','employers.companyID')->where('employers.id',$id)->first();
        if (!$company){
            abort(404,'Company Not Found');
        }
        $jobs=DB::table('jobs')
            ->select(['jobs.*','categories.categoryName','companies.companyName'])
            ->leftJoin('categories','jobs.jobCategory','=','categories.id')
            ->leftJoin('employers','jobs.employerID','=','employers.id')
            ->leftJoin('companies','companies.id','=','employers.companyID')
            ->where('employers.id',$id)
            ->orderBy('jobs.id','DESC')->paginate(15);

        return view('JobListWIthCompany',['jobs'=>$jobs,'category'=>$category,'company'=>$company]);
    }
    public function jobSearch(Request $input){
        $jobKeyword = $input->jobKeyword;
        $jobLocation = $input->jobLocation;
        $keyword=$jobKeyword.' '.$jobLocation;
        $whereRaw='';
        $whereData=[];
        $urlParameters=[];
        $urlParameters['jobKeyword']=$jobKeyword;
        $urlParameters['jobLocation']=$jobLocation;

        $experienceData=(isset($input->experience))?$input->experience:0;
        $whereRaw.='`jobs`.`minimumExperience` >=? ' ;
        $whereData[]=$experienceData;
        $urlParameters['experience']=$experienceData;
        if(isset($input->category)  AND is_numeric($input->category) AND $input->category){
            $urlParameters['category']=$input->category;
            $whereRaw.='AND `jobs`.`jobCategory` =? ' ;
            $whereData[]=$input->category;
        }else{
            $urlParameters['category']='any';
        }

        $jobTypeLists=['fullTime'=>'FullTime','partTime'=>'PartTime','internship'=>'Internship','contractual'=>'Contractual'];
        $sl=0;
        while(list($key,$value)=each($jobTypeLists)){
            if(isset($input->$key)){
                $urlParameters[$key]='on';
                $$key='checked';
                $sl++;
                if($sl==1){
                    $whereRaw.='AND (';
                    $whereRaw.="`jobs`.`jobType` =? ";
                    $whereData[]=$value;
                }else{
                    $whereRaw.="OR `jobs`.`jobType` =? ";
                    $whereData[]=$value;
                }
            }else{
                $$key=null;
            }

        }
        if($sl){
            $whereRaw.=')';
        }else{
            $fullTime=$partTime=$internship=$contractual='checked';
        }
        if(empty($jobKeyword) AND empty($jobLocation)  AND isset($input->category)){
            $jobs=DB::table('jobs')
                ->select(['jobs.*','categories.categoryName','companies.companyName','companies.logo'])
                ->whereRaw($whereRaw,$whereData)
                ->leftJoin('categories','jobs.jobCategory','=','categories.id')->leftJoin('employers','jobs.employerID','=','employers.id')->leftJoin('companies','employers.companyID','=','companies.id')->orderBy('jobs.id','DESC')->paginate(15);
        }else{
            $jobs = DB::table('jobs')
                ->select(['jobs.*', 'categories.categoryName', 'companies.companyName', 'companies.logo'])
                ->whereRaw($whereRaw, $whereData)
                ->leftJoin('categories', 'jobs.jobCategory', '=', 'categories.id')->leftJoin('employers', 'jobs.employerID', '=', 'employers.id')->leftJoin('companies', 'employers.companyID', '=', 'companies.id')->whereRaw("MATCH(jobTitle,jobSummary,jobDescription,jobLocation) AGAINST(? IN BOOLEAN MODE)", [$keyword])->paginate(15);
        }
        $category=DB::table('categories')->lists('categoryName','id');
        $categoryGet=(isset($input->category))?$input->category:'any';
        $experienceGet=(isset($input->experience))?$input->experience:0;
        $experienceText=(isset($input->experience))?'checked':($input->experience>0)?$input->experience.' Years':'0 Year';
        return view('jobsSearch',['urlParameters'=>$urlParameters,'jobs'=>$jobs,'jobKeyword'=>$jobKeyword,'jobLocation'=>$jobLocation,'category'=>$category,'fullTime'=>$fullTime,'partTime'=>$partTime,'internship'=>$internship,'contractual'=>$contractual,'experienceGet'=>$experienceGet,'experienceText'=>$experienceText,'categoryGet'=>$categoryGet]);
    }
    public function create(){
        $userID=\Auth::user()->id;
        $employerID=DB::table('employers')->where('userID',$userID)->count();
        if(!$employerID){
            return redirect(route('company.create'));
        }
        $category=DB::table('categories')->orderBy('sortInd','asc')->lists('categoryName','id');
        $currentUserData=session('profilesData');
        return view('jobsCreate',['data'=>$currentUserData,'category'=>$category]);
    }
    public function edit($id){
        $userID=\Auth::user()->id;
        $employer=DB::table('employers')->where('userID',$userID)->first();
        if(!$employer){
            return redirect(route('company.create'));
        }
        $jobsSelect=job::where('id',$id)->where('employerID',$employer->id)->firstOrFail();
        $category=DB::table('categories')->orderBy('sortInd','asc')->lists('categoryName','id');
        $currentUserData=session('profilesData');
        return view('jobsEdit',['data'=>$currentUserData,'category'=>$category,'jobData'=>$jobsSelect]);
    }
    public function store(Requests\jobsRequest $input){
        $userID=\Auth::user()->id;
        $employer=DB::table('employers')->where('userID',$userID)->first();
        if(!$employer){
            return redirect(route('company.create'));
        }
        $jobs=new job();
        $jobs->employerID=$employer->id;
        $jobs->jobTitle=htmlspecialchars($input->jobTitle);
        $jobs->jobSummary=$input->jobSummary;
        $jobs->jobDescription=$input->jobDescription;
        $jobs->jobType=$input->jobType;
        $jobs->jobLocation=htmlspecialchars($input->jobLocation);
        $jobs->applicationEndDate=date('Y-m-d',strtotime($input->applicationEndDate));
        $jobs->salary=htmlspecialchars($input->salary);
        $jobs->jobCategory=$input->jobCategory;
        $jobs->applicationInstruction=$input->applicationInstruction;
        $jobs->numberOfPosition=$input->numberOfPosition;
        $jobs->minimumExperience=htmlspecialchars($input->minimumExperience);
        $jobs->minimumAge=$input->minimumAge;
        $jobs->others=$input->others;
        $jobs->save();
        $lastID=$jobs->id;
        return redirect(route('jobs.edit',$lastID));
    }
    public function update(Requests\jobsRequest $input,$id){
        $userID=\Auth::user()->id;
        $employer=DB::table('employers')->where('userID',$userID)->first();
        if(!$employer){
            return redirect(route('company.create'));
        }
        $jobs=job::where('id',$id)->where('employerID',$employer->id)->firstOrFail();
        $jobs->jobTitle=htmlspecialchars($input->jobTitle);
        $jobs->jobSummary=$input->jobSummary;
        $jobs->jobDescription=$input->jobDescription;
        $jobs->jobType=$input->jobType;
        $jobs->jobLocation=htmlspecialchars($input->jobLocation);
        $jobs->applicationEndDate=date('Y-m-d',strtotime($input->applicationEndDate));
        $jobs->salary=htmlspecialchars($input->salary);
        $jobs->jobCategory=$input->jobCategory;
        $jobs->applicationInstruction=$input->applicationInstruction;
        $jobs->numberOfPosition=$input->numberOfPosition;
        $jobs->minimumExperience=htmlspecialchars($input->minimumExperience);
        $jobs->minimumAge=$input->minimumAge;
        $jobs->others=$input->others;
        $jobs->save();
        return redirect()->back();
    }
    public function view($id){
        $applicantsStatus=false;
        if(Auth::check()){
            $currentUserData=session('profilesData');

            $applicantsCount=applicants::where('profileID',$currentUserData->id)->where('jobID',$id)->count();

            $applicantsStatus=($applicantsCount)?true:false;
        }
        $job=DB::table('jobs')->select(['jobs.*','companies.*','employers.*','profiles.firstName','profiles.middleName','profiles.lastName','jobs.created_at AS jobsPosted','companies.id AS companiesID','employers.id AS employersID'])->where('jobs.id',$id)
            ->leftJoin('employers','jobs.employerID','=','employers.id')
            ->leftJoin('companies','employers.companyID','=','companies.id')
            ->leftJoin('profiles','profiles.userID','=','employers.userID')
            ->first();
        if(!$job){
            return view('job404');
        }
        $job->jobType=preg_replace('/[[:upper:]]+/',' $0',$job->jobType);
        return view('jobsView',['job'=>$job,'id'=>$id,'applicantsStatus'=>$applicantsStatus]);
    }
    public function destroy($id){
        $userID=\Auth::user()->id;
        $employer=DB::table('employers')->where('userID',$userID)->first();
        if(!$employer){
            return redirect(route('company.create'));
        }
        job::where('id',$id)->where('employerID',$employer->id)->delete();
        return redirect(route('jobs.index'));
    }
    public function featured($id){
        $job=job::findOrFail($id);
        $job->featuredJob=1;
        $job->save();
        DB::table('featured_apply')->where('jobsID',$id)->delete();
        session()->flash('success','Featured success.');
        return redirect()->back();
    }
    public function undeclared($id){
        $job=job::findOrFail($id);
        $job->featuredJob=null;
        $job->save();
        return redirect()->back();
    }
    public function applyFeatured($id){
        $job=job::findOrFail($id);
        $job->featuredJob='';
        $job->save();

        $apply=new featuredApply();
        $apply->jobsID=$id;
        $apply->save();
        session()->flash('success','Featured apply successfully.');
        return redirect()->back();
    }
    protected function remove($id){
        job::findOrFail($id)->delete();
        session()->flash('success','Job remove successfully.');
        return redirect()->back();
    }
    public function featuredListIndex(){
        $perPage=20;
        $page=(isset($_GET['page']))?$_GET['page']:1;
        $sl=$perPage*($page-1)+1;
        $currentUserData=session('profilesData');
        $featuredList=DB::table('featured_apply')
            ->select(['featured_apply.id AS featuredID','featured_apply.created_at','jobs.id AS jobID','jobs.jobType','jobTitle','companies.companyName'])
            ->leftJoin('jobs','featured_apply.jobsID','=','jobs.id')
            ->leftJoin('employers','jobs.employerID','=','employers.id')
            ->leftJoin('companies','employers.companyID','=','companies.id')
            ->orderBy('featured_apply.id','desc')
            ->paginate($perPage);
        return view('dashboard.jobs.jobFeaturedIndex',['featuredList'=>$featuredList,'sl'=>$sl,'currentUserData'=>$currentUserData]);
    }
    public function jobList(){
        $perPage=20;
        $page=(isset($_GET['page']))?$_GET['page']:1;
        $sl=$perPage*($page-1)+1;
        $currentUserData=session('profilesData');
        $job=DB::table('jobs')->select(['jobs.id AS jobID','jobs.jobType','jobs.created_at','jobTitle','companies.companyName'])
            ->leftJoin('employers','jobs.employerID','=','employers.id')
            ->leftJoin('companies','employers.companyID','=','companies.id')
            ->paginate($perPage);
        return view('dashboard.jobs.jobList',['featuredList'=>$job,'sl'=>$sl,'currentUserData'=>$currentUserData]);
    }
    public function featuredRefuse($id){
        DB::table('featured_apply')->where('id',$id)->delete();
        session()->flash('success','Featured request successfully delete.');
        return redirect()->back();
    }
    public function application(Request $input,$id){
        $currentUserData=session('profilesData');
        $userID=\Auth::user()->id;
        $validator=Validator::make($input->all(),[
            'coverLetter'=>'required|min:50',
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $applicantsCount=applicants::where('profileID',$currentUserData->id)->where('jobID',$id)->count();
        if($applicantsCount){
            return redirect(route('jobs.view',['id'=>$id]));
        }
        $job=DB::table('jobs')->select(['jobs.id','jobs.jobTitle','profiles.id AS profileID'])
            ->leftJoin('employers','employers.id','=','jobs.employerID')
            ->leftJoin('profiles','profiles.userID','=','employers.userID')
            ->where('jobs.id',$id)->first();
        if(!$job){
            return redirect()->back();
        }
        $coverLetter=new coverLetter();
        $coverLetter->coverLetter=$input->coverLetter;
        $coverLetter->save();
        $coverLetterID=$coverLetter->id;

        $attachedResume=$input->file('attachedResume');
        $applicants=new applicants();
        $applicants->jobID=$id;
        $applicants->profileID=$currentUserData->id;
        $applicants->coverLetterID=$coverLetterID;
        if($attachedResume){
            $resumeName=md5(str_random(30).$userID.time().'_'.$input->file('attachedResume')->getClientOriginalName()).'.'.$input->file('attachedResume')->getClientOriginalExtension();
            $input->file('attachedResume')->move('resume/',$resumeName);
            $applicants->attachedResume=$resumeName;
        }
        $applicants->save();

        $notification=new notification();
        $notification->profileID=$job->profileID;
        $notification->notificationText='Someone apply to get a job in your company as a "'.$job->jobTitle.'"';
        $notification->url=route('applicant.view',['jobsID'=>$id,'applicantID'=>$applicants->id]);
        $notification->save();

        return redirect(route('jobs.view',['id'=>$id]));
    }
}

<?php

namespace App\Http\Controllers;

use App\model\featuredApply;
use App\model\job;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Validator;

class jobsController extends Controller{
    public function index(){
        $currentUserData=session('profilesData');
        return view('jobs_index',['data'=>$currentUserData]);
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
        //SELECT `jobs`.*,`companies`.* FROM `jobs` LEFT JOIN `employers` ON `jobs`.`employerID`=employers.id LEFT JOIN `companies` ON `employers`.`companyID`=companies.id
        $job=DB::table('jobs')->select(['jobs.*','companies.*','employers.*','jobs.created_at AS jobsPosted','companies.id AS companiesID','employers.id AS employersID'])->where('jobs.id',$id)
            ->leftJoin('employers','jobs.employerID','=','employers.id')
            ->leftJoin('companies','employers.companyID','=','companies.id')
            ->first();
        if(!$job){
            return view('job404');
        }
        return view('jobsView',['job'=>$job,'id'=>$id]);
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
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Auth;

class jobsSeekerJobController extends Controller{
    public function jobsApplicationList(){
        $currentUserData=session('profilesData');
        $page = (isset($_GET['page']))? $_GET['page']:1;
        $paginateValue=10;
        $sl=($page-1)*$paginateValue;
        $employer=DB::table('employers')->where('userID',Auth::user()->id)->first();
        $job_applicants=DB::table('job_applicants')
            ->select(['jobs.jobTitle','jobs.id AS jobID','job_applicants.id AS applicantID','job_applicants.status','interviews.id AS interviewID'])
            ->leftJoin('jobs','jobs.id','=','job_applicants.jobID')
            ->leftJoin('interviews','interviews.applicantID','=','job_applicants.id')
            ->where('job_applicants.profileID',$currentUserData->id)
            ->orderBy('job_applicants.id','DESC')
            ->paginate($paginateValue);
        return view('myJobsList',['data'=> $currentUserData,'applicants'=>$job_applicants,'sl'=>$sl]);
    }
    public function jobsInterview($id){
        $currentUserData=session('profilesData');
        $job=DB::table('jobs')->select(['id','jobTitle'])->where('id',$id)->first();
        if(!$job){
            return view('404');
        }
        $applicant=DB::table('job_applicants')->where('job_applicants.profileID',$currentUserData->id)->where('job_applicants.jobID',$id)->first();
        if(!$applicant){
            return view('404');
        }
        $interview=DB::table('interviews')
            ->where('interviews.applicantID',$applicant->id)
            ->where('interviews.jobID',$id)
            ->first();
        if(!$interview){
            return view('404');
        }
        $url=route('my.jobs.interview',$id);
        if($interview->seenByApplicant===null){
            DB::table('interviews')->where('id',$interview->id)->update(['seenByApplicant'=>1]);
        }
        DB::table('notifications')->where('profileID',$currentUserData->id)->where('url',$url)->delete();
        return view('myJobsInterview',['data'=> $currentUserData,'interview'=>$interview,'job'=>$job]);
    }
}

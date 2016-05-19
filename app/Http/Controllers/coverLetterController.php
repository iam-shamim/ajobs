<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\coverLetterRequest;
use App\model\Profile;
use DB;
use App\model\coverLetter;
use App\User;

class coverLetterController extends Controller{
    public function index(){
        $currentUserData=session('profilesData');
        $profilesID=Session()->get('profilesID');
        $coverLetter=coverLetter::where('profileID',5)->first();


        if(isset($coverLetter->id)){
            $addOrEditText='Edit Cover Latter';
            $routeLink=route('coverLetter.edit',$coverLetter->id);
            $coverLetterTitle=$coverLetter->coverLetterTitle;
            $coverLetterText=$coverLetter->actualText;
        }else{
            $addOrEditText='Add Cover Latter';
            $routeLink=route('coverLetter.add');
            $coverLetterTitle=null;
            $coverLetterText=null;
        }
        return view('coverLetter_index',['data'=>$currentUserData,'addOrEditText'=>$addOrEditText,'routeLink'=>$routeLink,'coverLetterTitle'=>$coverLetterTitle,'coverLetterText'=>$coverLetterText]);
    }
    public function view($id){
        $user=User::findOrFail($id);
        $userType=$user->userType;
        $data=Profile::where('userID',$id)->firstOrFail();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $profilesID=$data->id;
        $coverLetter=coverLetter::where('profileID',$profilesID)->first();


        if($coverLetter!==null){
            $coverLetterTitle=$coverLetter->coverLetterTitle;
            $coverLetterText=$coverLetter->actualText;
        }else{
            $coverLetterTitle=null;
            $coverLetterText=null;
        }
        return view('coverLetterView_index',['data'=>$data,'id'=>$id,'coverLetterTitle'=>$coverLetterTitle,'coverLetterText'=>$coverLetterText,'userType'=>$userType]);
    }
    public function add(){
        $currentUserData=session('profilesData');
        $profilesID=Session()->get('profilesID');
        return view('coverLetterAdd',['data'=>$currentUserData]);
    }
    public function store(coverLetterRequest $input){
        $profilesID=Session()->get('profilesID');
        $data=new coverLetter();
        $data->profileID=$profilesID;
        $data->coverLetterTitle=htmlspecialchars($input->coverLetterTitle);
        $data->actualText=htmlspecialchars($input->coverLetter);
        $data->save();
        return redirect(route('coverLetter.index'));
    }
    public function edit($id){
        $userID=\Auth::user()->id;
        $currentUserData=session('profilesData');
        $profilesID=Session()->get('profilesID');
        $coverLetter=coverLetter::findOrFail($id);
        return view('coverLetterEdit',['data'=>$currentUserData,'coverLetter'=>$coverLetter]);
    }
    public function update(coverLetterRequest $input,$id){
        $profilesID=Session()->get('profilesID');
        $data=coverLetter::where('id',$id)->where('profileID',$profilesID)->firstOrFail();
        $data->coverLetterTitle=htmlspecialchars($input->coverLetterTitle);
        $data->actualText=htmlspecialchars($input->coverLetter);
        $data->save();
        return redirect(route('coverLetter.index'));
    }


}

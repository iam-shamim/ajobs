<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\aboutRequest;
use App\model\Profile;
use DB;
use App\model\about;
use App\User;

class aboutController extends Controller{
    public function index(){
        $currentUserData=session('profilesData');
        $profilesID=Session()->get('profilesID');
        $about=about::where('profileID',$profilesID)->first();


        if(isset($about->id)){
            $addOrEditText='Edit About Me';
            $routeLink=route('about.me.edit',$about->id);
            $aboutTitle=$about->aboutTitle;
            $aboutText=$about->actualText;
        }else{
            $addOrEditText='Add About Me';
            $routeLink=route('about.me.add');
            $aboutTitle=null;
            $aboutText=null;
        }
        return view('about_index',['data'=>$currentUserData,'addOrEditText'=>$addOrEditText,'routeLink'=>$routeLink,'aboutTitle'=>$aboutTitle,'aboutText'=>$aboutText]);
    }
    public function view($id){
        $user=User::findOrFail($id);
        $userType=$user->userType;
        $data=Profile::where('userID',$id)->firstOrFail();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $profilesID=$data->id;
        $about=about::where('profileID',$profilesID)->first();

        if($about!==null){
            $aboutTitle=$about->aboutTitle;
            $aboutText=$about->actualText;
        }else{
            $aboutTitle=null;
            $aboutText=null;
        }
        return view('aboutView_index',['data'=>$data,'id'=>$id,'aboutTitle'=>$aboutTitle,'aboutText'=>$aboutText,'userType'=>$userType]);
    }
    public function add(){
        $currentUserData=session('profilesData');
        $profilesID=Session()->get('profilesID');
        return view('aboutAdd',['data'=>$currentUserData]);
    }
    public function store(aboutRequest $input){
        $profilesID=Session()->get('profilesID');
        $aboutCount=about::where('profileID',$profilesID)->count();
        if($aboutCount){
            return redirect(route('about.me.index'));
        }
        $data=new about();
        $data->profileID=$profilesID;
        $data->aboutTitle=htmlspecialchars($input->aboutTitle);
        $data->actualText=htmlspecialchars($input->aboutText);
        $data->save();
        return redirect(route('about.me.index'));
    }
    public function edit($id){
        $userID=\Auth::user()->id;
        $currentUserData=session('profilesData');
        $profilesID=Session()->get('profilesID');
        $about=about::findOrFail($id);
        return view('aboutEdit',['data'=>$currentUserData,'about'=>$about]);
    }
    public function update(aboutRequest $input,$id){
        $profilesID=Session()->get('profilesID');
        $data=about::where('id',$id)->where('profileID',$profilesID)->firstOrFail();
        $data->aboutTitle=htmlspecialchars($input->aboutTitle);
        $data->actualText=htmlspecialchars($input->aboutText);
        $data->save();
        return redirect(route('about.me.index'));
    }


}

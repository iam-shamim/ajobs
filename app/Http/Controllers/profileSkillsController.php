<?php

namespace App\Http\Controllers;

use App\model\profileSkills;
use App\model\skills;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\model\Profile;
use DB;
use Validator;
use Session;
use App\User;
class profileSkillsController extends Controller
{
    public function index(){
        $currentUserData=session('profilesData');

        $mySkills=DB::table('profile_skills')
            ->select('profile_skills.id','skills.skillName','profile_skills.skillRange')
            ->leftJoin('skills','profile_skills.skillID','=','skills.id')
            ->where('profile_skills.profileID',$currentUserData->id)
            ->get();
        $skills=DB::table('skills')->orderBy('sortInd','asc')->lists('skillName','id');
        return view('profileSkills_index',['data'=>$currentUserData,'mySkills'=>$mySkills,'skills'=>$skills]);
    }
    public function store(Request $input){
        $profilesID=$input->session()->get('profilesID');
        $validator=Validator::make($input->all(),[
            'skillName'=>'required',
            'skillRange'=>'required|integer|between:1,100'
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $profileSkills=new profileSkills();
        $profileSkills->profileID=$profilesID;
        $profileSkills->skillID=htmlspecialchars($input->skillName);
        $profileSkills->skillRange=$input->skillRange;
        $profileSkills->save();
        return redirect()->back();
    }
    public function edit($id){
        $currentUserData=session('profilesData');
        $mySkill=profileSkills::findOrFail($id);
        $skills=DB::table('skills')->orderBy('sortInd','asc')->lists('skillName','id');
        return view('profileSkillsEdit',['data'=>$currentUserData,'mySkill'=>$mySkill,'skills'=>$skills]);
    }
    public function update(Request $input,$id){
        $profilesID=$input->session()->get('profilesID');
        $validator=Validator::make($input->all(),[
            'skillName'=>'required',
            'skillRange'=>'required|integer|between:1,100'
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $profileSkills=profileSkills::findOrFail($id);
        $data=profileSkills::where('id',$id)->where('profileID',$profilesID)->firstOrFail();
        $profileSkills->profileID=$profilesID;
        $profileSkills->skillID=htmlspecialchars($input->skillName);
        $profileSkills->skillRange=$input->skillRange;
        $profileSkills->save();
        return redirect(route('profile.skills'));
    }
    public function view($id){
        $user=User::findOrFail($id);
        $userType=$user->userType;

        $data=Profile::where('userID',$id)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $profilesID=$data->id;
        $mySkills=DB::table('profile_skills')
            ->select('profile_skills.id','skills.skillName','profile_skills.skillRange')
            ->leftJoin('skills','profile_skills.skillID','=','skills.id')
            ->where('profile_skills.profileID',$profilesID)
            ->get();
        $skills=DB::table('skills')->orderBy('sortInd','asc')->lists('skillName','id');
        return view('profileSkillsView_index',['data'=>$data,'id'=>$id,'mySkills'=>$mySkills,'skills'=>$skills,'userType'=>$userType]);
    }
    public function destroy($id){
        $profileID=Session::get('profilesID');
        $data=profileSkills::where('id',$id)->where('profileID',$profileID);
        $data->delete();
    }
}

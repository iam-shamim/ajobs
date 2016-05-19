<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Mockery\CountValidator\Exception;
use Auth;
use Validator;
use Hash;
use Session;

class settingsGeneralController extends Controller{
    public function index(){
        $currentUserData=session('profilesData');
        $profilesID=Session()->get('profilesID');
        $url=url('/img/company');
        return view('settings_index',['data'=>$currentUserData]);
    }
    public function userNameUpdate(Request $input){
        $userName=trim($input->userName);
        $id=Auth::user()->id;
        try{
            if(!preg_match('/^[a-zA-z][a-zA-z0-9._]+$/',$userName)){
                throw new Exception('Your username must begin with a letter. and Only letters, numbers, underscores, period are allowed.');
            }
            if(strlen($userName)<5){
                throw new Exception('The user name must be at least 10 characters.');
            }
            $user=User::where('userName',$userName)->where('id','!=',$id)->count();
            if($user){
                throw new Exception('Username is not available.');
            }
        }catch(Exception $e){
            return response()->json([
                'error' =>  true,
                'errorType'   =>  'Bad request',
                'msg'   =>  $e->getMessage()
            ],400);
        }
        $user=User::findOrFail($id);
        $user->userName=$userName;
        $user->save();
        Auth::setUser($user);
    }
    public function passwordUpdate(Request $input){
        $id=Auth::user()->id;
        $validator=Validator::make($input->all(),[
            'oldPassword'   =>  'required',
            'password' =>   'required|min:8|confirmed'
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator);
        }
        $oldPassword=$input->oldPassword;
        $password=$input->password;
        $confirm_password=$input->password_confirmation;
        if(!Hash::check($oldPassword,Auth::user()->password)){
            $validator->errors()->add('passwordNotMatched', 'Your password was incorrect.');
            return redirect()->back()->withErrors($validator);
        }
        $user=User::findOrFail($id);
        $user->password=Hash::make($password);
        $user->save();
        Auth::setUser($user);
        Session::flash('success', 'password updated successfully.');
        return redirect()->back();

    }
}

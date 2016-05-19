<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use Hash;
use App\Http\Requests;
use Session;
use DB;

class loginController extends Controller
{

    public function index(){
        return view('login');
    }
    public function activationLink($link){
        $validator=Validator::make([],[]);
        if(strlen($link)>64){
            $validator->errors()->add('notMatched', 'Activation link not matched.');
            return view('activateWithLink',['routeTo'=>'profile','success'=>false])
                ->withErrors($validator);
        }
        $link1=substr($link,0,32);
        $link2=substr($link,32,64);
        $users=DB::table('mail_verification')->where('activeLink1',$link1)->where('activeLink2',$link2)->first();
        if(isset($users->userID)){
            DB::table('users')->where('id',$users->userID)->update(['userStatus'=>'Active']);
            DB::table('mail_verification')->where('userID',$users->userID)->delete();
            $usersInfo=DB::table('users')->where('id',$users->userID)->first();
            return view('activateWithLink',['routeTo'=>'profile','success'=>true,'userName'=>$usersInfo->userName]);
        }else{
            $validator->errors()->add('errorInActive', 'Activation link not matched.');
            return view('activateWithLink',['routeTo'=>'profile','success'=>false])
                ->withErrors($validator);
        }

    }
    public function auth(Request $input){
        $validator=Validator::make($input->all(),[
            'userName' =>   'required',
            'password' =>   'required'

        ]);
        if($validator->fails()){
            return redirect(route('login.create'))
                ->withErrors($validator)->withInput();
        }
        if(Auth::attempt(['userName'=>$input->userName,'password'=>$input->password])){
            $userType=Auth::user()->userType;
            $userStatus=Auth::user()->userStatus;
            $id=Auth::user()->id;
            DB::table('reset_password')->where('userID',$id)->delete();
            if($userStatus=='Active'){
                $data=DB::table('profiles')->where('userID',Auth::user()->id)->first();
                $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
                $input->session()->put(['profilesData'=>$data]);
                $input->session()->put(['profilesID'=>$data->id]);


                return redirect()->intended(url('/profile'));
            }else if($userStatus=='InActive'){
                $input->session()->put(['userName'=>Auth::user()->userName,'password'=>$input->password,'userID'=>Auth::user()->id,'resend'=>url('mail/resend')]);
                Auth::logout();
                return redirect(route('activation.code.form'));
            }else{
                Auth::logout();
                $validator->errors()->add('errorBlocked', 'You are blocked. please contact to admin.');
                    return redirect(route('login.create'))->withErrors($validator);
            }
        }else{
            $validator->errors()->add('errorNotFound', 'User or password not matched.');
            return redirect(route('login.create'))->withErrors($validator);
        }
    }
    public function activationForm(){
        $userSession=session('userName');
        $password=session('password');
        $resend=session('resend');
        if(!isset($userSession) OR !isset($password)){
            return redirect(route('login.create')) ;
        }
        return view('activationWithCode');
    }
    public function activationCode(Request $input){

        $userSession=session('userName');
        $password=session('password');
        if(!isset($userSession) OR !isset($password)){
            return redirect(route('login.create')) ;
        }
        $validator=Validator::make($input->all(),[
            'activationCode' =>   'required|numeric'
        ]);
        if($validator->fails()){
            return redirect(route('activation.code.form'))
                ->withErrors($validator)->withInput();
        }
        $activationCode=$input->activationCode;
        if(strlen(trim($activationCode))<10){
            $validator->errors()->add('errorInActive', 'Activation code not matched.');
            return redirect(route('activation.code.form'))
                ->withErrors($validator);
        }
        if(Auth::attempt(['userName'=>$userSession,'password'=>$password])){
            $userType=Auth::user()->userType;
            $userStatus=Auth::user()->userStatus;
            $userID=Auth::user()->id;
            DB::table('reset_password')->where('userID',$userID)->delete();

        }

        if($userStatus=='Active'){
            $input->session()->put(['userType'=>Auth::user()->userType]);
            return redirect()->intended(url('/profile'));
        }else if($userStatus=='InActive'){

            $code1=substr($activationCode,0,5);
            $code2=substr($activationCode,5,10);
            $count=DB::table('mail_verification')->where('activeCode1',$code1)->where('activeCode2',$code2)->where('userID',$userID)->count();

            if($count){
                session()->forget('userName');
                session()->forget('password');
                DB::table('users')->where('id',$userID)->update(['userStatus'=>'Active']);
                DB::table('mail_verification')->where('activeCode1',$code1)->where('activeCode2',$code2)->where('userID',$userID)->delete();
                return redirect()->intended(url('/profile'));
            }else{
                //$input->session()->put(['userNames'=>Auth::user()->userName,'password'=>$password,'resend'=>'http://location/resend']);
                Auth::logout();
                $validator->errors()->add('errorInActive', 'Activation code not matched.');
                return redirect(route('activation.code.form'))
                ->withErrors($validator);
            }

        }else{
            Auth::logout();
            $validator->errors()->add('errorBlocked', 'You are blocked. please contact to admin.');
            return redirect(route('activation.code.form'))
                ->withErrors($validator);
        }

    }
    public function logout(){
        Auth::logout();
        return redirect(url(''));
    }

}

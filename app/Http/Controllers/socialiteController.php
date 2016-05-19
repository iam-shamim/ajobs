<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Laravel\Socialite\Facades\Socialite;
use App\model\Profile;
use Symfony\Component\HttpKernel\Client;
use Validator;
use Session;
use App\User;
use DB;
use Auth;


class socialiteController extends Controller{
    public function index($service){
        return Socialite::driver($service)->redirect();

    }
    public function findOrCreateByEmail($email){
        $emailQuery=Profile::where('email',$email)->first();
        if($emailQuery!==null){
            return $userID=$emailQuery->userID;
        }else {
            $userInsert=new User();
            $userInsert->userStatus='Active';
            $userInsert->save();
            $userID=$userInsert->id;
            $profileInsert=new Profile();
            $profileInsert->userID=$userID;
            $profileInsert->email=$email;
            $profileInsert->save();
            return $userID;

        }
    }

    public function callback($service){

        $user = Socialite::driver($service)->user();
        $email=$user->email;
        $validator=Validator::make([],[]);
        if($email!=null){
            $userID=$this->findOrCreateByEmail($email);
            Auth::loginUsingId($userID);
            $userType=Auth::user()->userType;
            $userStatus=Auth::user()->userStatus;
            $id=Auth::user()->id;
            DB::table('reset_password')->where('userID',$id)->delete();
            
            if($userStatus=='Blocked'){
                Auth::logout();
                $validator->errors()->add('errorBlocked', 'You are blocked. please contact to admin.');
                return redirect(route('login.create'))->withErrors($validator);
            }else{
                if($userStatus=='InActive'){
                    $userData=User::find($id);
                    $userData->userStatus='Active';
                    $userData->save();
                    $deleteMailVerification=DB::table('mail_verification')->where('userID',$id)->delete();
                }
                $data=DB::table('profiles')->where('userID',Auth::user()->id)->first();
                $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
                session()->put(['profilesData'=>$data]);
                session()->put(['profilesID'=>$data->id]);
                return redirect()->intended(url('/profile'));
            }
        }else{
            $validator->errors()->add('errorEmailNotFound', 'Email not found.');
            return redirect(route('login.create'))->withErrors($validator);
        }
    }

}

<?php

namespace App\Http\Controllers;

use App\traits\activation;
use App\traits\activationMail;
use Illuminate\Http\Request;
use App\Http\Requests;
use Session;
use DB;

class resendActivationController extends Controller{
    use activation;
    use activationMail;
    public function resend(){
        $userSession=session('userName');
        $password=session('password');
        $userID=session('userID');
        if(!isset($userSession) OR !isset($password) OR !isset($userID)){
            return redirect(route('login.create')) ;
        }
        $getEmail=DB::table('profiles')->where('userID',$userID)->first();
        if(!isset($getEmail->email)){
            exit;
        }
        DB::table('mail_verification')->where('userID',$userID)->delete();
        $email=$getEmail->email;
        $activationCode=$this->activationCode();
        $activationLink=$this->activationLink();
        DB::table('mail_verification')->insert([
            'userID'=>$userID,
            'activeCode1'=>$activationCode->activeCode1,
            'activeCode2'=>$activationCode->activeCode2,
            'activeLink1'=>$activationLink->activeLink1,
            'activeLink2'=>$activationLink->activeLink2
        ]);
        $data=[];
        $data['mailTo']=$email;
        $data['activeLink']=url('/activation/link/'.$activationLink->activeLink1.$activationLink->activeLink2);
        $data['activeCode']=$activationCode->activeCode1.$activationCode->activeCode2;
        $this->mail($data,$email);
    }
}

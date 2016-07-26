<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Hash;
use DB;
use Mail;
use Validator;
use Session;
use Auth;

class SignUpController extends Controller
{
    private function mail($data,$mailTo){
        Mail::send('mailers',$data,function($message) use ($mailTo){
            $message->to($mailTo)->from('shamim@gmail.com')->subject('E-mail confirmation');
        });
    }
    public function index($type=null){
        return view('signup',['type'=>$type]);
    }
    public function adminCreate($type=null){
        return view('signupAdmin',['type'=>$type]);
    }
    public function rootCreate(){
        $count=DB::table('users')->where('userType','Root')->count();
        if($count){
            return view('404');
        }
        return view('signupRoot');
    }
    private function activationCode(){
        $activeCode1=rand(10000,99999);
        $activeCode2=rand(10000,99999);
        $count=DB::table('mail_verification')->where('activeCode1',$activeCode1)->where('activeCode2',$activeCode2)->count();
        if(!$count){
            return (object) ['activeCode1'=>$activeCode1,'activeCode2'=>$activeCode2];
        }else{
            return $this->activationCode();
        }
    }
    private function activationLink(){
        $str='0185972jlfzjo234567_89a___0wiotjklfjskjhbcdefghi_jk_l_mnopqrstuvwxyzABCD53475___afsafsvcsf___aetwwss___wtowp985098___EFGHIJKL5_23MNOP_QRSTUVWXYZ';
        $activeLink1=md5(str_shuffle($str));
        $activeLink2=md5(str_shuffle($str));
        $count=DB::table('mail_verification')->where('activeLink1',$activeLink1)->where('activeLink2',$activeLink2)->count();
        if(!$count){
            return (object) ['activeLink1'=>$activeLink1,'activeLink2'=>$activeLink2];
        }else{
            return $this->activationLink();
        }
    }
    public function store(Request $input,$type=null){
        $validator=Validator::make($input->all(),[
            'userName' =>   'required|min:5|unique:users|userName',
            'email' =>   'required|email|unique:profiles',
            'password' =>   'required|min:8|confirmed',
            'Agree' =>   'required',

        ]);
        if($validator->fails()){
            return redirect(route('signup.create'))
                ->withErrors($validator)->withInput();
        }
        if($type==='company'){
            $id=DB::table('users')->insertGetId([
                'userName'=>$input->userName,
                'userType'=>'Company',
                'password'=>Hash::make($input->password)
            ]);
        }else{
            $id=DB::table('users')->insertGetId([
                'userName'=>$input->userName,
                'password'=>Hash::make($input->password)
            ]);
        }

        if($id){
            $activationCode=$this->activationCode();
            $activationLink=$this->activationLink();
            DB::table('profiles')->insert([
                'userID'=>$id,
                'email'=>$input->email
            ]);
            DB::table('mail_verification')->insert([
                'userID'=>$id,
                'activeCode1'=>$activationCode->activeCode1,
                'activeCode2'=>$activationCode->activeCode2,
                'activeLink1'=>$activationLink->activeLink1,
                'activeLink2'=>$activationLink->activeLink2
            ]);
            $data=[];
            $data['mailTo']=$input->email;
            $data['activeLink']=url('/activation/link/'.$activationLink->activeLink1.$activationLink->activeLink2);
            $data['activeCode']=$activationCode->activeCode1.$activationCode->activeCode2;
            $this->mail($data,$input->email);
            $input->session()->put(['userName'=>$input->userName,'password'=>$input->password,'userID'=>$id,'resend'=>route('mail.resend')]);
            return redirect(route('activation.code.form'));

        }
    }
    public function adminStore(Request $input){
        $validator=Validator::make($input->all(),[
            'userName' =>   'required|min:5|unique:users|userName',
            'email' =>   'required|email|unique:profiles',
            'password' =>   'required|min:8|confirmed',

        ]);
        if($validator->fails()){
            return redirect()
                ->back()
                ->withErrors($validator)->withInput();
        }

        $id=DB::table('users')->insertGetId([
            'userName'=>$input->userName,
            'userType'=>'Admin',
            'userStatus'=>'Active',
            'password'=>Hash::make($input->password)
        ]);
        DB::table('profiles')->insert([
           'userID'=>$id,
            'email'=>$input->email
        ]);
        session()->flash('success','Admin successfully created');
        return redirect()->back();
    }
    public function rootStore(Request $input){
        $count=DB::table('users')->where('userType','Root')->count();
        if($count){
            return redirect()->back();
        }
        $validator=Validator::make($input->all(),[
            'userName' =>   'required|min:5|unique:users|userName',
            'email' =>   'required|email|unique:profiles',
            'password' =>   'required|min:8|confirmed',

        ]);
        if($validator->fails()){
            return redirect()
                ->back()
                ->withErrors($validator)->withInput();
        }

        $id=DB::table('users')->insertGetId([
            'userName'=>$input->userName,
            'userType'=>'Root',
            'userStatus'=>'Active',
            'password'=>Hash::make($input->password)
        ]);
        DB::table('profiles')->insertGetId([
            'userID'=>$id,
            'email'=>$input->email
        ]);
        if(Auth::loginUsingId($id)){
            return redirect()->intended(route('profile'));
        }
        return  redirect(route('profile'));
    }
}

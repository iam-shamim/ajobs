<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Validator;
use DB;
use Session;
use Hash;

class forgotController extends Controller
{
    public function index(){

        return view('forgotForm');
    }
    private function mail($data,$mailTo){
        \Mail::send('mailersReset',$data,function($message) use ($mailTo){
            $message->to($mailTo)->from('shamim@gmail.com')->subject('E-mail confirmation');
        });
    }
    private function resetLink(){
        $str='0185972jlfzjo234567_89a___0wiotjklfjskjhbcdefghi_jk_l_mnopqrstuvwxyzABCD53475___afsafsvcsf___aetwwss___wtowp985098___EFGHIJKL5_23MNOP_QRSTUVWXYZ';
        $resetLink1=md5(str_shuffle($str));
        $resetLink2=md5(str_shuffle($str));
        $count=\DB::table('reset_password')->where('resetLink1',$resetLink1)->where('resetLink2',$resetLink2)->count();
        if(!$count){
            return (object) ['resetLink1'=>$resetLink1,'resetLink2'=>$resetLink2];
        }else{
            return $this->resetLink();
        }
    }
    public function reset(Request $input){
        $validator=Validator::make($input->all(),[
            'email' =>   'required',
        ]);
        if($validator->fails()){
            return redirect(route('password.forgot.form'))
                ->withErrors($validator)->withInput();
        }
        $user=DB::table('profiles')->where('email',$input->email)->first();
        if(!$user){
            $validator->errors()->add('notMatched',' We can\'t find a user with that e-mail address.');
            return redirect(route('password.forgot.form'))
                ->withErrors($validator)->withInput();
        }
        $id=$user->userID;
        $resetLink1=$this->resetLink()->resetLink1;
        $resetLink2=$this->resetLink()->resetLink2;
        DB::table('reset_password')->where('userID',$id)->delete();
        DB::table('reset_password')->insert([
            'userID'=>$id,
            'resetLink1'=>$resetLink1,
            'resetLink2'=>$resetLink2
        ]);
        $data=[];
        $data['resetLink']=url('password/reset/'.$resetLink1.$resetLink2);
        $this->mail($data,$input->email);
        Session::flash('status',true);
        return redirect(route('password.forgot.form'));
    }
    public function resetConfirmation($resetLink){
        $validator=Validator::make([],[]);
        if(strlen($resetLink)<64){
            $validator->errors()->add('notMatched','Password reset link not matched.');
            return view('passwordResetForm')->withErrors($validator);
        }
        $resetLink1=substr($resetLink,0,32);
        $resetLink2=substr($resetLink,32,64);
        $user=DB::table('reset_password')->where('resetLink1',$resetLink1)->where('resetLink2',$resetLink2)->first();

        if(!$user){
            $validator->errors()->add('notMatched','Password reset link not matched.');
            return view('passwordResetForm')->withErrors($validator);
        }else{
            return view('passwordResetForm',['status'=>true,'resetLink'=>$resetLink]);
        }
    }
    public function resetAction(Request $input){

        $validator=Validator::make($input->all(),[
            'password'=>'required|min:8|passConfirmed:confirmPassword',
            'confirmPassword'=>'required|min:8',
            '_reset'=>'required',
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator);
        }
        $resetLink=$input->_reset;
        if(strlen($resetLink)<64){
            $validator->errors()->add('notMatched','Password reset link not matched.');
            return redirect()->back()->withErrors($validator);
        }
        $resetLink1=substr($resetLink,0,32);
        $resetLink2=substr($resetLink,32,64);
        $user=DB::table('reset_password')->where('resetLink1',$resetLink1)->where('resetLink2',$resetLink2)->first();

        if(!$user){
            $validator->errors()->add('notMatched','Password reset link not matched.');
            return redirect()->back()->withErrors($validator);
        }
        echo $input->password;
            //return view('passwordResetForm',['status'=>true,'resetLink'=>$resetLink]);
        DB::table('users')->where('id',$user->userID)->update(['password'=> Hash::make($input->password)]);
        DB::table('reset_password')->where('userID',$user->userID)->delete();
        $userInfo=DB::table('users')->where('id',$user->userID)->first();
        return view('passwordResetConfirmationTemp',['userName'=>$userInfo->userName]);
    }
}

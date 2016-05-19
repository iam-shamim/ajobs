<?php
namespace App\traits;
trait activation{
    private function activationCode(){
        $activeCode1=rand(10000,99999);
        $activeCode2=rand(10000,99999);
        $count=\DB::table('mail_verification')->where('activeCode1',$activeCode1)->where('activeCode2',$activeCode2)->count();
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
        $count=\DB::table('mail_verification')->where('activeLink1',$activeLink1)->where('activeLink2',$activeLink2)->count();
        if(!$count){
            return (object) ['activeLink1'=>$activeLink1,'activeLink2'=>$activeLink2];
        }else{
            return $this->activationLink();
        }
    }
}
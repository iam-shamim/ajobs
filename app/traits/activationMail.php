<?php
namespace App\traits;
trait activationMail{
    private function mail($data,$mailTo){
        \Mail::send('mailers',$data,function($message) use ($mailTo){
            $message->to($mailTo)->from('shamim@gmail.com')->subject('E-mail confirmation');
        });
    }
}
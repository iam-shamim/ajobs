<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Laravel\Socialite\Facades\Socialite;

class facebookController extends Controller{
    public function index(){
        return Socialite::driver('facebook')->redirect();
    }
    public function callback(){
        $user = Socialite::driver('facebook')->user();
        //dd($user);
        echo $id=$user->id;
        //$img = file_get_contents('https://graph.facebook.com/'.$id.'/picture?type=large');
        $url='img/people';
        $file = $url.'/'.md5($id.time().rand(12412,523636364)).'.jpg';
        //file_put_contents($file, $img);
        echo $user->name;
        echo $user->email;
    }
    public function github(){
        return Socialite::driver('github')->redirect();
    }

    public function githubCallback(){
        $user = Socialite::driver('github')->user();
        //dd($user);
        echo $id=$user->id;
        $img = file_get_contents($user->avatar);
        $url='img/people';
        $file = $url.'/'.md5($id.time().rand(12412,523636364)).'.jpg';
        file_put_contents($file, $img);
        echo $user->name;
        echo $user->email;
    }
    public function linkedin(){
        return Socialite::driver('linkedin')->redirect();
    }
    public function linkedinCallback(){
        $user = Socialite::driver('linkedin')->user();
        dd($user);
        echo $id=$user->id;
        //$img = file_get_contents('https://graph.facebook.com/'.$id.'/picture?type=large');
        $url='img/people';
        $file = $url.'/'.md5($id.time().rand(12412,523636364)).'.jpg';
        //file_put_contents($file, $img);
        echo $user->name;
        echo $user->email;
    }
    public function twitter(){
        return Socialite::driver('twitter')->redirect();
    }
    public function twitterCallback(){
        $user = Socialite::driver('twitter')->user();
        dd($user);
        echo $id=$user->id;
        //$img = file_get_contents('https://graph.facebook.com/'.$id.'/picture?type=large');
        $url='img/people';
        $file = $url.'/'.md5($id.time().rand(12412,523636364)).'.jpg';
        //file_put_contents($file, $img);
        echo $user->name;
        echo $user->email;
    }
    public function google(){
        return Socialite::driver('google')->redirect();
    }
    public function googleCallback(){
        $user = Socialite::driver('google')->user();
        dd($user);
        echo $id=$user->id;
        //$img = file_get_contents('https://graph.facebook.com/'.$id.'/picture?type=large');
        $url='img/people';
        $file = $url.'/'.md5($id.time().rand(12412,523636364)).'.jpg';
        //file_put_contents($file, $img);
        echo $user->name;
        echo $user->email;
    }
    public function bitbucket(){
        return Socialite::driver('bitbucket')->redirect();
    }
    public function bitbucketCallback(){
        $user = Socialite::driver('bitbucket')->user();
        dd($user);
        echo $id=$user->id;
        //$img = file_get_contents('https://graph.facebook.com/'.$id.'/picture?type=large');
        $url='img/people';
        $file = $url.'/'.md5($id.time().rand(12412,523636364)).'.jpg';
        //file_put_contents($file, $img);
        echo $user->name;
        echo $user->email;
    }


}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class notificationController extends Controller{
    public function index(){
        $currentUserData=session('profilesData');
        $notifications=DB::table('notifications')->where('profileID',$currentUserData->id)->orderBy('id','desc')->paginate(20);
        return view('myNotification',['data'=> $currentUserData,'notifications'=>$notifications]);
    }
}

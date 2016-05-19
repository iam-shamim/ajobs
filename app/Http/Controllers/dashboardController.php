<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class dashboardController extends Controller
{
    public function index(){
        $currentUserData=session('profilesData');
        return view('dashboard',['currentUserData'=>$currentUserData]);
    }
}

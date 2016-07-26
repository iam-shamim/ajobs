<?php

namespace App\Http\Middleware;

use Closure;
use DB;
use Auth;

class profileSet
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next){
        if(!session()->get('profilesData')){
            if(Auth::check()){
                $data=DB::table('profiles')->where('userID',Auth::user()->id)->first();
                $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
                session()->put(['profilesData'=>$data]);
                session()->put(['profilesID'=>$data->id]);
            }
        }
        return $next($request);
    }
}

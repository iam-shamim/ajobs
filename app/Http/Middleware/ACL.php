<?php

namespace App\Http\Middleware;

use Closure;
use DB;
use Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Route;
class ACL
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null){
        $route = Route::getRoutes()->match($request);
        $routeName=$route->getPath();
        $method=$request->getMethod();
        $routeInfo=DB::table('routes')->where('routeName',$routeName)->where('method',$method)->lists('status');
        if(!empty($routeInfo)){
            if($routeInfo[0]!=='enable'){
                return response()->view('404', [], 404);
            }
        }

        $isAny=DB::table('permissions')
            ->leftJoin('routes','permissions.routesID','=','routes.id')
            ->leftJoin('user_type','permissions.userTypeID','=','user_type.id')
            ->where('routes.routeName',$routeName)
            ->where('routes.method',$method)
            ->where('user_type.userType','Any')
            ->count();

        if(!$isAny AND \Auth::check()){
            $userAny=DB::table('user_type')->where('userType',\Auth::user()->userType)->lists('status');
            if(!empty($userAny)){
                if($userAny[0]!=='enable'){
                    return response()->view('404', [], 404);
                }
            }
            $isPermissionsDataHas=DB::table('permissions')
                ->leftJoin('routes','permissions.routesID','=','routes.id')
                ->leftJoin('user_type','permissions.userTypeID','=','user_type.id')
                ->where('routes.routeName',$routeName)
                ->where('routes.method',$method)
                ->count();
            if($isPermissionsDataHas){
                $isPermissions=DB::table('permissions')
                    ->leftJoin('routes','permissions.routesID','=','routes.id')
                    ->leftJoin('user_type','permissions.userTypeID','=','user_type.id')
                    ->where('routes.routeName',$routeName)
                    ->where('routes.method',$method)
                    ->where('user_type.userType',\Auth::user()->userType)
                    ->count();
                if(!$isPermissions){
                    return response()->view('404', [], 404);
                }
            }
        }
        return $next($request);
    }
}

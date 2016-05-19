<?php

namespace App\Http\Middleware;

use Closure;

class notAuth{
    protected $route;
    function __construct(\Route $route){
        $this->route=$route;
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next){
        if(\Auth::check()){
            return response()->view('404', [], 404);
        }
        return $next($request);
    }
}

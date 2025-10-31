<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Session;

class CheckAuthentication
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $path = $request->path();
        if(($path == "adminLogin") &&  Session::get('admin-user')){     
            return redirect('/admin');
        }
        else if($path != "adminLogin" && !Session::get('admin-user')){
            return redirect('/adminLogin');
        }

        if($path == 'daily-report' && Session::get('user_type') != 'Admin')
        {
            return redirect('/');
        }
        
        return $next($request);
    }
}

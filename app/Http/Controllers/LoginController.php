<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\app_user;
use App\Models\user_profile;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Session;
use Illuminate\Support\Facades\Cookie;

class LoginController extends Controller
{
    public function index(Request $req){
        $email = User::select('email')->where('email',$req['email'])->get();
        if(!$email->isEmpty()){
         $user_type = User::where('email',$req['email'])->first();
          if (Hash::check($req->password, $user_type->password)) {              
            $name = $user_type['name'];
            $user = $user_type['email'];
            $req->session()->put('admin-user',$user);
            return redirect('/');
            // if($user_type['user_type'] == "Admin"){
            //     $req->session()->put('admin-user',$user);
            //     $req->session()->put('user_name',$name);
            //     return redirect('/admin');
            //     // if(Cookie::get('route-name')){
            //     //   return redirect(Cookie::get('route-name'));
            //     // }
            //     // else{
            //     //   return redirect()->back()->with('name',$name);
            //     // }               
                
            // }
            // else{
            //     $req->session()->put('user',$user);
            //     $req->session()->put('user_name',$name);
            //     if(Cookie::get('route-name')){
            //       return redirect(Cookie::get('route-name'));
            //     }
            //     else{
            //       return redirect()->back()->with('name',$name);
            //     }
            // }              
         }  
          else{
            $error = "password incorrect";
            return redirect('/adminLogin')->with('error',$error);
          }         
        }
        else{
            $error = "Mobile number does not exist";
            return redirect('/adminLogin')->with('error',$error);
            // return view('frontend.pages.login',compact('error'));
        }
    }
     public function login(Request $req){
      $number = "+91".$req['number'];
      $phone = app_user::select('phone')->where('phone',$number)->get();
      if(!$phone->isEmpty()){
       $user_type = app_user::where('phone',$number)->first();
        if (Hash::check($req->password, $user_type->password)) {              
          $user_profile = user_profile::where('uid',$user_type['uid'])->first();
          if($user_type['status'] == 1){
            // return "Status true".$user_type['status'];
            $user = $user_type['phone'];
            $req->session()->put('admin-user',$user);
            $req->session()->put('user_type',$user_type['user_type']);
            $req->session()->put('name',$user_profile['name']);
            // $name = $user_profile['name'];
            return redirect('/');    
          }
          else{
            $error = "YOUR PAYMENT IS DUE CONTACT TNB ACCOUNTS";
          return redirect('/adminLogin')->with('error',$error);
          }
              
       }  
        else{
          $error = "password incorrect";
          return redirect('/adminLogin')->with('error',$error);
        }         
      }
      else{
          $error = "Mobile number does not exist";
          return redirect('/adminLogin')->with('error',$error); 
      }
    }
    public function registration(Request $req){
      $req ->validate([
        'name' => 'required',
        'email' => 'required | email | unique:users',
        'password' => 'required'
      ]);
      
      $data['name'] = $req -> name;
      $data['email'] = $req -> email;
      $data['user_type'] = 'User';
      $data['password'] = Hash::make($req -> password);
      $user = User::create($data);
      if(!$user){
        $error = "User not created";
        return redirect('/register')->with('error',$error);
      }
      $success = "User created. Now login to your MFC account";
        return redirect('/login')->with('success',$success);
    }
     public function changePassword(Request $request){
      $request ->validate([
        'old_password' => 'required|min:4',
        'new_password' => 'required|min:4',
        'confirm_password' => 'required|min:4|same:new_password'
      ]);
      $session =  $request->session()->get('admin-user');
     $userData = app_user::where('phone',$session)->first();
      //  $username = user_profile::where('uid',$userData['uid'])->first();
      if (Hash::check($request->old_password, $userData->password)) { 
        if (Hash::check($request->new_password, $userData->password)){
          $error = "Please use different password from old password";
          return redirect('/reset')->with('error',$error);
        }
        else{
          $newPassword = Hash::make($request -> confirm_password);
          app_user::where('phone',$session)->update([
            "password"=>$newPassword
          ]);
          Session::flush();
          return redirect('/adminLogin')->with('success',"Please login with new password");
        }
      }
      else{
        $error = "Incorrect old password";
        return redirect('/reset')->with('error',$error);
      }
      return $request->all();
    }
    function logout(){
      Session::flush();
     return redirect('/adminLogin');
    }
}

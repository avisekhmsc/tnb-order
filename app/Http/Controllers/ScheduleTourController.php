<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\schedule_tour;
use App\Models\room_info;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use Session;
use Mail;
use App\Mail\scheduleTourMail;

class ScheduleTourController extends Controller
{
    public function index(){
        $schedule_tours = schedule_tour::get();
        // if(Session::get('admin-user') || Session::get('user')){
        //    return view('schedule-tour');
        // }
        // else{
            return view('schedule-tour',compact('schedule_tours'));
        // }
    }

    // public function chooseRoom(){
    //     return view('choose-room');
    // }

    // public function checkout(){
    //     return view('checkout');
    // }

    public function checkSchedule(Request $request){
     
        $this->validate($request,[
            'date'=>'required',
            'time_from'=>'required|date_format:H:i',
            'time_until'=>'required|date_format:H:i|after:time_from',
            'exampleRadios'=>'required',
            'name'=>'required',
            // 'email'=>'required|email',
            'email'=>'required|regex:/(.+)@(.+)\.(.+)/i',
            'phone'=>'required|numeric|digits:10',
            'space_type'=>'required',
            'space_type.*'=>'required',
            'message'=>'required'
        ]);
       $allData = $request;
        if(Session::get('admin-user')){
            $session_id = Session::get('admin-user');
          }
          elseif(Session::get('user')){
            $session_id = Session::get('user');
          }
          else{
            return redirect('/login');
        }
        $user = User::where('email',$session_id)->first('id');
        // return count($request->space_type);
        $schedule_tours = schedule_tour::where('space_type','virtual office')->orWhere('space_type','terrace')->where('meeting_date',$request->date)->get();
        if(count($schedule_tours) === 0){
         $rooms = room_info::get();
         return view('choose-room',compact('allData','rooms'));
        }
        else{
            foreach($schedule_tours as $schedule_tour){
            if($schedule_tour->time_from > $request->time_from){
                if($schedule_tour->time_until < $request->time_from){
                    // return "Success".$request->time_from."-".$request->time_until;
                    $rooms = room_info::where('room_type',$schedule_tour->space_type)->get();
                    return view('choose-room',compact('allData','rooms'));
                }
                else{
                    // return "Not available".$request->time_from."-".$request->time_until;
                    return redirect()->back()->with('error','Room Not available !!!');
                }
            }
            else{
                if($schedule_tour->time_until > $request->time_until || $schedule_tour->time_until > $request->time_from){
                    return redirect()->back()->with('error','Room Not available !!!');
                }
                else{
                    // return "Success".$request->time_from."-".$request->time_until;
                    $rooms = room_info::where('room_type',$schedule_tour->space_type)->get();
                    return view('choose-room',compact('allData','rooms'));
                }
            }
            }            
        }
        return view('choose-room',compact('allData'));
    }
    public function addSchedule(Request $request){

        // if(Session::get('admin-user')){
        //    $session_id = Session::get('admin-user');
        //  }
        //  elseif(Session::get('user')){
        //    $session_id = Session::get('user');
        //  }
        //  else{
        //      return redirect('/login');
        //  }
        $this->validate($request,[
            'date'=>'required',
            'time_from'=>'required|date_format:H:i',
            'time_until'=>'required|date_format:H:i|after:time_from',
            'exampleRadios'=>'required',
            'name'=>'required',
            'email'=>'required|regex:/(.+)@(.+)\.(.+)/i',
            'phone'=>'required|numeric|digits:10',
            'space_type'=>'required',
            'space_type.*'=>'required',
            'message'=>'required'
        ]);
        // $user = User::where('email',$session_id)->first('id');
        $schedule_tours = schedule_tour::where('meeting_date',$request->date)->get();
        $complete = false;
        $msg = "";
        if(count($schedule_tours) > 0){
            foreach($schedule_tours as $schedule_tour){
                if($schedule_tour->time_until > $request->time_from){
                    if($schedule_tour->time_from > $request->time_from){
                        $requestTimeToTimeFrom = (strtotime($schedule_tour->time_from) - strtotime($request->time_from))/3600;
                        $timeFromToTimeUntil = (strtotime($request->time_until) - strtotime($request->time_from))/3600;
                        if($requestTimeToTimeFrom >= $timeFromToTimeUntil){
                            $complete = true;
                        }
                    }
                    else{
                        $complete = false;
                        $msg = 'Please select another time';
                    }
                }
                else{
                    $complete = true;
                }
            }
        }
        else{
            $complete = true;
        }
      $all = $request->all();
      if($complete){
        schedule_tour::create([
            "name"=>$all['name'],
            "email"=>$all['email'],
            "phone"=>$all['phone'],
            "space_type"=>json_encode($all['space_type']),
            "looking_for"=>$all['exampleRadios'],
            "meeting_date" => $all['date'],
            "time_from" => $all['time_from'],
            "time_until" => $all['time_until'],
            "message" => $all['message']
        ]);
        // $email = $all['email'];
        // Mail::to($email)->send(new ScheduleTourMail ($all));
        // Mail::send('emails.schedule-a-tour', array(
        //     'name' => $all['name'],
        //     'email' => $all['email'],
        //     'phone' => $all['phone'],
        //     "space_type"=>json_encode($all['space_type']),
        //     "looking_for"=>$all['exampleRadios'],
        //     "meeting_date" => $all['date'],
        //     "time_from" => $all['time_from'],
        //     "time_until" => $all['time_until'],
        //     'message' => $all['message'],
        // ), function($message) use ($request){
        //     $message->from('subhankar@confitechsol.com','MFC');
        //     $message->to($request->email, 'User')->subject('Your Tour Details');
        //     $message->cc('geetimoy@confitechsol.com');
        // });
        return redirect('/thank-you');
      }
      else{
        // return redirect()->back()->with('msg',$msg)->withInput();
        return back()
        ->withInput()
        ->withErrors(['Please Select another time']);
    }
        
    }

    public function scheduleList(){
        $scheduleList = schedule_tour::get();
        return view('backend.schedule.schedule-list-show',compact('scheduleList'));
      }
    public function scheduleTourSubmit(Request $request){

    }

    public function thankYou(){
        return view('thank-you');
    }
}

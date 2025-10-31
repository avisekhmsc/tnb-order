<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\booking_details;
use App\Models\virtual_booking;
use App\Models\room_info;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Session;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Cookie;

class BookOnlineController extends Controller
{
    public function index(){
    // Cookie::queue('route-name',Route::currentRouteName(), 120);
        // if(Session::get('admin-user') || Session::get('user')){
        //    return view('book-online');
        // }
        // else{
        //     return view('login');
            
        // }
       $booking_details = virtual_booking::get();
        return view('book-online',compact('booking_details'));
    }

    public function chooseRoom(){
        return view('choose-room');
    }

    public function checkout(){
        return view('checkout');
    }

    public function check(Request $request){
        $this->validate($request,[
            'month'=>'required',
            'name'=>'required',
            // 'email'=>'required|regex:/(.+)@(.+)\.(.+)/i',
            'email'=>'required|regex:/(.+)@(.+)\.(.+)/i',
            'phone'=>'required|numeric|digits:10',
            'date'=>'required',
            'message'=>'required',
        ]);
          $allData = $request;
          $startingdate = $request->date;
         $date = strtotime("+$request->month day", strtotime($startingdate));
         $endDate = date("Y-m-d", $date);
         $booking_details = DB::table('virtual_bookings')->where('end_date', '<', $request->date)->get();
         if(count($booking_details) == 0){
                 return redirect()->back()->with('error','This date is already taken. Please select another date')->withInput();
            }
            virtual_booking::create([
                "starting_date" => $startingdate,
                'end_date' => $endDate,
                'name' => $request->name,
                'email'=>$request->email,
                'phone'=>$request->phone,
                'message'=>$request->message,
            ]);
            
            $success = "Thank you for Booking. We will get back to you soon.";
            return redirect('/book-online')->with('success',$success);
        // if(Session::get('admin-user')){
        //     $session_id = Session::get('admin-user');
        //   }
        //   elseif(Session::get('user')){
        //     $session_id = Session::get('user');
        //   }
        //   else{
        //     return redirect('/login');
        // }
        // $user = User::where('email',$session_id)->first('id');
        // $room_info = room_info::get();
        
        // $rooms=array();
        // foreach($room_info as $item){
        //     $check_room_id = DB::table('booking_details')->where('room_id',$item->room_id)->first();
        //     if($check_room_id){
        //         $booking_details = DB::table('booking_details')->where('room_id',$item->room_id)->where('end_date', '<', $request->date)->get();
        //         if(count($booking_details) > 0){
        //             array_push($rooms,$item);
        //            }
        //     }
        //    else{
        //     array_push($rooms,$item);
        //    }
           
        // }
        // return $rooms;
       
        // booking_details::create([
        //     "starting_date" => $startingdate,
        //     'end_date' => $endDate,
        //     'name' => $request->name,
        //     'email'=>$request->email,
        //     'phone'=>$request->phone,
        //     'message'=>$request->message,
        //     'room_id'=>1
        // ]);
        // $schedule_tours = schedule_tour::where('room_id',$request->meeting_room)->where('meeting_date',$request->date)->get();
        // if(count($schedule_tours) === 0){
        //  $rooms = room_info::get();
        //  return view('choose-room',compact('allData','rooms'));
        // }
        // else{
        //     foreach($schedule_tours as $schedule_tour){
        //     if($schedule_tour->time_from > $request->time_from){
        //         if($schedule_tour->time_until < $request->time_from){
        //             // return "Success".$request->time_from."-".$request->time_until;
        //             $rooms = room_info::where('room_id',$schedule_tour->room_id)->get();
        //             return view('choose-room',compact('allData','rooms'));
        //         }
        //         else{
        //             // return "Not available".$request->time_from."-".$request->time_until;
        //             return redirect()->back()->with('error','Room Not available !!!');
        //         }
        //     }
        //     else{
        //         if($schedule_tour->time_until > $request->time_until || $schedule_tour->time_until > $request->time_from){
        //             return redirect()->back()->with('error','Room Not available !!!');
        //         }
        //         else{
        //             // return "Success".$request->time_from."-".$request->time_until;
        //             $rooms = room_info::where('room_id',$schedule_tour->room_id)->get();
        //             return view('choose-room',compact('allData','rooms'));
        //         }
        //     }
        //     }            
        // }
        // return view('choose-room',compact('allData','rooms','startingdate','endDate'));
        // $booking_details = virtual_booking::get();
        // return view('virtual_booking_checkout',compact('allData','startingdate','endDate','booking_details'));
    }
    public function add(Request $request){
        virtual_booking::create([
            "starting_date" => $request->starting_date,
            'end_date' => $request->end_date,
            'name' => $request->name,
            'email'=>$request->email,
            'phone'=>$request->phone,
            'message'=>$request->message,
        ]);
        return redirect('/thank-you');
    }
    public function addSchedule(Request $request){
        // schedule_tour::create
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
        $all = $request->all();
        $room_info = room_info::where('room_id',$all['room_id'])->first();
        // print_r($all);
        // print_r($user_id->id);
        // print_r($room_info['room_type']);
        schedule_tour::create([
            "user_id"=>$user['id'],
            "meeting_type" => $room_info['room_type'],
            "meeting_date" => $all['date'],
            "time_from" => $all['time_from'],
            "time_until" => $all['time_until'],
            "no_of_people" => $all['noOfPeople'],
            "room_id" => $room_info['room_id'],
        ]);
        
        return redirect('/booking-done');
    }
    public function scheduleTourSubmit(Request $request){

    }

    public function getBookingDetails(){
        $bookingList = virtual_booking::get();
        return view('backend.Online-Bookings.booking-list',compact('bookingList'));
      }
}

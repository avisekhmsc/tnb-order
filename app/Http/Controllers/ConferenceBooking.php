<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\conference_booking;
use Illuminate\Http\Request;

class ConferenceBooking extends Controller
{
    public function index(){
            $conference_bookings = conference_booking::get();
            // return $conference_bookings;
            return view('reserve-conferenceRoom',compact('conference_bookings'));

    }
    public function book(Request $request){
        $this->validate($request,[
            'date'=>'required',
            'time_from'=>'required',
            'time_until'=>'required',
            'name'=>'required',
            'email'=>'required|regex:/(.+)@(.+)\.(.+)/i',
            'phone'=>'required|numeric|digits:10',
            'message'=>'required',
            'add_ons'=>'required|array'
        ]);
        if(date("Y-m-d") > $request->date){
            return redirect()->back()->with('error','You can only choose the date from today')->withInput();
        }
        $conferenceDetails = conference_booking::where('date',$request->date)->get();
        $complete = false;
        $msg = "";
        if(count($conferenceDetails) > 0){
            foreach($conferenceDetails as $conferenceDate){
                if($conferenceDate->time_until > $request->time_from){
                    if($conferenceDate->time_from > $request->time_from){
                        $requestTimeToTimeFrom = (strtotime($conferenceDate->time_from) - strtotime($request->time_from))/3600;
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
            
            // $conferenceTime = conference_booking::where('date',$request->date)->where('time_until','>',$request->time_from)->get();
            // if(count($conferenceTime) > 0){
            //     return redirect()->back()->with('error','Please select another time')->withInput();
            // }
        }   
        else{
            $complete = true;
        }  
        if($complete){
            conference_booking::create([
                "date"=>$request->date,
                "time_from"=>$request->time_from,
                "time_until"=>$request->time_until,
                "name"=>$request->name,
                "email"=>$request->email,
                "phone"=>$request->phone,
                "message"=>$request->message,
                "add_ons"=>json_encode($request->add_ons)
            ]);
            return redirect('/thank-you');
        }
        else{
            return redirect()->back()->with('error',$msg)->withInput();
        }
        
        // return $request->all();
       
        // return redirect()->back()->with('success', 'Data Updated Successfully !!!');
    }
}

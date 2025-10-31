<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\terraceInquiry;
use Session;
class InquiryTerraceController extends Controller
{
  
  public function storeInquiryTerrace(Request $request){
    $input = $request->all();

    terraceInquiry::create([
        'name' => $request -> name,
        'email' => $request -> email,
        'phone' => $request -> phone,
        'event_type' => $request -> event_type,
        'dateTime'=> $request -> dateTime
       
      ]);
      
        // Inquiry::create($input);
        $success = "Thanks for the Inquiry, we will contact you soon";
        return redirect('/inquireNow')->with('success',$success);
   
  }
  public function getInquiryList(){
    $inquiryList = Inquiry::get();
    return view('backend.Inquiry.inquiry-list',compact('inquiryList'));
  }
}
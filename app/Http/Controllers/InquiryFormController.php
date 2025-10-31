<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Inquiry;
use Session;
class InquiryFormController extends Controller
{
  
  public function storeInquiryForm(Request $request){
    $input = $request->all();

      Inquiry::create([
        'name' => $request -> name,
        'email' => $request -> email,
        'phone' => $request -> phone,
        'company_name' => $request -> company,
       'interested_in' => $request->json_encode('interested_in')
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
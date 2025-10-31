<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\ClientPolicy;
use App\Models\User;
use Session;
class FileUploadController extends Controller
{
  
  public function fUpload(Request $request){
    if(Session::get('user') || Session::get('admin-user')){
        $request->validate([
        'file' => 'required|mimes:pdf|max:2048'
        ]);
        
        if ($request->hasFile('file')) {
          $destinationPath ='/files';
          $filename = $request->file('file')->getClientOriginalName();
          $request->file('file')->move(public_path() . $destinationPath, $filename);
          $file_path = url('/public').$destinationPath."/".$filename;
          if(Session::get('user')){
            $email = session()->get('user');
          }
          if(Session::get('admin-user')){
            $email = session()->get('admin-user');
          }
          $user = User::select('id')->where('email',$email)->first();
          $clientPolicy = ClientPolicy::where('user_id',$user->id)->first();
          if($clientPolicy){
            return redirect()->back();
          }
          else{
          ClientPolicy::create([
            "user_id"=>$user['id'],
            "file" => $file_path,
            "status" => "Pending"
          ]);
          }
          
          return redirect()->back();
        }
    }
    else{
      return view('login');
    }
  }

  public function clientPolicy(){
    $clientPolicy = ClientPolicy::get();
    return view('backend.client-policy.index',compact('clientPolicy'));
  }

  public function directory(Request $request){
    if(Session::get('admin-user')){
      $email = session()->get('admin-user');
      $user = User::select('id')->where('email',$email)->first();
      $clientPolicy = ClientPolicy::where('user_id',$user->id)->first();
      return view('directory',compact('clientPolicy'));
    }
    elseif(Session::get('user')){
      $email = session()->get('user');
      $user = User::select('id')->where('email',$email)->first();
      $clientPolicy = ClientPolicy::where('user_id',$user->id)->first();
      return view('directory',compact('clientPolicy'));
    }
    else{
      return view('directory');
    }
  }
  public function editClientPolicy($id){
    $clientPolicy = ClientPolicy::where('id',$id)->first();
    return view('backend.client-policy.edit',compact('clientPolicy'));
  }
  public function updateClientPolicy(Request $request,$id){
    $clientPolicy = ClientPolicy::where('id',$id)->first();
    $status = $clientPolicy->status;
    if($request->status){
      $status = $request->status;
    }
    ClientPolicy::where('id',$id)->update([
      "status" => $status
    ]);
    return redirect()->back()->with('success', 'Data Updated Successfully !!!');
  }
}
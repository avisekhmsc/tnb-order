<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\category;
use App\Models\User;
use App\Models\food_item; 
use App\Models\new_order_detail; 
use App\Models\new_order_master;
use App\Models\slot;
use Illuminate\Support\Str; 
use Illuminate\Support\Facades\DB;
use App\Models\app_user;
use App\Models\user_profile;
use Mail;

class UserOrderController extends Controller
{
    function index(Request $request){
       $categories = category::get();
       $slots = slot::get();
       $session =  $request->session()->get('admin-user');
    //    $userData = User::where('email',$session)->first();
       $userData = app_user::where('phone',$session)->first();
       $data = [];
       if($userData['user_type'] == "User"){
        //dd($userData->id);
        // $check = new_order_master::selectRaw('COUNT(*) AS total')->where('user_id',$userData->id)->whereRaw("DATE_FORMAT(created_at, '%d-%m-%Y') = ?", [date('d-m-Y')])->groupBy('slot_id')->get();
        $data = new_order_master::where('user_id',$userData->id)->whereRaw("DATE_FORMAT(created_at, '%d-%m-%Y') = ?", [date('d-m-Y')])->get();
        // $data = new_order_master::whereRaw("DATE_FORMAT(created_at, '%d-%m-%Y') = ?", [date('d-m-Y')])->get();
        // $check = count($data->toArray());
        //$count = $check->count();
        //dd( $check );
        // if($check == 3){
        //  session()->flash('alert', "You Can't add more for today");
        // }
       }       
        return view('backend.user-orders.index',compact('data','categories','slots'));
    }
    function categoryName($id){
        $category = category::where('id',$id)->first();
        return response()->json($category);
     }
    function menu(Request $request,$id){
        // $menus = food_item::where('cat_id',$id)->get();
        $menus = DB::table('food_items')->join('categories','food_items.cat_id','=','categories.id')->select('food_items.*')
                ->where('cat_id',$id)->where('item_status', 1)->get();
        return response()->json($menus);
    }

   public function saveOrder(Request $request){
            $session =  $request->session()->get('admin-user');
       $userData = app_user::where('phone',$session)->first();
       $userProfile = user_profile::where('uid',$userData['uid'])->first();
       $first_date = date('Y-1-1');
        $today = date('Y-m-d');
        $date1 = strtotime($first_date);
        $date2 = strtotime($today);
        $diff = $date2 - $date1;
     $days = floor($diff / (60 * 60 * 24));
     $time = time();
    $order_id = $days.date('Y').date('m').date('d').date('h').date('i').date('s').gettimeofday()['usec'].$userProfile['CUSTCODE'];
        $list = $request->orders;
        // $order_id = Str::uuid()->toString();
        $totalAmount = 0;
        $total_qty = 0;
        $slot_id = $request['slot_id']; 
        try{
       
       $check = false;
       if($userData['user_type'] == "User"){
        $check = new_order_master::selectRaw('COUNT(*) AS total')->where('user_id',$userData->id)->whereRaw("DATE_FORMAT(created_at, '%d-%m-%Y') = ?", [date('d-m-Y')])->groupBy('slot_id')->get();
        $check = count($check->toArray());    
       }       
       if($check != 3 ){
        foreach($list as $item){
            foreach($item['data'] as $order){
                $totalAmount = $totalAmount + ($order['item_mrp'] * number_format($order['qty']));
                $total_qty = $total_qty + number_format($order['qty']);
            }
        }
        if($total_qty > 0){
            $master_order = new_order_master::create([
                "order_id" => $order_id,
                "total_qty" => $total_qty,
                "total_amount" => $totalAmount,
                "IMPORT"=>"0",
                "slot_id"=>$slot_id,
                "user_id" => $userData->id
            ]);
        }       
        foreach($list as $item){
            foreach($item['data'] as $order){
                if($order['qty'] > 0){
                    new_order_detail::create([
                        "new_order_id"=>$master_order->id,
                        "user_id"   => $userData->id,
                        "slot_id" => $slot_id,
                        "item_id"=>$order['id'],
                        "price"=>$order['item_mrp'],
                        "qty" => number_format($order['qty']),
                        "amount" => $order['item_mrp'] * number_format($order['qty'])
                    ]);
                }           
        }
    }
    $details = [
        'title' => 'Order Status',
        'body' => "THANK YOU FOR YOUR ORDER.",
    ];
    
    $to = $userProfile['email'];
    $subject = "New Order";
    $txt = "THANK YOU FOR YOUR ORDER";
    $headers = "From: info@tnborders.com" . "\r\n" .
    "CC: saumen08laha@gmail.com";
    
    mail($to,$subject,$txt,$headers);
    
//   if($userProfile['email']){
//         Mail::to($userProfile['email'])->send(new \App\Mail\orderMail($details));
//     }
    return response()->json("Successfully added");
       }
       else{
        return response()->json("You Can't add more for today");
       }
           
        } catch(Exception $e){
            return response()->json($e);
        }
        return response()->json($master_order);
    }
    function orderList(Request $request){

       $session =  $request->session()->get('admin-user');
      
       $userData = app_user::where('phone',$session)->first();
     $username = user_profile::where('uid',$userData['uid'])->first();
       if($userData['user_type'] == "User"){
        //$order_master = new_order_master::with('slots')->where('user_id',$userData['id'])->orderBy('created_at', 'DESC')->get();
        $order_master = DB::table('new_order_masters')        
        ->join('app_users','new_order_masters.user_id','=','app_users.id')
        ->join('user_profiles','app_users.uid','=','user_profiles.uid')
        ->join('slots', 'new_order_masters.slot_id', '=', 'slots.id')
        ->select('new_order_masters.*', 'slots.slot', 'user_profiles.CUSTCODE', 'user_profiles.name')
        ->where('new_order_masters.user_id', $userData['id'])
        ->orderBy('created_at', 'DESC')
        ->paginate(15);

       

        return view('backend.user-orders.order-list',compact('order_master','username'));        

       }
       else{
                
        $order_master = DB::table('new_order_masters')        
        ->join('app_users','new_order_masters.user_id','=','app_users.id')
        ->join('user_profiles','app_users.uid','=','user_profiles.uid')
        ->join('slots', 'new_order_masters.slot_id', '=', 'slots.id')
        ->select('new_order_masters.*', 'slots.slot', 'user_profiles.CUSTCODE', 'user_profiles.name')        
        ->orderBy('created_at', 'DESC')
        ->paginate(15);

        //dd($order_master);

        return view('backend.user-orders.order-list',compact('order_master','username'));

       }
    }
    function orderDetail(Request $request,$id){

        $session =  $request->session()->get('admin-user');
       $userData = app_user::where('phone',$session)->first();
       $username = user_profile::where('uid',$userData['uid'])->first(); 
       
       if($userData['user_type'] == "User"){

        $order_detail = DB::table('new_order_details') 
        ->join('app_users','new_order_details.user_id','=','app_users.id')
        ->join('user_profiles','app_users.uid','=','user_profiles.uid')       
        ->join('slots', 'new_order_details.slot_id', '=', 'slots.id')
        ->join('food_items', 'new_order_details.item_id', '=', 'food_items.id')
        ->select('new_order_details.*', 'slots.slot', 'food_items.item_name', 'user_profiles.CUSTCODE', 'user_profiles.name')
        ->where('new_order_details.user_id', $userData['id'])
        ->where('new_order_details.new_order_id',$id)
        ->orderBy('new_order_details.created_at', 'DESC')
        ->get();

        //$order_detail = new_order_detail::with('productName', 'slots')->where('new_order_id',$id)->get();

        //dd($order_detail);

       } else {
        
        $order_detail = DB::table('new_order_details')        
        ->join('app_users','new_order_details.user_id','=','app_users.id')
        ->join('user_profiles','app_users.uid','=','user_profiles.uid')
        ->join('slots', 'new_order_details.slot_id', '=', 'slots.id')
        ->join('food_items', 'new_order_details.item_id', '=', 'food_items.id')
        ->select('new_order_details.*', 'slots.slot', 'food_items.item_name', 'user_profiles.CUSTCODE', 'user_profiles.name')        
        ->where('new_order_details.new_order_id',$id)
        ->orderBy('new_order_details.created_at', 'DESC')
        ->get();

       //dd($order_detail);

       }
         //dd($order_detail);
        return view('backend.user-orders.order-detail',compact('order_detail', 'username'));
    }

    public function adminDailyReport()
    {
        $users = user_profile::select('name')
                ->selectRaw('app_users.id as user_id')
                ->join('app_users', 'user_profiles.uid','=','app_users.uid')
                ->where('app_users.user_type', '<>', 'Admin')
                ->where('app_users.status', 1)                
                ->get();
            //dd($users);
                return view('backend.user-orders.daily-report',compact('users'));
        
    }

    public function adminSearchDailyReport(Request $request)
    {
         ## Read value
      $draw = $request->get('draw');
      $start = $request->get("start");
      $rowperpage = $request->get("length"); // Rows display per page

      $columnIndex_arr = $request->get('order');
      $columnName_arr = $request->get('columns');
      $order_arr = $request->get('order');
      $search_arr = $request->get('search');

      $columnIndex = $columnIndex_arr[0]['column']; // Column index
      $columnName = $columnName_arr[$columnIndex]['data']; // Column name
      $columnSortOrder = $order_arr[0]['dir']; // asc or desc
      $searchValue = $search_arr['value']; // Search value

      // Custom search filter 
      $frm_date = $request->get('frm_date');
      $to_date = $request->get('to_date');
      $searchName = $request->get('user_id');

      $records = new_order_detail::select(                                       
                                        'new_order_masters.order_id as order_id',
                                        'slots.slot',
                                        'new_order_masters.created_at as order_created_at',
                                        'user_profiles.uid as uid',
                                        'user_profiles.custcode as custcode',
                                        'user_profiles.name as customer_name',
                                        'food_items.item_name as item_name',
                                        'app_users.id as app_user_id',
                                        'new_order_details.qty as qty',
                                        'new_order_details.price as price',
                                        'new_order_details.amount as amount'
                                        )
                                    ->join('food_items', 'new_order_details.item_id', '=', 'food_items.id')
                                    ->join('new_order_masters', 'new_order_details.new_order_id', '=', 'new_order_masters.id')
                                    ->join('slots', 'new_order_masters.slot_id', '=', 'slots.id')
                                    ->join('app_users', 'new_order_masters.user_id', '=', 'app_users.id')
                                    ->join('user_profiles', 'app_users.uid', '=', 'user_profiles.uid');
                
                if(!empty($frm_date) && !empty($to_date))
                {
                    $records->whereBetween('new_order_masters.created_at', [$frm_date, $to_date]);
                }

                if( !empty($searchName) )
                {
                    $records->where('app_users.id', $searchName);
                }

               $records->orderBy($columnName,$columnSortOrder);
        
        $totalRecords = $records->count();

        $orders = $records->skip($start)
                   ->take($rowperpage)
                   ->get();

        $data = [];

        foreach( $orders as $order)
        {
            $data[] = array(
                'customer_name'     => $order->customer_name,                    
                'slot_id'           => $order->slot,              
                'item_name'         => $order->item_name,
                'qty'               => $order->qty,
                'price'             => $order->price,
                'amount'            => $order->amount,
                'order_created_at'  => date('d-m-Y h:m:s', strtotime($order->order_created_at)), 
            );
        }

        $response = array(
            "draw" => intval($draw),
            "iTotalRecords" => $totalRecords,
            "iTotalDisplayRecords" => $totalRecords,            
            "aaData" => $data
         );

         return response()->json($response);       
        
    }


}

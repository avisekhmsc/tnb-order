<?php



use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ScheduleTourController;

use App\Http\Controllers\LoginController;

use App\Http\Controllers\FileUploadController;

use App\Http\Controllers\InquiryFormController;

use App\Http\Controllers\BookOnlineController;
use App\Http\Controllers\ConferenceBooking;
use App\Http\Controllers\InquireTerraceController;
use App\Http\Controllers\UserOrderController;
use App\Models\new_order_detail; 
use App\Models\new_order_master;


/*

|--------------------------------------------------------------------------

| Web Routes

|--------------------------------------------------------------------------

|

| Here is where you can register web routes for your application. These

| routes are loaded by the RouteServiceProvider within a group which

| contains the "web" middleware group. Now create something great!

|

*/



Route::get('/adminLogin', function () {

    return view('auth.login');

})->name('adminLogin');

Route::prefix('admin')->group(function () {    
    Route::get('/logout', function(){
        Session::flush();
        Auth::logout();
        return Redirect::to("/adminLogin")->with('message', array('type' => 'success', 'text' => 'You have successfully logged out'));
    });
});

Route::group(['middleware'=>['protectedAdminPage']],function(){ 

    Route::get('/admin', function () {

        return view('backend.admin');

    })->name('admin');

    Route::get('user-orders',[UserOrderController::class,'index'])->name('user-orders');
    Route::get('menu/{id}',[UserOrderController::class,'menu'])->name('menu');
    Route::post('save-order',[UserOrderController::class,'saveOrder'])->name('saveOrder');
    Route::get('order-list',[UserOrderController::class,'orderList'])->name('orderList');
    Route::get('order-detail/{id}',[UserOrderController::class,'orderDetail'])->name('orderDetail');
    Route::get('category/{id}',[UserOrderController::class,'categoryName']);

    Route::get('daily-report', [UserOrderController::class,'adminDailyReport'])->name('daily-report');
    Route::get('search-daily-report', [UserOrderController::class,'adminSearchDailyReport'])->name('search-daily-report');

    Route::get('/schedule-list', [ScheduleTourController::class,'scheduleList'])->name('schedule-list');

    Route::get('/client-policy',[FileUploadController::class,'clientPolicy'])->name('client-policy');
    Route::get('/edit-client-policy/{id}',[FileUploadController::class,'editClientPolicy'])->name('edit-client-policy');
    Route::post('/update-client-policy/{id}',[FileUploadController::class,'updateClientPolicy'])->name('update-client-policy');

});



Route::get('/login', function () {

    return view('login');

})->name('login');

Route::get('/logout',[LoginController::class,"logout"])->name('logout');

Route::post('/loginSubmit',[LoginController::class,"login"])->name('loginSubmit');

Route::get('/register', function () {

    return view('register');

})->name('register');
Route::post('/registerSubmit',[LoginController::class,"registration"])->name('registerSubmit');

Route::get('/', function () {

    return redirect('/user-orders');

})->name('home');

Route::get('/team', function () {

    return view('team');

})->name('team');

// Route::get('/about', function () {

//     return view('about');

// })->name('about');

Route::get('/features', function () {

    return view('features');

})->name('features');

// Route::get('/privateOffice', function () {

//     return view('privateOffice');

// })->name('privateOffice');

Route::get('/private-office', function () {

    return view('private-office');

})->name('private-office');

Route::get('/virtual-office', function () {

    return view('virtual-office');

})->name('virtual-office');  

Route::get('/conference-room', function () {

    return view('conference-room');

})->name('conference-room');
Route::get('/reserve-conferenceRoom',[ConferenceBooking::class,'index'])->name('reserve-conferenceRoom');
Route::post('/book-conference',[ConferenceBooking::class,'book'])->name('book-conference');
Route::get('/terrace', function () {

    return view('terrace');

})->name('terrace');
Route::post('/terraceInquiry', [InquireTerraceController::class,'storeInquiryTerrace'])->name('terraceInquiry');

Route::get('/mfc-events', function () {

    return view('mfc-events');

})->name('mfc-events');

Route::get('/agreement-length', function () {

    return view('agreement-length');

})->name('agreement-length');

Route::get('/directory', [FileUploadController::class,'directory'])->name('directory');


Route::get('/schedule-tour', [ScheduleTourController::class,"index"])->name('schedule-tour');

Route::post('/schedule-tour', [ScheduleTourController::class,"checkSchedule"])->name('schedule-check');
Route::post('/schedule-add', [ScheduleTourController::class,"addSchedule"])->name('schedule-add');

Route::get('/choose-room', [ScheduleTourController::class,"chooseRoom"])->name('choose-room');
Route::get('/thank-you', [ScheduleTourController::class,"thankYou"])->name('thank-you');

Route::get('/inquireNow', function () {return view('contact');})->name('inquire-now');
Route::post('/inquireForm',[InquiryFormController::class,"storeInquiryForm"])->name('inquireForm');
Route::get('/inquiry-list',[InquiryFormController::class,"getInquiryList"])->name('inquiry-list');

Route::post('/fileUpload', [FileUploadController::class,"fUpload"])->name('fileUpload');
Route::get('/book-online', [BookOnlineController::class,"index"])->name('book-online');
Route::get('/book-check', [BookOnlineController::class,"check"])->name('book-check');
Route::post('/book-add', [BookOnlineController::class,"add"])->name('book-add');
Route::get('/booking-list',[BookOnlineController::class,'getBookingDetails'])->name('booking-list');


Route::get('clear/session/name', function()
{
    if (Session::has('name'))
    {
        Session::forget('name');
    }
});

Route::get('/reset',function(){
return view('backend.reset-password');
})->name('reset');
Route::post('/change-password',[LoginController::class,'changePassword'])->name('change-password');

Route::get('/get-data',function(){
    return new_order_detail::get();
//  new_order_detail::where('new_order_id',1)->delete();
 
});
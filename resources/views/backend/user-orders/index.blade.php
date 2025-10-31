@extends('layouts.admin')

@section('content')
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
    <div class="statbox widget box box-shadow">
        <div class="widget-content widget-content-area">
          {{-- @dd(session()->get('name')); --}}
          @if(Session::has('name'))
          <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                {{-- <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Modal title</h5> --}}
                  <button type="button" class="close text-right pt-3 pr-3" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>                             <div class="modal-body text-center">
                  <h6 style="color:#719B5f;">{{Session::get('name')}}.</h6>
                  <h6 style="color:#719B5f;">You have successfully logedin !</h6>
                </div>
                {{-- <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">Save changes</button>
                </div> --}}
              </div>
            </div>
          </div>
@endif
          @if(session('alert'))
    <div class="alert alert-danger">
        {{ session('alert') }}
    </div>
@endif
          <div class="row">
            <div class="col-md-6">
              <div class="d-flex justify-content-between mb-4">
                {{-- @dd($data) --}}
                <?php $count = 0; ?>
                @foreach($slots as $slot)
               <?php $status = "";  ?>
               @foreach($data as $item)
               <?php 
               if($item->slot_id == $slot->id){
                $status = "disabled";
                $count++;
               } 
               ?>
                @endforeach
                @php
                if(Session::has('user_type') && Session::get('user_type') == 'User'){
                $t=time()+3600;
                $hr = intVal(date("H",$t));
                $m = intVal(date("i",$t));
                if($hr >= 22 && $hr < 23){
                 if($m > 30){
                $status = "disabled";
                }
                }
                elseif($hr > 22){
                $status = "disabled";
                }
                }
                @endphp
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="slot_id" value="{{$slot->id}}" id="slot{{$slot->id}}" onclick="activeCategory()" {{$status}}  @if(session('alert')) disabled @endif>
                  <label class="form-check-label" for="slot{{$slot->id}}">
                    {{$slot->slot}}
                  </label>
                </div>
                @endforeach
              
             
            </div>
              <?php
              if(Session::has('user_type') && Session::get('user_type') == 'User'){
            $t=time();
$hr = intVal(date("H",$t));
$m = intVal(date("i",$t));
if($hr >= 22 && $hr < 23){
    if($m > 30){
  ?>
    <div class="alert alert-danger">
      Order taking has been closed for the day
  </div>
  <?php
    }
}
elseif($hr > 22){
    ?>
    <div class="alert alert-danger">
      Order taking has been closed for the day
  </div>
  <?php
}
}
?>
            @if($count > 2)
            <div class="alert alert-danger">
              You Can't add more for today
          </div>
          @endif
              <div class="form-group">
                <label for="exampleFormControlSelect1">Select category</label>
                <select class="form-control js-example-basic-multiple" id="exampleFormControlSelect1" onchange="fetchMenu(this)" disabled>
                    <option value="">Select category</option>
                    @foreach ($categories as $category)
                    <option value="{{$category->id}}">{{$category->category_name}}</option>
                    @endforeach                  
                </select>
              </div>
              {{-- <div class="form-group">
                <label for="menu">Product</label>
                <select class="form-control js-example-basic-multiple" id="menu" onchange="selectMenu(this)" disabled>
                  <option>Select an item</option>
                </select>
              </div> --}}
            </div>
          </div>
           <div class="data-list d-none">
             <div id="showList"></div>
               {{-- <div class="row align-items-center m-0">
                   <div class="col-4 col-md-2">
                       <img class="w-100" src="https://hisabsoftwares.com/tnb/public/item_primary_images/1671019213-blueberry-muffins-1-1.jpg">
                   </div>
                   <div class="col-8 col-md-10">
                       <div class="row">
                           <div class="col-md-3 text-right text-md-left">
                               name
                           </div>
                           <div class="col-md-3 text-right text-md-left">
                               quan
                           </div>
                           <div class="col-md-3 text-right text-md-left">
                               text box
                           </div>
                           <div class="col-md-3 text-right text-md-left">
                               total
                           </div>
                       </div>
                   </div>
               </div> --}}
               <!--<div class="col-md-8 mx-auto">-->
               <!-- <div class="d-flex justify-content-between">-->
               <!--   <label for=""><b>Total Amount</b></label>-->
               <!--   <span><b id="total-amount"></b></span>-->
               <!-- </div>-->
               <!--</div>-->
              
            {{-- <table class="table"> --}}
              {{-- <tr>
                  <th>Product</th>
                  <th>Price</th>
                  <th>Order Qty</th>
                  <th>Amount</th>
              </tr>
              <tr>
                  <td>
                      <input type="text" class="form-control" id="menu-name" readonly>
                      <input type="text" class="form-control" id="menu-id" hidden>
                    </td>
                  <td><input type="text" class="form-control" id="price" readonly></td>
                  <td><input type="number" class="form-control" id="order-qty"></td>
                  <td><button class="btn btn-success" onclick="addItem()">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg></button></td>
              </tr> --}}
              {{-- <tbody id="showList"></tbody> --}}
              {{-- <tfoot>
                <tr>
                  <td></td>
                  <td></td>
                  <td><b>Total Amount</b></td>
                  <td id="total-amount"></td>
                  <td></td>
                  
                </tr>
              </tfoot>
          </table> --}}
          {{-- <table class="table d-none" id="list-table">
            <thead>
            <tr>
                <th>Menu Name</th>
                <th>Price</th>
                <th>Order Qty</th>
                <th>Order Amount</th>
                <th>Action</th>
            </tr>
          </thead>
          <tbody id="showList"></tbody>
          <tfoot>
            <tr>
              <td></td>
              <td></td>
              <td><b>Total Amount</b></td>
              <td id="total-amount"></td>
              <td></td>
              
            </tr>
          </tfoot>
          </table> --}}
        
           </div>
            <div class="w-100"
            style="
    position: fixed;
    bottom: 0;
    background: #fff;
    width: 100%;
    left: 0;
    z-index: 99999999;
    padding: 18px 56px;
    border-top: 1px solid #85858533;
">
            <div class="d-flex justify-content-end">
              <label for="" class="mr-3 mb-0"><b>Total Amount</b></label>
              <span>Rs.<b id="total-amount"></b></span>
            </div>
           </div>
           <button class="ml-auto d-none btn btn-success px-5" id="saveBtn" onclick="saveOrder()">Save</button>
                </div>
    </div>
</div>
@endsection

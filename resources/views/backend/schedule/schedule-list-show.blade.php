@extends('layouts.admin')

@section('content')
<div class="layout-px-spacing">
    <div class="row layout-top-spacing" id="cancel-rowx">
        <div id="wizards_pills" class="col-lg-12">
            <div class="seperator-header">
               
                {{-- <a href="{{ route('admin.bom.add') }}">
                    <h4 class="btn-primary"><i data-feather="plus"></i> Add New BOM</h4>
                </a> --}}
            </div>
            @if (session()->get('error'))
                <div class="alert alert-warning">
                    {{ session()->get('error') }}
                </div>
            @endif
        </div>
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
             <div class="statbox widget box box-shadow">
                 <div class="widget-content widget-content-area">
                     {{-- <table id="datatable-tabletools" class="table table-hover non-hover individual-col-search" style="width:100%">
                         <thead>
                             <tr>
                                 
                                 <!-- <th>Meeting Type</th> -->
                                 <th>Meeting Date</th>     
                                 <th>Time From</th>
                                 <th>Time Until</th>
                                 <th>Looking For</th>
                                 <th>Name</th> 
                                 <th>Email</th> 
                                 <th>Phone</th>
                                 <th>Space Type</th> 
                                 <th>Message</th> 
                                 <th>Action</th> 

                             </tr>
                             <?php $count = 0; ?>
                            
                         </thead>
                         <tbody>
                         @foreach($scheduleList as $list)
                            <tr>
                                <td>{{$list->meeting_date}}</td>
                                <td>{{$list->time_from}}</td>
                                <td>{{$list->time_until}}</td>
                                <td>{{$list->looking_for}}</td>
                                <td>{{$list->name}}</td>
                                <td>{{$list->email}}</td>
                                <td>{{$list->phone}}</td>
                                <td>{{$list->space_type}}</td>
                                <td>{{$list->message}}</td>
                                <td> <div class="d-flex">
                                    <a href="#" class="edit-btn btn btn-warning mr-2">Schedule</a>
                                    <a href="#" class="btn btn-danger">Delete</a>
                            </div></td>
                            </tr>
                            @endforeach
                         </tbody>
                         
                     </table> --}}
                     <div id='calendar'></div>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <?php
                $arr = array(); 
date_default_timezone_set('Asia/Kolkata');
$date = date("Y-m-d");
$time = date('h:i:s');
                foreach($scheduleList as $conference_booking){
                //   $dateCreate=date_create($conference_booking->date);
                //  $dateSub = date_sub($dateCreate,date_interval_create_from_date_string("1 day"));
                   
                array_push($arr,array(
                'title'=>$conference_booking->name,
                'start'=>$conference_booking->meeting_date.'T'.$conference_booking->time_from,
                'end'=>$conference_booking->date.'T'.$conference_booking->time_until,
                'backgroundColor'=>'green',
                'borderColor'=>'green'
                ));
                }
                
                ?>    
 <script>
         document.addEventListener('DOMContentLoaded', function() {
            let bg = 'background';
  let arr = <?php echo json_encode($arr); ?>;
      var calendarEl = document.getElementById('calendar');
      var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'timeGridWeek',
        selectable: true,
        // editable: true,
        // allDay:false,
        events: arr,
       });
       calendar.render();
    });
 </script>
@endsection
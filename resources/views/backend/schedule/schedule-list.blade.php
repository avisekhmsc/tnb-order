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
                     <table id="datatable-tabletools" class="table table-hover non-hover individual-col-search" style="width:100%">
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
                         
                     </table>
                 </div>
             </div>
         </div>
     </div>
 </div>
@endsection
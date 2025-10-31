@extends('layouts.admin')

@section('content')
<div class="layout-px-spacing">
    <div class="row layout-top-spacing" id="cancel-rowx">
        <div id="wizards_pills" class="col-lg-12">
            <div class="seperator-header">
               

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
                                 <th>Id</th>     
                                 <th>Name</th> 
                                 <th>Email</th> 
                                 <th>Phone</th>
                                 <th>Start Date</th> 
                                 <th>End Date</th> 
                                 <th>Message</th> 

                             </tr>
                             <?php $count = 0; ?>
                            
                         </thead>
                         <tbody>
                         @foreach($bookingList as $list)
                            <tr>
                                <td>{{$list->id}}</td>
                                <td>{{$list->name}}</td>
                                <td>{{$list->email}}</td>
                                <td>{{$list->phone}}</td>
                                <td>{{$list->starting_date}}</td>
                                <td>{{$list->end_date}}</td>
                                <td>{{$list->message}}</td>
                                
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
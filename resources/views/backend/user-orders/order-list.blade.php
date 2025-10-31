@extends('layouts.admin')

@section('content')
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
    <div class="statbox widget box box-shadow">
        <div class="widget-content widget-content-area">
            <table class="table">
                <thead> 
                    @isset($username)                   
                        <th>User Code</th>
                        <th>User Name</th>
                    @endisset                    
                    <th>Order Id</th>
                    <th>Slot</th>
                    <th>Total Quantity</th>
                    <th>Total Amount (Rs.)</th>
                    <th>Created At</th>
                    <th>Action</th>
                </thead>
                <tbody>
                    @foreach($order_master as $item)
                    <tr>
                        @isset($item->name)                        
                            <td>{{ $item->CUSTCODE}}</td>
                            <td>{{$item->name}}</td> 
                        @endisset                      
                        <td>{{$item->order_id}}</td>
                        <td>{{ $item->slot }}</td>
                        <td>{{$item->total_qty}}</td>
                        <td>{{$item->total_amount}}</td>
                        {{-- <td>{{$item->created_at->format('d-m-Y h:m:s')}}</td> --}}
                        @php
                        $db = $item->created_at;
                        $timestamp = strtotime($db);
                        @endphp
                        <td>{{date("m-d-Y", $timestamp)}}</td>
                        <td><a href="{{route('orderDetail',$item->id)}}" class="btn btn-success">View</a></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
             {!! $order_master->withQueryString()->links('pagination::bootstrap-5') !!}

            
        </div>
    </div>
</div>    
@endsection
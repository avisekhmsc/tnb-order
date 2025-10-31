@extends('layouts.admin')

@section('content')
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
    <div class="statbox widget box box-shadow">
        <div class="widget-content widget-content-area">
            <table class="table">
                <thead>
                    <th>Id</th> 
                    @isset($username)                    
                        <th>User Code</th>
                        <th>User Name</th>
                    @endisset                   
                    <th>Slot</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Amount (Rs.)</th>
                    <th>Created At</th>
                </thead>
                <tbody>
                    @php $total = 0; @endphp
                    @php $total_qty = 0; @endphp
                    @foreach($order_detail as $item)
                   @php $total = $total + $item->amount; @endphp
                   @php $total_qty += $item->qty; @endphp
                    <tr>
                        <td>{{$item->id}}</td>
                        @isset($item->name)
                            <td>{{ $item->CUSTCODE}}</td>
                            <td>{{$item->name}}</td>
                        @endisset                     
                        <td>{{ $item->slot }}</td>
                        <td>{{$item->item_name}}</td>
                        <td>{{$item->price}}</td>
                        <td>{{$item->qty}}</td>
                        <td>{{$item->amount}}</td>
                        <td>{{date('d-m-Y', strtotime($item->created_at))}}</td>
                    </tr>
                    @endforeach
                    <tr>
                        <td colspan="9"><label style="font-size:16px;">Total Amount: </label><span style="font-weight: bold;font-size:16px;color:#719B5f;"> {{$total}}</span></td>
                    </tr>
                    <tr>
                        <td colspan="9"><label style="font-size:16px;">Total Qty: </label><span style="font-weight: bold;font-size:16px;color:#719B5f;"> {{$total_qty}}</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>    
@endsection
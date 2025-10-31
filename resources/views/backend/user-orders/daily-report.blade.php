@extends('layouts.admin')

@section('content')
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />

    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
        <div class="statbox widget box box-shadow">
            <div class="widget-content widget-content-area">
                <div class="row align-items-end">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Customers <span class="req">*</span></label>
                            <select class="form-control js-example-basic-multiple" id="customer_id">
                                <option value="">Select Customer</option>
                                @foreach ($users as $customer)
                                    <option value="{{ $customer->user_id }}">
                                        {{ $customer->name }}
                                    </option>
                                @endforeach
                            </select>                            
                        </div>
                        <span class="text-danger" id="err_customer"></span>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">
                        <div class="form-group cal_mb">
                            <label for="exampleFormControlSelect1">Date Range <span class="req">*</span></label>
                            <input type="text" class="form-control" id="daterange" name="daterange" value="11-10-2023 - 11-10-2023" />
                        </div>
                        <span class="text-danger" id="err_daterange"></span>
                        
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">
                        <div class="form-group pt-3 pt-sm-0">
                            <button class="btn btn-success px-md-5" id="saveBtn" onclick="getReport()">Get Report</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
        <div class="statbox widget box box-shadow">
            <div class="widget-content widget-content-area">
                <table class="table" id='daily_report'>
                    <thead>
                        <th>Customer Name</th>              
                        <th>Slot</th>               
                        <th>Item Name</th>                       
                        <th>Qty</th>
                        <th>Price</th>
                        <th>Amount</th>
                        <th>Created At</th>
                    </thead>
                    
                </table>
                </div>
                </div>
                </div>
@endsection

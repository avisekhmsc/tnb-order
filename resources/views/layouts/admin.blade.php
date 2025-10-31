<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>NEW PROJECT ADMIN PANEL</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('assests/frontend/images/fav.png') }}" />
    <link href="{{ asset('assests/css/loader.css') }}" rel="stylesheet" type="text/css" />
    <script src="{{ asset('assests/js/loader.js') }}"></script>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
    <link href="{{ asset('bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assests/css/plugins.css') }}" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM STYLES -->
    <link href="{{ asset('plugins/apex/apexcharts.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assests/css/dashboard/dash_2.css') }}" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS/CUSTOM STYLES -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link href="{{ asset('assests/css/custom.css') }}" rel="stylesheet" type="text/css" />

    {{-- @vite(['resources/sass/app.scss', 'resources/js/app.js']) --}}
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>
    <style>
     .dataTables_filter {
            display: none;
        }
        .select2-container--default .select2-selection--single {
            padding-top: 6px;
            padding-bottom: 6px;
        }

        .select2-container .select2-selection--single {
            height: auto;
        }

        .select2-container--default .select2-selection--single .select2-selection__arrow {
            top: 8px;
        }

        @media(max-width:767px) {
            .data-list .form-control {
                width: 36px;
                height: 36px;
                padding: 0;
                margin-left: auto;
                text-align: center
            }

            .widget {
                padding: 0;
            }
        }
    </style>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

    <!-- Datatable CSS -->
   <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css"/>   

   
</head>

<body class="alt-menu">
    <!-- BEGIN LOADER -->
    <div id="load_screen">
        <div class="loader">
            <div class="loader-content">
                <div class="spinner-grow align-self-center"></div>
            </div>
        </div>
    </div>
    <!--  END LOADER -->

    <!--  BEGIN NAVBAR  -->
    @include('elements.topheader')
    <!--  END NAVBAR  -->

    <!--  BEGIN MAIN CONTAINER  -->
    <div class="main-container sidebar-closed sbar-open" id="container">

        <div class="overlay"></div>
        <div class="cs-overlay"></div>
        <div class="search-overlay"></div>

        <!--  BEGIN SIDEBAR  -->
        @include('elements.sidebar')


        <!--  END SIDEBAR  -->

        <!--  BEGIN CONTENT AREA  -->
        <div id="content" class="main-content">
            @yield('content')
        </div>
        <!--  END CONTENT AREA  -->

    </div>
    <!-- END MAIN CONTAINER -->

    <div class="get_page">
        <div class="container">
            <button onclick="hideModal()" class="cross">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                    stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                    class="feather feather-x">
                    <line x1="18" y1="6" x2="6" y2="18"></line>
                    <line x1="6" y1="6" x2="18" y2="18"></line>
                </svg>
            </button>
            <iframe src="" frameborder="0" width="100%" height="100%" style="margin: 0 auto"></iframe>
        </div>
    </div>
    <div class="modal fade" id="confirmDelete" role="dialog" aria-labelledby="confirmDeleteLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">Delete Parmanently</h4>
                </div>
                <div class="modal-body">
                    <p>Are you sure about this ?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <a href="" class="btn btn-danger" id="confirm_del">Delete</a>
                </div>
            </div>
        </div>
    </div>

    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    
    <script src="{{ asset('assests/js/jquery.min.js') }}"></script>
    <script src="{{ asset('bootstrap/js/popper.min.js') }}"></script>
    <script src="{{ asset('bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('plugins/perfect-scrollbar/perfect-scrollbar.min.js') }}"></script>
    <script src="{{ asset('assets/js/app.js') }}"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
    <!-- Datatable JS -->
   <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script> 
   <script src="https://cdn.datatables.net/buttons/2.4.2/js/dataTables.buttons.min.js" type="text/javascript"></script> 
    {{-- <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>   --}}  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" type="text/javascript"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" type="text/javascript"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.html5.min.js" type="text/javascript"></script>
    <script src="https://cdn.datatables.net/rowreorder/1.4.1/js/dataTables.rowReorder.min.js" type="text/javascript"></script>
   

    <script>
       
       let start_date = moment().subtract(2, 'days');
        let end_date = moment();

       
        $(document).ready(function() {
            // App.init();           

            $('input[name="daterange"]').daterangepicker({
                startDate: start_date,
                endDate: end_date,
                minDate: start_date,
                maxDate: end_date,
                autoClose: true,
                locale: {
                    format: 'DD-MM-YYYY'
                }
            }, function(start, end, label) {
                start_date = start.format('YYYY-MM-DD');
                end_date = end.format('YYYY-MM-DD');
                //console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
            });
        });

        function getReport() {                                

            let validation = false;
            
            if( $('#customer_id option:selected').val() == "" )
            {
                $('#err_customer').text('You must have select a customer');               
                return false;
            } else {
                $('#err_customer').text('');                
            }

            if( $('#daterange').val() == "" )
            {
                $('#err_daterange').text('You must have enter date range');                
                return false;
            } else {
                $('#err_daterange').text('');                
            }

            let frm_date = to_date = user_id = "";

            if( typeof(start_date) === 'object')
            {
                frm_date = start_date.toISOString().split('T')[0];
            } else {
                frm_date = start_date;
            }

            if( typeof(end_date) === 'object')
            {
                to_date = end_date.toISOString().split('T')[0];
            } else {
                to_date = end_date;
            }            
           
            user_id = $('#customer_id option:selected').val();

            $("#daily_report").dataTable().fnDestroy();

            //$('#daily_report').dataTable().fnDraw();


            // DataTable
            var empTable = $('#daily_report').DataTable({
                processing: true,
                serverSide: true,
                ordering: true,
                serverSide: true,
                deferRender: true,
                ajax: {
                    url:"{{route('search-daily-report')}}",
                    data: function(data){
                        data.frm_date = frm_date;
                        data.to_date = to_date;
                        data.user_id = user_id;
                        data._token = '{{csrf_token()}}';                        
                    }                    
                },
                "drawCallback": function (settings) { 
                    // Here the response
                    var response = settings.json;
                    console.log(response);
                },                
                columns: [
                    { data: 'customer_name' },                                      
                    { data: 'slot_id' },          
                    { data: 'item_name' },
                    { data: 'qty' },
                    { data: 'price' },
                    { data: 'amount' },
                    { data: 'order_created_at' },         
                ],              
                dom: 'lBfrtip',
                 buttons: [
                    {
                        title: function () { return 'Tnborders Daily Report'; },
                        extend: 'pdfHtml5'
                    }           
                ]
            });

        }
    </script>

    <!-- END GLOBAL MANDATORY SCRIPTS -->

    <!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->
    <script src="{{ asset('plugins/apex/apexcharts.min.js') }}"></script>
    <script src="{{ asset('assests/js/dashboard/dash_2.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="{{ asset('assests/js/custom.js') }}"></script>
    <script>
        $('#exampleModal').modal('show');
        $('#exampleModal').on('hidden.bs.modal', function(e) {
            console.log('Hello');
            $.getJSON("http://localhost/new-laravel/clear/session/name",
                function(data) {
                    //doSomethingWith(data); 
                });
        })
    </script>
    <!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->

</body>

</html>










{{-- <!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">

        </main>
    </div>
</body>
</html>
 --}}

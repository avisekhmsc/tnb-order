<!doctype html>

<html lang="zxx">

<body>



    <!-- Mirrored from templates.envytheme.com/MFC/default/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Mar 2023 04:57:27 GMT -->

<head>

    <!-- Required meta tags -->

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">

    

    <link rel="stylesheet" href="{{asset('assets/css/all-fontawesome.min.css')}}">



    <link rel="stylesheet" href="{{asset('assets/css/flaticon.css')}}">

    

    <link rel="stylesheet" href="{{asset('assets/css/animate.min.css')}}">

    

    <link rel="stylesheet" href="{{asset('assets/css/magnific-popup.min.css')}}">

     

    <!-- Nice Select CSS -->

     {{-- <link rel="stylesheet" href="{{asset('assets/css/nice-select.min.css')}}"> --}}



    <link rel="stylesheet" href="{{asset('assets/css/owl.carousel.min.css')}}">

    

    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">

    {{-- <!-- Bootstrap CSS --> 

    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">

    <!-- Animate CSS --> 

    <link rel="stylesheet" href="{{asset('assets/css/animate.min.css')}}">

    <!-- Meanmenu CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/meanmenu.css')}}">

    <!-- Boxicons CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/boxicons.min.css')}}">

    <!-- Flaticon CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/flaticon.css')}}">

    <!-- Odometer CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/odometer.min.css')}}">

    <!-- Nice Select CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/nice-select.min.css')}}">

    <!-- Carousel CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/owl.carousel.min.css')}}">

    <!-- Carousel Default CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/owl.theme.default.min.css')}}">

    <!-- Magnific Popup CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/magnific-popup.min.css')}}">

    <!-- Style CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">

    <!-- Dark CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/dark.css')}}">

    <!-- Responsive CSS -->

    <link rel="stylesheet" href="{{asset('assets/css/responsive.css')}}"> --}}



    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/css/bootstrap-datepicker.min.css">



     <!-- jQuery UI datepicker -->

     <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

    

    <title>WELCOME TO RESET PASSWORD</title>



    <link rel="icon" type="image/png" href="assets/images/favicon.png">

</head>
<body class="form">
    
        <div class="login-area py-5">
            <div class="container">
            <div class="col-md-5 mx-auto">
            <div class="login-form">
            <div class="login-header mb-4">
                <div align="center"><img src="https://hisabsoftwares.com/tnb/public/admin_panel_logo/1575359863-logo.png" height="70" width="220">
                </div>
            <h3>Reset Password</h3>
            </div>
                        <form action="{{route('change-password')}}" method="post">
                            @csrf
                            @if(Session('error'))
                             <div class="alert alert-danger" role="alert">
                              {{Session('error')}}
                            </div>                          
                            @endif
                        
                        <div class="form-group">
                        <label>Old Password</label>
                        <input type="text" class="form-control @error('old_password') is-invalid @enderror" name="old_password" value="{{ old('old_password') }}" required autofocus>
                        @error('old_password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                        </div>
                        <div class="form-group">
                        <label>New Password</label>
                        <input id="password" type="password" class="form-control @error('new_password') is-invalid @enderror" name="new_password" required >
                        @error('new_password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                        </div>
                        <div class="form-group">
                            <label>Confirm Password</label>
                            <input id="password" type="password" class="form-control @error('confirm_password') is-invalid @enderror" name="confirm_password" required >
                            @error('confirm_password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            </div>
                        {{-- <div class="d-flex justify-content-between mb-4">
                        <div class="form-check">
                        <input class="form-check-input" type="checkbox" value id="remember">
                        <label class="form-check-label" for="remember">
                        Remember Me
                        </label>
                        </div>
                        <a href="forgot-password.html" class="forgot-pass">Forgot Password?</a>
                        </div> --}}
                        <div class="d-flex align-items-center mb-3">
                        <button type="submit" class="btn btn-primary theme-btn">Submit<i class="far fa-sign-in"></i></button>
                        </div>
                        </form>
                        <p class="terms-conditions text-center">© 2023 All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
       
 


    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="{{asset('public/assets/js/libs/jquery-3.1.1.min.js')}}"></script>
    <script src="{{asset('public/bootstrap/js/popper.min.js')}}"></script>
    <script src="{{asset('public/bootstrap/js/bootstrap.min.js')}}"></script>

    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <script src="{{asset('public/assets/js/authentication/form-1.js')}}"></script>

</body>
</html>






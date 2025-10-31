<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>WELCOME TO TNBOrders</title>
    <link rel="icon" type="image/png" href="{{ asset('assets/images/favicon.png') }}">

    <!-- CSS Files -->
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/all-fontawesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/flaticon.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/animate.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/magnific-popup.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
</head>
<body class="form">
    <div class="login-area py-5" style="background-image: url('{{ asset('assets/img/logo/tnb_login_background.png') }}'); background-size: cover;">
        <div class="container">
            <div class="col-md-5 mx-auto">
                <div class="login-form" style="background: #ed5d82;">
                    <div class="login-header">
                        <div align="center">
                            <img src="{{ asset('assets/img/logo/tnb_logo.svg') }}" width="320" alt="TNB Logo">
                        </div>
                        <h3 style="color:#fff">Log In</h3>
                    </div>

                    <form action="{{ route('loginSubmit') }}" method="post">
                        @csrf
                        @if (session('error'))
                            <div class="alert alert-danger" role="alert">{{ session('error') }}</div>
                        @endif
                        @if (session('success'))
                            <div class="alert alert-success" role="alert">{{ session('success') }}</div>
                        @endif

                        <div class="form-group">
                            <label style="color:#fff">Mobile Number</label>
                            <input id="number" type="text" class="form-control @error('number') is-invalid @enderror" 
                                   name="number" value="{{ old('number') }}" required autocomplete="phone" autofocus>
                            @error('number')
                                <span class="invalid-feedback"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label style="color:#fff">Password</label>
                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" 
                                   name="password" required>
                            @error('password')
                                <span class="invalid-feedback"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>

                        <div class="d-flex align-items-center">
                            <button type="submit" class="btn btn-primary theme-btn">
                                Login <i class="far fa-sign-in"></i>
                            </button>
                        </div>
                    </form>

                    <br/>
                    <p style="color:#fff" class="terms-conditions text-center">
                        © Taste N Bite 2023. All Rights Reserved.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript Files - CORRECT ORDER -->
    <script src="{{ asset('assets/js/libs/jquery-3.1.1.min.js') }}"></script>
    <script src="{{ asset('bootstrap/js/popper.min.js') }}"></script>
    <script src="{{ asset('bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/js/authentication/form-1.js') }}"></script>
</body>
</html>
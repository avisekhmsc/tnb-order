<header class="header">
    <div class="main-navigation">
    <nav class="navbar navbar-expand-lg">
    <div class="container custom-nav">
    <a class="navbar-brand" href="{{route('home')}}">
    <img src="assets/img/logo/logoSmlMFC.png" alt="logo">
    </a>
    <div class="mobile-menu-right">
    <a href="#" class="mobile-search-btn search-box-outer"><i class="far fa-search"></i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"><i class="far fa-stream"></i></span>
    </button>
    </div>
    <div class="collapse navbar-collapse" id="main_nav">
    <ul class="navbar-nav ms-auto">
    <li class="nav-item ">
    <a class="nav-link <?php if($page=='home'){echo 'active';}?>" href="{{route('home')}}" >Home</a>
    
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle <?php if($page=='team'){echo 'active';}?>" href="#" data-bs-toggle="dropdown">About Us</a>
            <ul class="dropdown-menu fade-up">
                <li><a class="dropdown-item " href="{{route('team')}}">Team</a></li>
                <li><a class="dropdown-item" href="{{route('features')}}">Office Features</a></li>
            </ul>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Our Spaces </a>
        <ul class="dropdown-menu fade-up">
            <li><a class="dropdown-item" href="{{route('private-office')}}">Private Offices</a></li>
            <li><a class="dropdown-item" href="{{route('virtual-office')}}">Virtual Office</a></li>
            <li><a class="dropdown-item" href="{{route('conference-room')}}">Conference Room</a></li>
            <li><a class="dropdown-item" href="{{route('terrace')}}">Terrace</a></li>
            
        </ul>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Meetings & Events</a>
            <ul class="dropdown-menu fade-up">
            <li><a class="dropdown-item" href="{{route('conference-room')}}">Conference Room</a></li>
            <li><a class="dropdown-item" href="{{route('terrace')}}">Terrace</a></li>
            <li><a class="dropdown-item" href="{{route('mfc-events')}}">MFC Events</a></li>
        </ul>
    </li>
    <li class="nav-item <?php if($page=='home'){echo 'active';}?>"><a class="nav-link" href="{{route('directory')}}">Directory</a></li>
    
    
    
    <!-- <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Blog</a>
    <ul class="dropdown-menu fade-up">
    <li><a class="dropdown-item" href="blog.html">Blog</a></li>
    <li><a class="dropdown-item" href="blog-single.html">Blog Single</a></li>
    </ul>
    </li> -->
    <li class="nav-item"><a class="nav-link" href="{{route('inquire-now')}}">Inquire Now</a></li>
    </ul>
    <div class="header-nav-right">
    <!-- <div class="header-nav-search">
    <a href="#" class="search-box-outer"><i class="far fa-search"></i></a>
    </div> -->
    <div class="header-btn">
    <a href="{{route('schedule-tour')}}" class="theme-btn">Schedule a tour<i class="far fa-arrow-right"></i></a>
    </div>
	@if(Session::get('admin-user') || Session::get('user'))
	<div class="user">
		<ul class="navbar-nav">
			<li class="nav-item dropdown">
				<a class="nav-link " href="#" data-bs-toggle="dropdown"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></a>
				<ul class="dropdown-menu fade-up">
					<li>{{session()->get('user_name')}}</li>
					<li><a class="dropdown-item" href="{{route('logout')}}">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-out"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg> Logout</a></li>
				</ul>
			</li>
		</ul>
	{{-- <button>
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
	</button> --}}
	</div>
	@endif
    </div>
    </div>
    </div>
    </nav>
    </div>
    </header>
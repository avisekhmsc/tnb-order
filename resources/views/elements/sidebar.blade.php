<div class="sidebar-wrapper sidebar-theme">
<button class="cross" onclick="hideMenu()">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg></button>
    <nav id="sidebar">

        <ul class="navbar-nav theme-brand flex-row  text-center">
            {{-- <li class="nav-item theme-logo">
                <a href="{{ route('home') }}">
                    <img src="{{asset('assets/img/logo/logoMini.png')}}" class="navbar-logo" alt="logo">
                </a>
            </li> --}}
            <li class="nav-item theme-text">
                <a href="{{ route('home') }}" class="nav-link">Admin</a>
            </li>
        </ul>

        <ul class="list-unstyled menu-categories" id="accordionExample">
            <li class="menu">
                <a href="" aria-expanded="true" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                        <span>Dashboard</span>
                    </div>
                </a>
            </li>   
            <li class="menu">
                <a href="{{route('user-orders')}}" aria-expanded="true" class="dropdown-toggle">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                        <span>User Orders</span>
                    </div>
                </a>
            </li>  
            <li class="menu">
                <a href="{{route('orderList')}}" aria-expanded="true" class="dropdown-toggle">
                    <div class="">
<svg xmlns="http://www.w3.org/2000/svg" style="stroke:#719B5f;" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-list"><line x1="8" y1="6" x2="21" y2="6"></line><line x1="8" y1="12" x2="21" y2="12"></line><line x1="8" y1="18" x2="21" y2="18"></line><line x1="3" y1="6" x2="3.01" y2="6"></line><line x1="3" y1="12" x2="3.01" y2="12"></line><line x1="3" y1="18" x2="3.01" y2="18"></line></svg>
                        <span>Order List</span>
                    </div>
                </a>
            </li>    
            @if( Session::get('user_type') == 'Admin' )
                <li class="menu">
                    <a href="{{route('daily-report')}}" aria-expanded="true" class="dropdown-toggle">
                        <div class="">
                            
<svg xmlns="http://www.w3.org/2000/svg" style="stroke:#719B5f;"  width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart-2"><line x1="18" y1="20" x2="18" y2="10"></line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg>
                            <span>Daily Report</span>
                        </div>
                    </a>
                </li>
            @endif

        </ul>
    </nav>
</div>

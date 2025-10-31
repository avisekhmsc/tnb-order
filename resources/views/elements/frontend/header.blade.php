<div class="sc-header-content sc-header-content-two">

    <!-- <div class="container"> -->

        <div class="row align-items-center justify-content-between p-z-idex">

            <div class="col-lg-9 col-6">

                <div class="sc-menu-inner d-flex align-items-center">

                    <div class="sc-header-logo sc-pr-112">

                        <a href="{{ route('frontend-home') }}"><img src="{{asset('public/assets/frontend/images/logo-black.png')}}" alt="Logo" class="logo-h"/></a>

                    </div>

                    <div class="sc-main-menu d-lg-block d-none">

                        <!-- Mainmenu Section Start -->

                        <ul class="list-gap main-menu">

                            <li class="current-menu-item ">

                                <a class="active" href="{{ route('frontend-home') }}"> Home</a>


                            </li>

                            <li class="menu-item-has-children">

                                <a href="#">About Us</a>

                                <ul class="list-gap sub-menu-list">

                                    <li><a href="{{ route('about') }}">AchieveX Story</a></li>

                                    <li><a href="{{ route('career') }}">Careers</a></li>

                                    

                                </ul>

                            </li>

                            <li class="menu-item-has-children">

                                <a href="#">Services</a>

                                <ul class="list-gap sub-menu-list">

                                    <li class="menu-item-has-children child-menu-p"><a href="#">Consulting</a>

                                        <ul class="list-gap sub-menu-list child-menu d-none">

                                            <li class="menu-item-has-children"><a href="{{ route('itstrategy') }}">IT Strategy</a></li>

                                            <li class="menu-item-has-children"><a href="{{ route('govtservice') }}">Government Advisory</a></li>

                                        </ul>

                                    </li>

                                    

                                    <li class="child-menu-p2"><a href="#">IT Services</a>

                                        <ul class="list-gap sub-menu-list child-menu2 d-none">

                                            <li class="menu-item-has-children"><a href="{{ route('digitalengineer') }}">Digital Engineering</a></li>

                                            <li class="menu-item-has-children"><a href="{{ route('dataanalytics') }}">Data & Analytics</a></li>

                                            <li class="menu-item-has-children"><a href=" {{ route('businessanalytics') }} ">Business Analysis & Testing</a></li>

                                            <!-- <li class="menu-item-has-children"><a href="ipm-details.html">Intelligent Process Management</a></li> -->

                                        </ul>

                                    </li>

                                </ul>

                            </li>

                            <li>
                                <a href="{{ route('clients') }}">Clients</a>
                            </li>
                            <li>
                                <a href="{{ route('partner') }}">Partners</a>
                            </li>
                            <li class="menu-item-has-children">

                                <a href="#"> Insights</a>

                                <ul class="list-gap sub-menu-list">

                                    <li><a href="{{ route('case-studies') }}">Case Studies</a></li>

                                    <li><a href="{{route('white-papers')}}">White Papers</a></li>

                                    <li><a href="{{ route('blogs') }}">Blogs</a></li>

                                    <li><a href="{{ route('ebooks') }}">Ebooks</a></li>

                                    <li><a href="{{route('events')}}">Events</a></li>

                                </ul>

                            </li>

                            

                            

                            <li><a href="{{route('contact')}}">Contact</a></li>

                        </ul>

                        <!-- Mainmenu Section End -->

                    </div>

                </div>

            </div>

            <div class="col-lg-3 col-6">

                <div class="sc-menu-select-box d-flex align-items-center justify-content-end">

                    <div class="sc-search-box sc-mr-20">

                        <a data-bs-target="#search-modal" data-bs-toggle="modal" href="#">

                            <i class="icon-search"></i>

                        </a>

                    </div>

                    <div class="sc-hambagur-icon sc-mr-20">

                        <a id="canva_expander" href="#" class="nav-menu-link menu-button">

                            <span class="dot1"></span>

                            <span class="dot2"></span>

                            <span class="dot3"></span>

                        </a>

                    </div>

                    <div class="header-btn">

                        <a href="#"><i class="ri-search-line"></i></a>

                        <a class="sc-primary-btn" data-bs-toggle="modal" data-bs-target="#exampleModal">Get Consulting</a>

                    </div>

                </div>

            </div>

        </div>

    <!-- </div> -->

</div>
@extends('component.layout')
@section('content')
        <!-- Start Preloader Area -->
        <div class="preloader">
            <div class="loader">
                <div class="shadow"></div>
                <div class="box"></div>
            </div>
        </div>
        <!-- End Preloader Area -->
        
        <?php $page ='home';?>

        @include("component.menu")        
        
        <!-- Start Page Banner -->
        <div class="page-banner-area">
            <div class="container">
                <div class="page-banner-content">
                    <h2>Office Features</h2>
                    
                    <ul class="pages-list">
                        <li><a href="{{route('home')}}">Home</a></li>
                        <li>Office Features</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->
                <!-- Start Video Area -->
        <!-- <div class="video-area-without-color ptb-100">
            <div class="container">
                <div class="video-image-content">
                    <a href="https://www.youtube.com/watch?v=ODfy2YIKS1M" class="video-btn popup-youtube">
                        <i class='bx bx-play'></i>
                    </a>
                    
                    <div class="content-text">
                        <span>Coworking</span>
                        <h3>Check This Video Presentation To Know More About Our Coworking</h3>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- End Video Area -->
        <!-- Start Benefits Area -->
        <div class="benefits-area ptb-100">
            <div class="container">
                <div class="row">
                    <div class="benefits-content">
                        <span>Office Features</span>
                        <h3>Our Features in Our Coworking Creative Space</h3>
                    </div>
                </div>
                <div class="row flex-lg-row-reverse">
                    <div class="col-lg-5 mt-4">
                        <!-- <div class="benefits-image">
                            <img src="assets/images/features.jpg" alt="image">
                        </div> -->
                        <div class="benefits-image">
                            <img class="w-100" src="assets/images/terrace2.jpg" alt="image">
                        </div>
                    </div>
                    <div class="col-lg-7 px-4">
                        <div class="benefits-content">
                            <!-- <span>Office Features</span> -->
                            <!-- <h3>Benefits to Setting Up Your Sustainable Startup in Our Coworking Creative Space</h3> -->
                            <!-- <h3>Our Features in Our Coworking Creative Space</h3> -->
                            <!-- <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin lorem quis bibendum auctor nisi elit consequat ipsum nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit.</p> -->

                            <ul class="benefits-list row">
                                <li class="col-md-6">
                                    <i class='bx bx-cctv'></i>
                                    24-hour Front Desk & Surveillance 

                                </li>
                                <li class="col-md-6">
                                    <i class='bx bxs-business'></i>
                                    Business Lounge
                                </li>
                                <li class="col-md-6">
                                    <i class='bx bxs-parking'></i>
                                    Valet Parking
                                </li>
                                <li class="col-md-6"> 
                                    <i class='bx bx-swim'></i>
                                    Conference Room with ocean views
                                </li>
                                <li class="col-md-6">
                                <i class="fa fa-glass" aria-hidden="true"></i>
                                    5 Star Restaurant on-site

                                </li>
                                <li class="col-md-6">
                                    <i class='bx bx-coffee'></i>
                                    On-site Sandwich / Coffee Bar
                                </li>
                                <li class="col-md-6">
                                    <i class='bx bxs-city'></i>
                                    City/Town center
                                </li>
                                <li class="col-md-6">
                                    <i class='bx bx-check'></i>
                                    Private Terrace

                                </li>
                                <li class="col-md-6">
                                    <i class='bx bx-heart'></i>
                                    Blackjack Tables 
                                </li>
                                <li class="col-md-6">
                                    
                                    <i class='bx bx-restaurant'></i>
                                    Full Chefs Kitchen  
                                </li>
                                <li class="col-md-6">
                                    <i class="fa fa-check-square" aria-hidden="true"></i>
                                    24 -hour access to office 

                                </li>
                                <li class="col-md-6">
                                    <i class='bx bx-chair'></i>
                                    Fully Furnished offices 

                                </li>
                                <li class="col-md-6">
                                    <i class='bx bx-wifi'></i>
                                    High Speed internet 

                                </li>
                                <li class="col-md-6">
                                    
                                    <i class='bx bx-building-house'></i>
                                    2 floors of private offices 


                                </li>
                                
                               
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Benefits Area -->
 
        
        
        <!-- Start Work Area -->
        <!-- <div class="work-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="work-image two"></div>
                    </div>

                    <div class="col-lg-6">
                        <div class="work-content-item">
                            <div class="content-box">
                                <b>Give a Boost On Your Work</b>
                                <h3>Team or Individuals Sustainable Coworking in Your Town</h3>
                                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>

                                <div class="row justify-content-center">
                                    <div class="col-lg-4 col-md-4">
                                        <div class="work-fun-fact">
                                            <h4>
                                                <span class="odometer" data-count="3500">00</span>
                                                <span class="sign-icon">m2</span>
                                            </h4>
                                            <p>Coworking Space</p>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-4">
                                        <div class="work-fun-fact">
                                            <h4>
                                                <span class="odometer" data-count="1890">00</span>
                                                <span class="sign-icon">People</span>
                                            </h4>
                                            <p>Office Amount</p>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-4">
                                        <div class="work-fun-fact">
                                            <h4>
                                                <span class="odometer" data-count="426">00</span>
                                                <span class="sign-icon">+</span>
                                            </h4>
                                            <p>Available Space Now</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- End Work Area -->

        <!-- Start Video Area -->
        <!-- <div class="video-area-without-color ptb-100">
            <div class="container">
                <div class="video-image-content">
                    <a href="https://www.youtube.com/watch?v=ODfy2YIKS1M" class="video-btn popup-youtube">
                        <i class='bx bx-play'></i>
                    </a>
                    
                    <div class="content-text">
                        <span>Coworking</span>
                        <h3>Check This Video Presentation To Know More About Our Coworking</h3>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- End Video Area -->

       
        
        <!-- Start Review Area -->
        <!-- <div class="review-area ptb-100">
            <div class="container">
                <div class="review-slides owl-carousel owl-theme">
                    <div class="row align-items-center">
                        <div class="col-lg-7">
                            <div class="review-item">
                                <div class="review-text">
                                    <p>“Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis nisi elit consequat ipsum, nec sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.”</p>
                                </div>
    
                                <div class="review-info">
                                    <h3>Thomas Medison</h3>
                                    <span>UI/UX Designer</span>
                                </div>
                            </div>

                            <div class="review-saying">
                                <h4>See What Other People are Saying</h4>

                                <div class="rating">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <a href="#" class="rating-count">4.56 / 5.0</a>
                                </div>

                                <div class="saying-btn">
                                    <a href="about.html" class="default-btn">Read Reviews <i class='bx bxs-chevron-right'></i><span></span></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-5">
                            <div class="review-image">
                                <img src="assets/images/review/review-1.jpg" alt="image">

                                <div class="icon">
                                    <i class='bx bxs-quote-right'></i>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row align-items-center">
                        <div class="col-lg-7">
                            <div class="review-item">
                                <div class="review-text">
                                    <p>“Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis nisi elit consequat ipsum, nec sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.”</p>
                                </div>
    
                                <div class="review-info">
                                    <h3>Sarah Taylor</h3>
                                    <span>Web Developer</span>
                                </div>
                            </div>

                            <div class="review-saying">
                                <h4>See What Other People are Saying</h4>

                                <div class="rating">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <a href="#" class="rating-count">4.56 / 5.0</a>
                                </div>

                                <div class="saying-btn">
                                    <a href="about.html" class="default-btn">Read Reviews <i class='bx bxs-chevron-right'></i><span></span></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-5">
                            <div class="review-image">
                                <img src="assets/images/review/review-2.jpg" alt="image">

                                <div class="icon">
                                    <i class='bx bxs-quote-right'></i>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row align-items-center">
                        <div class="col-lg-7">
                            <div class="review-item">
                                <div class="review-text">
                                    <p>“Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis nisi elit consequat ipsum, nec sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.”</p>
                                </div>
    
                                <div class="review-info">
                                    <h3>Richard Turner</h3>
                                    <span>Web Designer</span>
                                </div>
                            </div>

                            <div class="review-saying">
                                <h4>See What Other People are Saying</h4>

                                <div class="rating">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <a href="#" class="rating-count">4.56 / 5.0</a>
                                </div>

                                <div class="saying-btn">
                                    <a href="about.html" class="default-btn">Read Reviews <i class='bx bxs-chevron-right'></i><span></span></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-5">
                            <div class="review-image">
                                <img src="assets/images/review/review-3.jpg" alt="image">

                                <div class="icon">
                                    <i class='bx bxs-quote-right'></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- End Review Area -->

@endsection
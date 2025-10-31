<!--=========== form section Start =========-->



<div class="sc-form-section-area sc-pt-100 sc-md-pt-80">



    <div class="container">



        <div class="row align-items-center">



            <div class="col-lg-6" data-sal="slide-right" data-sal-duration="800">



                <div class="sc-slider-form-box sc-form-inner">



                    <div class="sc-heading-area sc-mb-35">



                        <span class="sub-title white-color"><i class="icon-line"></i> Quick Consultation</span>



                        <h2 class="title white-color">



                            Delivering Solutions That <span class="primary-color">Result</span> in



                            Satisfaction



                        </h2>



                    </div>



                    <div class="sc-form-area">
                        @if ($errors->any())
                        <div class="alert alert-danger">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div><br />
                    @endif
                    @if(Session::has('success'))
                    <div class="alert alert-success">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                        <strong>{{Session::get('success')}}</strong>
                    </div>
                @endif
                        <form action="{{route('quick-consult-submit')}}" method="post">
                            @csrf
                        <div class="row">



                            <div class="col-md-6">



                                <div class="sc-slider-form sc-mb-20">



                                    <input



                                        type="text"



                                        name="fullName"



                                        id="name"



                                        placeholder="Full Name *"



                                        required=""



                                    />



                                </div>



                            </div>



                            <div class="col-md-6">



                                <div class="sc-slider-form sc-mb-20">



                                    <input



                                        type="text"



                                        name="email"



                                        id="newsletter"



                                        placeholder="Email *"



                                        required=""



                                    />



                                </div>



                            </div>



                            <div class="col-md-12">

                                <div class="select-services select-services-two sc-slider-form sc-mb-20">

                                    <select class="form-select" id="default-form" name="service">

                                        <option selected>Service *</option>

                                        <option value="1">IT Strategy</option>

                                        <option value="1">Government Advisory</option>

                                        <option value="2">Digital Engineering</option>

                                        <option value="3">Data & Analytics</option>

                                        <option value="3">Business Analysis & Testing</option>

                                    </select>

                                    <!-- <div class="select-items select-hide">

                                        <div>Business Planning</div>

                                        <div>Strategy Service</div>

                                        <div>Human Resource</div>

                                    </div> -->

                                </div>

                            </div>

                            <!-- <div class="col-md-6">

                                <div class="sc-slider-form sc-mb-20">

                                    <input

                                        type="text"

                                        name="service *"

                                        id="service"

                                        placeholder="Service *"

                                        required=""

                                    />

                                </div>

                            </div> -->



                            <div class="col-md-12">



                                <div class="sc-slider-form">



                                    <textarea



                                        rows="4"



                                        cols="50"



                                        name="need"



                                        placeholder="Comment here.."



                                    ></textarea>



                                </div>



                            </div>



                        </div>

                    

                    </div>



                    <div class="sc-form-btn">



                        <button type="submit" class="sc-white-btn br-0">Contact Us</a>



                    </div>
                </form>



                </div>



            </div>



            <div class="col-lg-6"></div>



        </div>



    </div>



    <div class="sc-form-image" data-sal="slide-left" data-sal-duration="800"></div>



</div>



<!--=========== form section End =========-->


<!--=========== form section End =========-->



<!--=========== blog section Start =========-->
<div class="sc-blog-section-area sc-pt-100 sc-pb-180 sc-md-pb-110 sc-md-pt-80">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2">
                <div class="sc-heading-area sc-mb-55 text-center">
                    <span class="sub-title"><i class="icon-line"></i> Our Insights</span>
                    <h2 class="title">
                        AchieveX <span class="primary-color">Thinking</span> 
                        <!-- Every Single Recent Story <span class="primary-color italic">From</span> our Journal -->
                    </h2>
                </div>
            </div>
        </div>
        <div class="swiper sc-blog-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="sc-blog-style2">
                        <div class="blog-img">
                            <a href="/case-studies-one"
                                ><img src="{{asset('public/assets/frontend/images/study/caseStudy/1.png')}}" alt="Blog"
                            /></a>
                        </div>
                        <div class="sc-blog-date-box">
                            <!-- <div class="sc-date-box">
                                <h4 class="title">15</h4>
                                <span class="sub-title">oct</span>
                            </div> -->
                           <!-- <div class="sc-blog-social text-center">
                                <ul class="list-gap">
                                    <li><i class="icon-david2"></i> David Wood</li>
                                    <li>
                                        <i class="icon-chat"></i>
                                        (05) Comment
                                    </li>
                                </ul>
                            </div>-->
                        </div>
                        <div class="sc-blog-text">
                            <h4>
                                <a class="title" href="/case-studies-one"
                                    >QA for a Data Management Company’s US Client</a
                                >
                            </h4>
                            <div class="sc-blog-btn">
                                <a class="sc-transparent-btn" href="/case-studies-one">Read Article</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="sc-blog-style2">
                        <div class="blog-img">
                            <a href="/white-paper-details1"
                                ><img src="{{asset('public/assets/frontend/images/blog/SentimentAnalysis.png')}}" alt="Blog"
                            /></a>
                        </div>
                        <div class="sc-blog-date-box">
                            <!-- <div class="sc-date-box">
                                <h4 class="title">15</h4>
                                <span class="sub-title">dec</span>
                            </div> -->
                            <!--<div class="sc-blog-social text-center">
                                <ul class="list-gap">
                                    <li><i class="icon-david2"></i> David Wood</li>
                                    <li>
                                        <i class="icon-chat"></i>
                                        (15) Comment
                                    </li>
                                </ul>
                            </div>-->
                        </div>
                        <div class="sc-blog-text">
                            <h4>
                                <a class="title" href="/white-paper-details1"
                                    >The Rise of Sentiment Analysis: How it's Shaping the Future of Business Analysis</a
                                >
                            </h4>
                            <div class="sc-blog-btn">
                                <a class="sc-transparent-btn" href="/white-paper-details1">Read Article</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="sc-blog-style2">
                        <div class="blog-img">
                            <a href="/blog-details-one"
                                ><img src="{{asset('public/assets/frontend/images/blog/1.jpg')}}" alt="Blog"
                            /></a>
                        </div>
                        <!-- <div class="sc-blog-date-box">
                            <div class="sc-date-box">
                                <h4 class="title">25</h4>
                                <span class="sub-title">OCT</span>
                            </div>
                            <div class="sc-blog-social text-center">
                                <ul class="list-gap">
                                    <li><i class="icon-david2"></i> David Wood</li>
                                    <li>
                                        <i class="icon-chat"></i>
                                        (09) Comment
                                    </li>
                                </ul>
                            </div>
                        </div> -->
                        <div class="sc-blog-text">
                            <h4>
                                <a class="title" href="/blog-details-one"
                                    >How Technology Advisors are Transforming Business Operations to Maximize Profitability</a
                                >
                            </h4>
                            <div class="sc-blog-btn">
                                <a class="sc-transparent-btn" href="/blog-details-one">Read Article</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="sc-blog-style2">
                        <div class="blog-img">
                            <a href="/blog-details-one"
                                ><img src="{{asset('public/assets/frontend/images/blog/2.jpg')}}" alt="Blog"
                            /></a>
                        </div>
                        <!-- <div class="sc-blog-date-box">
                            <div class="sc-date-box">
                                <h4 class="title">25</h4>
                                <span class="sub-title">Oct</span>
                            </div>
                            <div class="sc-blog-social text-center">
                                <ul class="list-gap">
                                    <li><i class="icon-david2"></i> David Wood</li>
                                    <li>
                                        <i class="icon-chat"></i>
                                        (09) Comment
                                    </li>
                                </ul>
                            </div>
                        </div> -->
                        <div class="sc-blog-text">
                            <h4>
                                <a class="title" href="/blog-details-two"
                                    >I-voting – A New Digital Transformation Trend in Government</a
                                >
                            </h4>
                            <div class="sc-blog-btn">
                                <a class="sc-transparent-btn" href="/blog-details-two">Read Article</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--=========== blog section End =========-->

<div class="sc-brand-section-four" >

    <div class="row sc-cta-content-box">

        <div class="sc-project-item  col-lg-3 col-sm-12">

            <img src="{{asset('public/assets/frontend/images/project/image_9.jpg')}}" alt="Image" style="width: 100%;" />

            <div class="sc-project-content-box">

                <div class="sc-project-icon">

                    <a href="#"><i class="icon-sliuder-arrow2"></i></a>

                </div>

                <div class="sc-project-text">

                    <span class="sub-title">Blog</span>

                    <h4><a class="title" href="{{ route('blog-details-two') }}">Government Advisory</a></h4>

                </div>

            </div>

        </div>

        <div class="rounded-0 d-flex align-items-center justify-content-between col-lg-9 col-sm-12">

            <div

                class="sc-cta-text m-0"

                data-sal="slide-up"

                data-sal-duration="800"

                data-sal-delay="300"

            >

                <h2 class="title white-color">Our latest thinking on <br>Government Advisory</h2>

                <p class="des white-color pInsight">I-voting – A New Digital Transformation Trend in Government</p>

            </div>

            <div class="sc-cta-btn w-25" data-sal="slide-up" data-sal-duration="800" data-sal-delay="400">

                <a class="sc-primary-btn" href="{{ route('blog-details-two') }}">Read Now</a>

            </div>

        </div>

    </div>

</div>      




<!--=========== blog section End =========-->



<!--=========== essential Section Start=========-->



<div class="sc-accordion-section-area sc-accordion-style-two sc-pb-80">



    <div class="container">



        <div class="row align-items-center">



            <div class="col-lg-6" data-sal="slide-right" data-sal-duration="800">



                <div class="sc-heading-area sc-mb-35">



                    <span class="sub-title"><i class="icon-line"></i> Essential Queries</span>







                    <h2 class="title">



                    Get Answers to Your <span class="primary-color">Government Advisory</span> Questions




                    </h2>



                </div>



                <div class="accordion sc-faq-style" id="accordionExample">
                    @php $i = 0; @endphp
                    @foreach($faqs as $faq)
                   
                    @if($i == 0)                   
                    <div class="accordion-item">



                        <h2 class="accordion-header" id="headingOne">



                            <button



                                class="accordion-button"



                                type="button"



                                data-bs-toggle="collapse"



                                data-bs-target="#collapseOne"



                                aria-expanded="true"



                                aria-controls="collapseOne"



                            >



                                {{$faq->question}}



                            </button>



                        </h2>



                        <div



                            id="collapseOne"



                            class="accordion-collapse collapse show"



                            aria-labelledby="headingOne"



                            data-bs-parent="#accordionExample"



                        >



                            <div class="accordion-body">



                                {{$faq->answer}}



                            </div>



                        </div>



                    </div>                    
                    @else
                    <div class="accordion-item">



                        <h2 class="accordion-header" id="headingTwo">



                            <button



                                class="accordion-button collapsed"



                                type="button"



                                data-bs-toggle="collapse"



                                data-bs-target="#collapseTwo"



                                aria-expanded="false"



                                aria-controls="collapseTwo"



                            >



                                {{$faq->question}}



                            </button>



                        </h2>



                        <div



                            id="collapseTwo"



                            class="accordion-collapse collapse"



                            aria-labelledby="headingTwo"



                            data-bs-parent="#accordionExample"



                        >



                            <div class="accordion-body">



                              {{$faq->answer}}


                            </div>



                        </div>



                    </div>
                    @endif
                    @php $i++; @endphp
                    @endforeach

                    {{-- <div class="accordion-item">



                        <h2 class="accordion-header" id="headingOne">



                            <button



                                class="accordion-button"



                                type="button"



                                data-bs-toggle="collapse"



                                data-bs-target="#collapseOne"



                                aria-expanded="true"



                                aria-controls="collapseOne"



                            >



                                What is an information technology (IT) portfolio?



                            </button>



                        </h2>



                        <div



                            id="collapseOne"



                            class="accordion-collapse collapse show"



                            aria-labelledby="headingOne"



                            data-bs-parent="#accordionExample"



                        >



                            <div class="accordion-body">



                                <strong



                                    >IT portfolio management is the application of systematic management to the investments, 



                                    projects, and activities of enterprise Information Technology (IT) departments. Examples of 



                                    IT portfolios would be planned initiatives, projects, and ongoing IT services (such as application support). 



                                    At AchieveX we have expertise in IT Portfolios.







                                </strong



                                >



                            </div>



                        </div>



                    </div>



                    <div class="accordion-item">



                        <h2 class="accordion-header" id="headingTwo">



                            <button



                                class="accordion-button collapsed"



                                type="button"



                                data-bs-toggle="collapse"



                                data-bs-target="#collapseTwo"



                                aria-expanded="false"



                                aria-controls="collapseTwo"



                            >



                                What are the core components of IT portfolio governance?



                            </button>



                        </h2>



                        <div



                            id="collapseTwo"



                            class="accordion-collapse collapse"



                            aria-labelledby="headingTwo"



                            data-bs-parent="#accordionExample"



                        >



                            <div class="accordion-body">



                                <strong



                                    >AchieveX considers critical components of IT portfolio governance to include 



                                    activities like strategic alignment, prioritization, authorization of components, 



                                    and allocation of internal resources to accomplish organizational strategy and objectives.</strong



                                >



                            </div>



                        </div>



                    </div>



                    <div class="accordion-item">



                        <h2 class="accordion-header" id="headingThree">



                            <button



                                class="accordion-button collapsed"



                                type="button"



                                data-bs-toggle="collapse"



                                data-bs-target="#collapseThree"



                                aria-expanded="false"



                                aria-controls="collapseThree"



                            >



                                How is project portfolio management used by IT departments of the Government of West Bengal?



                            </button>



                        </h2>



                        <div



                            id="collapseThree"



                            class="accordion-collapse collapse"



                            aria-labelledby="headingThree"



                            data-bs-parent="#accordionExample"



                        >



                            <div class="accordion-body">



                                <strong



                                    >Per AchieveX’s experience, project portfolio management sets out a methodology used to 



                                    predict potential problems, review progress towards operational goals, manage budgets, and 



                                    address Government’s concerns, allowing project managers to then follow up with precision execution.







                               </strong



                                >



                            </div>



                        </div>



                    </div>



                    <div class="accordion-item">



                        <h2 class="accordion-header" id="headingFour">



                            <button



                                class="accordion-button collapsed"



                                type="button"



                                data-bs-toggle="collapse"



                                data-bs-target="#collapseFour"



                                aria-expanded="false"



                                aria-controls="collapseFour"



                            >



                                What are the 5 phases of IT projects?



                            </button>



                        </h2>



                        <div



                            id="collapseFour"



                            class="accordion-collapse collapse"



                            aria-labelledby="headingFour"



                            data-bs-parent="#accordionExample"



                        >



                            <div class="accordion-body">



                                <strong



                                    >Here are the 5 phases that AchieveX follows in every IT project we undertake:



                                     <ul>



                                         <li>Initiating</li>



                                         <li>Planning</li>



                                         <li>Executing</li>



                                         <li>Monitoring/controlling</li>



                                         <li>Closing</li>



                                     </ul>



                                    </strong



                                >



                            </div>



                        </div>



                          



                    </div>



                    <div class="accordion-item">



                        <h2 class="accordion-header" id="headingFive">



                            <button



                                class="accordion-button collapsed"



                                type="button"



                                data-bs-toggle="collapse"



                                data-bs-target="#collapseFive"



                                aria-expanded="false"



                                aria-controls="collapseFive"



                            >



                                What are the common IT projects in the Government segment?



                            </button>



                        </h2>



                        <div



                            id="collapseFive"



                            class="accordion-collapse collapse"



                            aria-labelledby="headingFive"



                            data-bs-parent="#accordionExample"



                        >



                            <div class="accordion-body">



                                <strong



                                    >AchieveX has expertise in handling the following types of projects on behalf of Governments and PSUs:



                                     <ul>



                                         <li>Staff Augmentation</li>



                                         <li>Software Development </li>



                                         <li>Web Development </li>



                                         <li>Technology Installation</li>



                                         <li>Cloud Computing</li>



                                         <li>Maintenance and Support </li>



                                         <li>Communication </li>



                                         <li>Cybersecurity </li>



                                     </ul>



                                    </strong



                                >



                            </div>



                        </div>



                          



                    </div> --}}



                </div>



                



                



            </div>



            <div class="col-lg-6">



                <div class="sc-essential-image sc-md-mt-40 text-end">


                    
                    <img src="{{asset('public/assets/frontend/images/project/essential-bg-old.png')}}" alt="Essential" />



                </div>



            </div>



        </div>



    </div>



    <div class="sc-essential-shape">



        <img src="{{asset('public/assets/frontend/images/bg/essential-shape.png')}}" alt="Shape" />



    </div>



</div>



<!--=========== essential Section End=========-->

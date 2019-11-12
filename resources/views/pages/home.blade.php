@extends('layout')
@section('head_data')
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-2125164089508105",
    enable_page_level_ads: true
  });
</script>
@stop
@section('content')
<!-- start banner Area -->
            <section class="banner-area" id="home"> 
                <div class="container">
                    <div class="row fullscreen d-flex align-items-center justify-content-start">
                        <div class="banner-content col-lg-7">
                            <h6 class="text-white text-uppercase">{{$webName}}</h6>
                            <h1 style="font-size: 35px">
                                <?php echo($moTaWeb); ?>     
                            </h1>
                            <a href="#coffee" class="primary-btn text-uppercase">Sản phẩm</a>
                        </div>                                          
                    </div>
                </div>
            </section>
            <!-- End banner Area -->    

            <!-- Start video-sec Area -->
            <section class="video-sec-area pb-100 pt-40" id="about">
                <div class="container">
                    <div class="row justify-content-start align-items-center">
                        <div class="col-lg-6 video-right justify-content-center align-items-center d-flex">
                            <a href="#"><img src="{{url('')}}/{{$home_about}}" class="img-fluid"></a>
                        </div>                      
                        <div class="col-lg-6 video-left">
                            <h6>{{$webName}}</h6>
                            {!! $page->content !!}
                        </div>
                    </div>
                </div>  
            </section>
            <!-- End video-sec Area -->
            
            <!-- Start menu Area -->
            <section class="menu-area section-gap" id="coffee">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="menu-content pb-60 col-lg-10">
                            <div class="title text-center">
                                <h1 class="mb-10">Các sản phẩm </h1>
                                <p>Chuyên cung cấp cà phê sỉ - Giá tốt nhất thị trường.</p>
                            </div>
                        </div>
                    </div>                      
                    <div class="row">

                        @foreach($products as $product)
                        <div class="col-lg-6">
                            <div class="single-menu">
                                <a href="{{url('')}}/san-pham&slug={{$product->slug}}">
                                <div class="title-div justify-content-between d-flex">
                                    <h4>{{$product->name}}</h4>
                                    <p class="price float-right">
                                        {{ number_format($product->price, 0) }} VND
                                    </p>
                                </div>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <img class="img-fluid" src="{{$product->img}}" alt="">
                                        </div>
                                        <div class="col-lg-6">
                                            <p style="color: #777777;text-align: justify;">
                                                {{ $product->meta_title }}
                                            </p>  
                                        </div>
                                    </div>
                                </div>
                                </a>                           
                            </div>
                        </div>
                        @endforeach
                                                                                 
                    </div>
                </div>  
            </section>
            <!-- End menu Area -->
            
            <!-- Start gallery Area -->
            <section class="gallery-area section-gap" id="gallery">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="menu-content pb-60 col-lg-10">
                            <div class="title text-center">
                                <h1 class="mb-10">Hình ảnh </h1>
                                <p>Cà phê chất Dili</p>
                            </div>
                        </div>
                    </div>                      
                    <div class="row">
                        <div class="col-lg-4">
                            <a href="img/g1.jpg" class="img-pop-home">
                                <img class="img-fluid" src="{{url('')}}/{{$home_g1}}" alt="">
                            </a>    
                            <a href="img/g2.jpg" class="img-pop-home">
                                <img class="img-fluid" src="{{url('')}}/{{$home_g2}}" alt="">
                            </a>    
                        </div>
                        <div class="col-lg-8">
                            <a href="img/g3.jpg" class="img-pop-home">
                                <img class="img-fluid" src="{{url('')}}/{{$home_g3}}" alt="">
                            </a>    
                            <div class="row">
                                <div class="col-lg-6">
                                    <a href="img/g4.jpg" class="img-pop-home">
                                        <img class="img-fluid" src="{{url('')}}/{{$home_g4}}" alt="">
                                    </a>    
                                </div>
                                <div class="col-lg-6">
                                    <a href="img/g5.jpg" class="img-pop-home">
                                        <img class="img-fluid" src="{{url('')}}/{{$home_g5}}" alt="">
                                    </a>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
            </section>
            <!-- End gallery Area -->
            
            <!-- Start review Area -->
            <section class="review-area section-gap" id="review">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="menu-content pb-60 col-lg-10">
                            <div class="title text-center">
                                <h1 class="mb-10">Đánh giá của khách hàng dành cho chũng tôi</h1>
                                <p><a href="https://www.facebook.com/pg/caphenguyenchatdili/reviews/?ref=page_internal" target="_blank" style="font-size: 18px">Click - Xem thêm tại Fanpage</a></p>
                            </div>
                        </div>
                    </div>                      
                    <div class="row">
                        <div class="col-lg-6 col-md-6 single-review">
                            <img src="img/r1.png" alt="">
                            <div class="title d-flex flex-row">
                                <h4>Phương Thảo</h4>
                                <div class="star">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>                                
                                </div>
                            </div>
                            <p>
                                "Vị cà béo ngậy, hương thơm dịu, rất đặc biệt. Từ nay có thể thoải mái uống mà không sợ cafe Kim Biên nữa rồi."
                            </p>
                        </div>  
                        <div class="col-lg-6 col-md-6 single-review">
                            <img src="img/r2.png" alt="">
                            <div class="title d-flex flex-row">
                                <h4>Tín Trần</h4>
                                <div class="star">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>                                
                                </div>
                            </div>
                            <p>
                                "Điểm đặc biệt ở cà phê nguyên chất Dili là hậu vị không hề thấy khó chịu, chua mà rất tự nhiên, đậm đà và dư âm rất lâu. Sự lựa chọn tuyệt hảo khi cần tập trung cho công việc."
                            </p>
                        </div>  
                    </div>
                    <div class="row counter-row">
                        <div class="col-lg-4 col-md-6 single-counter">
                            <h1 class="counter">1536</h1>
                            <p>Khách hàng hài lòng</p>
                        </div>
                        <div class="col-lg-4 col-md-6 single-counter">
                            <h1 class="counter">{{count($products)}}</h1>
                            <p>Số sản phẩm</p>
                        </div>
                        <div class="col-lg-4 col-md-6 single-counter">
                            <h1 class="counter">3013</h1>
                            <p>Cups Coffee</p>
                        </div>
                    </div>
                </div>  
            </section>
            <!-- End review Area -->
            
            <!-- Start blog Area -->
            <section class="blog-area section-gap" id="blog">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="menu-content pb-60 col-lg-10">
                            <div class="title text-center">
                                <h1 class="mb-10">Thông tin về nhà sản xuất Dili Coffee</h1>
                                <!-- <p>Cùng phát triền Cafe Việt Nam.</p> -->
                            </div>
                        </div>
                    </div>                      
                    <div class="row">
                        @foreach($articles as $article)
                        <div class="col-lg-6 col-md-6 single-blog">
                            <a href="{{url('')}}/post&slug={{$article->slug}}">
                                <img class="img-fluid" src="{{url('')}}/{{$article->image}}" alt="">
                            </a>
                            <ul class="post-tags">
                                <?php 
                                $tags = DB::select('SELECT t.`name` "name" 
                                     FROM `article_tag` a, `tags` t 
                                    WHERE t.`id` = a.`tag_id`
                                    AND `article_id` = ? ', [$article->id]
                                    );
                                ?>
                                @foreach($tags as $tag)
                                <li><a href="#">{{$tag->name}}</a></li>
                                @endforeach
                            </ul>
                            <a href="{{url('')}}/post&slug={{$article->slug}}"><h4>{{$article->title}}</h4></a>
                            <p>
                                {{$article->intro}}
                            </p>
                            <p class="post-date">
                                31st January, 2018
                            </p>
                        </div>
                        @endforeach               
                    </div>
                </div>  
            </section>
            <!-- End blog Area -->

@stop
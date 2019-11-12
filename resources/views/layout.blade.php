    <!DOCTYPE html>
    <html lang="zxx" class="no-js">
    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="codepixer">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>{{$title}}</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
            <!--
            CSS
            ============================================= -->
            <link rel="stylesheet" href="css/linearicons.css">
            <link rel="stylesheet" href="css/font-awesome.min.css">
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/magnific-popup.css">
            <link rel="stylesheet" href="css/nice-select.css">                  
            <link rel="stylesheet" href="css/animate.min.css">
            <link rel="stylesheet" href="css/owl.carousel.css">
            <link rel="stylesheet" href="css/main.css">
        @yield('head_data')
        </head>
        <body>

              <header id="header" id="home">
                <div class="header-top">
                    <div class="container">
                        <div class="row justify-content-end">
                            <div class="col-lg-8 col-sm-4 col-8 header-top-right no-padding">
                                <ul>
                                    <li>
                                        {{$time1}}
                                    </li>
                                    <li>
                                        {{$time2}}
                                    </li>
                                    <li>
                                        <a href="tel:{{$sdt1}}">{{$sdt1}}</a>
                                    </li>                                   
                                </ul>
                            </div>
                        </div>                              
                    </div>
                </div>              
                <div class="container">
                    <div class="row align-items-center justify-content-between d-flex">
                      <div id="logo">
                        <a href="{{url('')}}"><img src="img/logo2.png" class="img-fluid" /></a>
                      </div>
                      <nav id="nav-menu-container">
                        <ul class="nav-menu">
                          <li class="menu-active"><a href="{{$mainMenuURL}}#home">Home</a></li>
                          <li><a href="{{$mainMenuURL}}#about">Cam kết</a></li>
                          <li><a href="{{$mainMenuURL}}#coffee">Sản phẩm</a></li>
                          <li><a href="{{$mainMenuURL}}#review">Review</a></li>
                          <li><a href="{{$mainMenuURL}}#blog">Thông tin</a></li>
                          <li><a href="{{$mainMenuURL}}#address">Liên hệ</a></li>
                          <!-- <li class="menu-has-children"><a href="">Pages</a>
                            <ul>
                              <li><a href="generic.html">Generic</a></li>
                              <li><a href="elements.html">Elements</a></li>
                            </ul>
                          </li> -->
                        </ul>
                      </nav><!-- #nav-menu-container -->                    
                    </div>
                </div>
              </header><!-- #header -->
            
            @yield('content');

            <!-- start footer Area -->      
            <footer class="footer-area section-gap" id="address">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-6 col-sm-6">
                            <div class="single-footer-widget">
                                <h6>Địa chỉ</h6>
                                <p>
                                    <?php 
                                        echo($diaChi);
                                    ?>
                                </p>
                                <br>
                                <p class="footer-text" style="font-size: 11px">
                                    
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Design <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://www.facebook.com/cau.binhdinh" target="_blank">Tin Tran</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>                                
                            </div>
                        </div>
                        <div class="col-lg-3  col-md-6 col-sm-6">
                            <div class="single-footer-widget">
                                <h6>Kinh doanh</h6>
                                <p>{{$sdt1}}</p>
                                <p>{{$sdt2}}</p>
                                
                            </div>
                        </div>                      
                        <div class="col-lg-4 col-md-6 col-sm-6 social-widget">
                            <div class="single-footer-widget">
                                <h6>Follow Us</h6>
                                <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fcaphenguyenchatdili%2F&tabs=timeline&width=340&height=70&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=1820603798154432" width="340" height="220" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                            </div>
                        </div>                          
                    </div>
                </div>
            </footer>   
            <!-- End footer Area -->    

            <script src="js/vendor/jquery-2.2.4.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="js/vendor/bootstrap.min.js"></script>          
            <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
            <script src="js/easing.min.js"></script>            
            <script src="js/hoverIntent.js"></script>
            <script src="js/superfish.min.js"></script> 
            <script src="js/jquery.ajaxchimp.min.js"></script>
            <script src="js/jquery.magnific-popup.min.js"></script> 
            <script src="js/owl.carousel.min.js"></script>          
            <script src="js/jquery.sticky.js"></script>
            <script src="js/jquery.nice-select.min.js"></script>            
            <script src="js/parallax.min.js"></script>  
            <script src="js/waypoints.min.js"></script>
            <script src="js/jquery.counterup.min.js"></script>                  
            <script src="js/mail-script.js"></script>   
            <script src="js/main.js"></script>  
            <script type="text/javascript">
                $(document).ready(function(){
                 $(".img-text img").each(function(){
                    $(this).addClass('img-fluid');
                   $(this).css("height", "auto");
                  })
               });
              </script>
        </body>
    </html>




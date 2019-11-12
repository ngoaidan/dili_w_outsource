@extends('layout')

@section('content')
<style type="text/css">
    #header{
    background: rgba(20, 2, 0, 0.8);
    transition: all 0.5s;
}
</style>
            <!-- Start video-sec Area -->
            <section class="video-sec-area pt-100" id="about" style="margin-top: 90px;">
                <div class="container">
                    <div class="row justify-content-start align-items-center">
                        <div class="col-lg-6 justify-content-center align-items-center d-flex">
                            <div class="overlay overlay-bg"></div>
                            <img class="img-fluid" src="{{$product->img}}" alt="">
                        </div>                      
                        <div class="col-lg-6">
                            <div class="row">
                                <div class="col-lg-8"><h1>{{$product->name}}</h1></div>
                                <div class="col-lg-4"><h6 style="text-transform: uppercase;letter-spacing: 2px;color: #b68834;font-weight: 300;">{{ number_format($product->price, 0) }} VND <br>/{{$product->ml}}</h6>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12" style=";margin-top: 16px"> {{ $product->meta_title }}</div>
                            </div>
                        </div>
                    </div>
                </div>  
            </section>
            <!-- End video-sec Area -->

            <!-- Start Generic Area -->
            <section class="about-generic-area section-gap">
                <div class="container border-top-generic">
                    <div class="row">
                        <div class="col-md-10 offset-md-1">
                            <div class="img-text">
                                {!! $product->description !!}
                            </div>
                        </div>
                        
                    </div>
                </div>
            </section>
            <!-- End Generic Start -->  

            
@stop
@extends('layout')

@section('content')
<style type="text/css">
    #header{
    background: rgba(20, 2, 0, 0.8);
    transition: all 0.5s;
}
</style>
            

            <!-- Start Generic Area -->
            <section class="about-generic-area section-gap" style="margin-top: 5px;">
                <div class="container border-top-generic">
                    <h3 class="about-title mb-30" style="color: #b68834;">{{$post->title}}</h3>
                    <hr>
                    <div class="row">
                        <div class="post-content col-md-10 offset-md-1">
                            <div class="img-text" style="padding: 10px 0px">
                                {!! $post->content !!}
                            </div>
                        </div>
                        
                    </div>
                </div>
            </section>
            <!-- End Generic Start -->  

            
@stop
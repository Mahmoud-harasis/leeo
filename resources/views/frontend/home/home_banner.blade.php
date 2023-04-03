@php
     $banners = App\Models\banner::orderBy('banner_title','ASC')->limit(3)->get();
@endphp

<section class="banners mb-25">
    <div class="container">
        <div class="row">

            @foreach ($banners as $banner)
                <div class="col-lg-4 col-md-6" >
                    <div class="banner-img wow animate__animated animate__fadeInUp" data-wow-delay="0">
                        <img src="{{asset($banner->banner_image	)}}" style="height: 300px;" alt="" />
                        <div class="banner-text">
                            
                        </div>
                    </div>
                </div>
            @endforeach
            
        </div>
    </div>
</section>
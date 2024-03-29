@extends('frontend.master_dashboard')

@section('main')
    
@include('frontend.home.home_slider')
<!--End hero slider-->

@include('frontend.home.home_features_category')
<!--End category slider-->

@include('frontend.home.home_banner')
<!--End banners-->

@include('frontend.home.home_new_product')
<!--Products Tabs-->

@include('frontend.home.home_features_product')
<!--End Best Sales-->

<!-- Fashion Category -->
{{-- 
<section class="product-tabs section-padding position-relative">
        <div class="container">
            <div class="section-title style-2 wow animate__animated animate__fadeIn">
                <h3>{{ $skip_category_0->category_name }} Category</h3>
            
            </div>
            <!--End nav-tabs-->
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="tab-one" role="tabpanel" aria-labelledby="tab-one">
                    <div class="row product-grid-4">

                        @foreach ($skip_product_0 as $product)
                        <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                            <div class="product-cart-wrap mb-30 wow animate__animated animate__fadeIn" data-wow-delay=".1s">
                                <div class="product-img-action-wrap">
                                    <div class="product-img product-img-zoom">
                                        <a href="{{url('product/details/'.$product->id.'/'.$product->product_slug)}}">
                                            <img class="default-img" src="{{asset($product->product_thambnail)}} " alt="" />
                                        </a>
                                    </div>
                                    
                                    
                                    @php
                                        $amount = $product->selling_price - $product->discount_price;
                                        $discount = ($amount/$product->selling_price)*100;
                                    @endphp

                                    <div class="product-badges product-badges-position product-badges-mrg">
                                        @if ($product->discount_price == NULL)
                                            <span class="new">New </span>
                                        @else
                                            <span class="hot">{{round($discount)}}% </span>
                                        @endif
                                    </div>
                                </div>
                                <div class="product-content-wrap">
                                    <div class="product-category">
                                        <a href="shop-grid-right.html">{{$product['category']['category_name']}}</a>
                                    </div>
                                    <h2><a href=" {{url('product/details/'.$product->id.'/'.$product->product_slug)}} ">{{$product->product_name}}</a></h2>
                                    <div class="product-rate-cover">
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 90%"></div>
                                        </div>
                                        <span class="font-small ml-5 text-muted"> (4.0)</span>
                                    </div>
                                    <div>
                                        <span class="font-small text-muted">By <a href="vendor-details-1.html">Owner</a></span>
                                    </div>
                                    <div class="product-card-bottom">
                                        
                                        @if ($product->discount_price == NULL)
                                            <div class="product-price">
                                                <span>${{$product->selling_price}}</span>
                                            </div>
                                        @else
                                            <div class="product-price">
                                                <span>${{$product->discount_price}}</span>
                                                <span class="old-price">${{$product->selling_price}}</span>
                                            </div>
                                        @endif

                                        
                                        <div class="add-cart">
                                            <a class="add" href="shop-cart.html"><i class="fi-rs-shopping-cart mr-5"></i>Add </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>  
                    @endforeach
                        <!--end product card-->

                    </div>
                    <!--End product-grid-4-->
                </div>
            
            
            </div>
            <!--End tab-content-->
        </div>

</section> --}}

<!--End Fashion Category -->

<!-- Sweet Home Category -->

{{-- <section class="product-tabs section-padding position-relative">
    <div class="container">
        <div class="section-title style-2 wow animate__animated animate__fadeIn">
            <h3>{{ $skip_category_2->category_name }} Category</h3>
        
        </div>
        <!--End nav-tabs-->
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="tab-one" role="tabpanel" aria-labelledby="tab-one">
                <div class="row product-grid-4">

                    @foreach ($skip_product_2 as $product)
                    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                        <div class="product-cart-wrap mb-30 wow animate__animated animate__fadeIn" data-wow-delay=".1s">
                            <div class="product-img-action-wrap">
                                <div class="product-img product-img-zoom">
                                    <a href="{{url('product/details/'.$product->id.'/'.$product->product_slug)}}">
                                        <img class="default-img" src="{{asset($product->product_thambnail)}} " alt="" />
                                    </a>
                                </div>
                                
                                
                                @php
                                    $amount = $product->selling_price - $product->discount_price;
                                    $discount = ($amount/$product->selling_price)*100;
                                @endphp

                                <div class="product-badges product-badges-position product-badges-mrg">
                                    @if ($product->discount_price == NULL)
                                        <span class="new">New </span>
                                    @else
                                        <span class="hot">{{round($discount)}}% </span>
                                    @endif
                                </div>
                            </div>
                            <div class="product-content-wrap">
                                <div class="product-category">
                                    <a href="shop-grid-right.html">{{$product['category']['category_name']}}</a>
                                </div>
                                <h2><a href=" {{url('product/details/'.$product->id.'/'.$product->product_slug)}} ">{{$product->product_name}}</a></h2>
                                <div class="product-rate-cover">
                                    <div class="product-rate d-inline-block">
                                        <div class="product-rating" style="width: 90%"></div>
                                    </div>
                                    <span class="font-small ml-5 text-muted"> (4.0)</span>
                                </div>
                                <div>
                                    <span class="font-small text-muted">By <a href="vendor-details-1.html">Owner</a></span>
                                </div>
                                <div class="product-card-bottom">
                                    
                                    @if ($product->discount_price == NULL)
                                        <div class="product-price">
                                            <span>${{$product->selling_price}}</span>
                                        </div>
                                    @else
                                        <div class="product-price">
                                            <span>${{$product->discount_price}}</span>
                                            <span class="old-price">${{$product->selling_price}}</span>
                                        </div>
                                    @endif

                                    
                                    <div class="add-cart">
                                        <a class="add" href="shop-cart.html"><i class="fi-rs-shopping-cart mr-5"></i>Add </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  
                @endforeach
                    <!--end product card-->

                </div>
                <!--End product-grid-4-->
            </div>
        
        
        </div>
        <!--End tab-content-->
    </div>

</section> --}}
<!--End Tshirt Category -->

<!-- Computer Category -->
{{-- 
<section class="product-tabs section-padding position-relative">
    <div class="container">
        <div class="section-title style-2 wow animate__animated animate__fadeIn">
            <h3>{{ $skip_category_7->category_name }} Category</h3>
        
        </div>
        <!--End nav-tabs-->
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="tab-one" role="tabpanel" aria-labelledby="tab-one">
                <div class="row product-grid-4">

                    @foreach ($skip_product_7 as $product)
                    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                        <div class="product-cart-wrap mb-30 wow animate__animated animate__fadeIn" data-wow-delay=".1s">
                            <div class="product-img-action-wrap">
                                <div class="product-img product-img-zoom">
                                    <a href="{{url('product/details/'.$product->id.'/'.$product->product_slug)}}">
                                        <img class="default-img" src="{{asset($product->product_thambnail)}} " alt="" />
                                    </a>
                                </div>
                               
                                
                                @php
                                    $amount = $product->selling_price - $product->discount_price;
                                    $discount = ($amount/$product->selling_price)*100;
                                @endphp

                                <div class="product-badges product-badges-position product-badges-mrg">
                                    @if ($product->discount_price == NULL)
                                        <span class="new">New </span>
                                    @else
                                        <span class="hot">{{round($discount)}}% </span>
                                    @endif
                                </div>
                            </div>
                            <div class="product-content-wrap">
                                <div class="product-category">
                                    <a href="shop-grid-right.html">{{$product['category']['category_name']}}</a>
                                </div>
                                <h2><a href=" {{url('product/details/'.$product->id.'/'.$product->product_slug)}} ">{{$product->product_name}}</a></h2>
                                <div class="product-rate-cover">
                                    <div class="product-rate d-inline-block">
                                        <div class="product-rating" style="width: 90%"></div>
                                    </div>
                                    <span class="font-small ml-5 text-muted"> (4.0)</span>
                                </div>
                                <div>
                                    <span class="font-small text-muted">By <a href="vendor-details-1.html">Owner</a></span>
                                </div>
                                <div class="product-card-bottom">
                                    
                                    @if ($product->discount_price == NULL)
                                        <div class="product-price">
                                            <span>${{$product->selling_price}}</span>
                                        </div>
                                    @else
                                        <div class="product-price">
                                            <span>${{$product->discount_price}}</span>
                                            <span class="old-price">${{$product->selling_price}}</span>
                                        </div>
                                    @endif

                                    
                                    <div class="add-cart">
                                        <a class="add" href="shop-cart.html"><i class="fi-rs-shopping-cart mr-5"></i>Add </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  
                @endforeach
                    <!--end product card-->

                </div>
                <!--End product-grid-4-->
            </div>
        
        
        </div>
        <!--End tab-content-->
    </div>

</section> --}}
<!--End Computer Category -->

<!--End 4 columns-->

{{-- @include('frontend.home.home_vendor_list') --}}
<!--End Vendor List -->


@endsection
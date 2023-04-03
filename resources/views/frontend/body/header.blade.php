<header class="header-area header-style-1 header-height-2">
    <div class="mobile-promotion">
        <span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>
    </div>
   
    <div class="header-middle header-middle-ptb-1 d-none d-lg-block">
        <div class="container">
            <div class="header-wrap">
                <div class="logo logo-width-1">
                    <a href="{{url('/')}}"><img src="{{asset('frontend/assets/imgs/theme/logo.png')}} " alt="logo" /></a>
                </div>
                <div class="header-right">
                    <div class="search-style-2">
                        <form action="#">
                            <select class="select-active">
                                <option>All Categories</option>
                                
                                @php
                                    $categories = App\Models\Category::orderBy('category_name','ASC')->limit(6)->get();
                                @endphp
                            
                                @foreach($categories as $category)    
                             
                                <option><a href="{{ url('product/category/'.$category->id.'/'.$category->category_slug) }}">{{ $category->category_name }}</a> </option>
                        
                                    
                                
                                @endforeach
                                
                            </select>
                            <input type="text" placeholder="Search for items..." />
                        </form>
                    </div>
                    <div class="header-action-right">
                        <div class="header-action-2">
                            <div class="header-action-icon-2">
                                @php
                                    if (Auth::check()) {
                                        $user_id = Auth::user()->id;
                                        $carts = App\Models\Cart::where('user_id',$user_id)->get();
                                        $count = $carts->count();
                                    }
                                @endphp
                                <a class="mini-cart-icon" href="{{route('mycart')}}">
                                    <img alt="Nest" src="{{asset('frontend/assets/imgs/theme/icons/icon-cart.svg')}} " />
    
                                    @if (Auth::check())
                                        <span class="pro-count blue">{{$count}}</span>
                                    @else
                                        <span class="pro-count blue">0</span>
                                    @endif
                                </a>
                                <a href="{{route('mycart')}}"><span class="lable">Cart</span></a>
    
                                @if (Auth::check())
                                    <div class="cart-dropdown-wrap cart-dropdown-hm2">
                                        <ul>
                                            @foreach ($carts as $cart)
                                                <li>
                                                    <div class="shopping-cart-title">
                                                        <h4><a href="{{url('product/details/'.$cart['product']['id'].'/'.$cart['product']['product_slug'])}}">{{$cart['product']['product_name']}}</a></h4>
                                                        @if ($cart['product']['discount_price'] == NULL)
                                                            <h4><span>{{$cart->quantity}} × </span>${{$cart['product']['selling_price']}}</h4>
                                                            
                                                        @else
                                                            <h4><span>{{$cart->quantity}} × </span>${{$cart['product']['discount_price']}}</h4>
                                                        @endif
                                                    </div>
                                                    <div class="shopping-cart-delete">
                                                        <a type="submit" href="{{route('delete.cart',$cart->id)}}"><i class="fi-rs-cross-small"></i></a>
                                                    </div>
                                                </li>
                                            
                                            @endforeach
                                        
                                        </ul>
                                        <div class="shopping-cart-footer">
                                            @php
                                                $AllTotal = 0;
                                                foreach ($carts as $cart) {
                                                    $qty = $cart->quantity;
                                                    if ($cart['product']['discount_price'] == NULL) {
    
                                                        $selling_price = $cart['product']['selling_price'];
                                                        $total = $qty * $selling_price;
                                                        $AllTotal +=$total;
                                                    }else {
                                                        $discount_price = $cart['product']['discount_price'];
                                                        $total = $qty * $discount_price; 
                                                        $AllTotal +=$total;
    
                                                    }
                                                }
                                            @endphp
                                            <div class="shopping-cart-total">
                                                <h4>Total <span>${{$AllTotal}}</span></h4>
                                            </div>
                                            <div class="shopping-cart-button">
                                                <a href="{{route('mycart')}}" class="outline">View cart</a>
                                                <a href="shop-checkout.html">Checkout</a>
                                            </div>
                                        </div>
                                    </div>
                                @endif
    
                            </div>
                            
                            <div class="header-action-icon-2">
                                <a href="page-account.html">
                                    <img class="svgInject" alt="Nest" src="{{asset('frontend/assets/imgs/theme/icons/icon-user.svg')}} " />
                                </a>

                                @auth
                                        
                                        <a href="page-account.html"><span class="lable ml-0">Account</span></a>
                                        <div class="cart-dropdown-wrap cart-dropdown-hm2 account-dropdown">
                                            <ul>
                                                <li>
                                                    <a href="{{route('dashboard')}}"><i class="fi fi-rs-user mr-10"></i>My Account</a>
                                                </li>
                                                <li>
                                                    <a href="{{route('dashboard')}}"><i class="fi fi-rs-location-alt mr-10"></i>Order Tracking</a>
                                                </li>
                                                <li>
                                                    <a href="{{route('dashboard')}}"><i class="fi fi-rs-label mr-10"></i>My Voucher</a>
                                                </li>
                                                <li>
                                                    <a href="{{route('dashboard')}}"><i class="fi fi-rs-heart mr-10"></i>My Wishlist</a>
                                                </li>
                                                <li>
                                                    <a href="{{route('dashboard')}}"><i class="fi fi-rs-settings-sliders mr-10"></i>Setting</a>
                                                </li>
                                                <li>
                                                    <a href="{{route('user.logout')}}"><i class="fi fi-rs-sign-out mr-10"></i>Sign out</a>
                                                </li>
                                            </ul>
                                        </div>

                                @else
                                        <a href="{{route('login')}}"><span class="lable ml-0">Login /</span></a>
                                        <a href="{{route('register')}}"><span class="lable ml-0">Register</span></a>
                                        
                                @endauth

                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    @php
        $categories = App\Models\Category::orderBy('category_name','ASC')->limit(6)->get();
    @endphp





    <div class="header-bottom header-bottom-bg-color sticky-bar">
        <div class="container">
            <div class="header-wrap header-space-between position-relative">
                <div class="logo logo-width-1 d-block d-lg-none ">
                    <a href="index.html"><img src="{{asset('frontend/assets/imgs/theme/logo.png')}} " alt="logo" /></a>
                </div>
                <div class="header-nav d-none d-lg-flex">
                    <div class="main-categori-wrap d-none d-lg-block">
                        <a class="categories-button-active" href="#">
                            <span class="fi-rs-apps"></span>   All Categories
                            <i class="fi-rs-angle-down"></i>
                        </a>
                        <div class="categories-dropdown-wrap categories-dropdown-active-large font-heading">
                            <div class="d-flex categori-dropdown-inner">
                                <ul>
                                    @foreach ($categories as $item)
                                        <li>
                                            <a href="shop-grid-right.html"> <img src="{{asset($item->category_image)}} " alt="" />{{$item->category_name}}</a>
                                        </li>
                                    @endforeach
                                </ul>
                                <ul class="end">
                                    @foreach ($categories as $item)
                                        <li>
                                            <a href="shop-grid-right.html"> <img src="{{asset($item->category_image)}} " alt="" />{{$item->category_name}}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            
                            
                        </div>
                    </div>
                    <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block font-heading">
                        <nav>
                            <ul>
                                
                                <li>
                                    <a class="active" href="{{ url('/') }}">Home</a>
                                    
                                </li>

                                @php
                                    $categories = App\Models\Category::orderBy('category_name','ASC')->limit(6)->get();
                                @endphp
                            
                                @foreach($categories as $category)    
                                <li>
                                    <a href="{{ url('product/category/'.$category->id.'/'.$category->category_slug) }}">{{ $category->category_name }} </a>
                        
                                    
                                </li>
                                @endforeach
                                <li>
                                    <a href="page-about.html">About</a>
                                </li>
                                <li>
                                    <a href="page-contact.html">Contact</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>


                
                <div class="header-action-icon-2 d-block d-lg-none">
                    <div class="burger-icon burger-icon-white">
                        <span class="burger-icon-top"></span>
                        <span class="burger-icon-mid"></span>
                        <span class="burger-icon-bottom"></span>
                    </div>
                </div>
                <div class="header-action-right d-block d-lg-none">
                    <div class="header-action-2">
                        


                        <div class="header-action-icon-2">
                            @php
                                if (Auth::check()) {
                                    $user_id = Auth::user()->id;
                                    $carts = App\Models\Cart::where('user_id', $user_id)->get();
                                    $count = $carts->count();
                                }
                            @endphp
                            <a class="mini-cart-icon" href="{{ route('mycart') }}">
                                <img alt="Nest" src="{{ asset('frontend/assets/imgs/theme/icons/icon-cart.svg') }} " />
                                @if (Auth::check())
                                    <span class="pro-count blue">{{ $count }}</span>
                                @else
                                    <span class="pro-count blue">0</span>
                                @endif
                            </a>
                            <a href="{{ route('mycart') }}"><span class="lable">Cart</span></a>
                            @if (Auth::check())
                                <div class="cart-dropdown-wrap cart-dropdown-hm2">
                                    <ul>
                                        @foreach ($carts as $cart)
                                            <li>
                                                
                                                <div class="shopping-cart-title">
                                                    <h4><a href="{{ url('product/details/' . $cart['product']['id'] . '/' . $cart['product']['product_slug']) }}">{{ $cart['product']['product_name'] }}</a></h4>
                                                    @if ($cart['product']['discount_price'] == NULL)
                                                        <h4><span>{{ $cart->quantity }} × </span>${{ $cart['product']['selling_price'] }}</h4>
                                                    @else
                                                        <h4><span>{{ $cart->quantity }} × </span>${{ $cart['product']['discount_price'] }}</h4>
                                                    @endif
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a type="submit" href="{{ route('delete.cart', $cart->id) }}"><i class="fi-rs-cross-small"></i></a>
                                                </div>
                                            </li>
                                        @endforeach
                                    </ul>
                                    <div class="shopping-cart-footer">
                                        @php
                                            $AllTotal = 0;
                                            foreach ($carts as $cart) {
                                                $qty = $cart->quantity;
                                                if ($cart['product']['discount_price'] == NULL) {
                                                    $selling_price = $cart['product']['selling_price'];
                                                    $total = $qty * $selling_price;
                                                    $AllTotal += $total;
                                                } else {
                                                    $discount_price = $cart['product']['discount_price'];
                                                    $total = $qty * $discount_price; 
                                                    $AllTotal += $total;
                                                }
                                            }
                                        @endphp
                                        <div class="shopping-cart-total">
                                            <h4>Total <span>${{ $AllTotal }}</span></h4>
                                        </div>
                                        <div class="shopping-cart-button">
                                            <a href="{{ route('mycart') }}" class="outline">View cart</a>
                                            <a href="shop-checkout.html">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        </div>
                        


                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
    <!--End header-->

<div class="mobile-header-active mobile-header-wrapper-style">
    <div class="mobile-header-wrapper-inner">
        <div class="mobile-header-top">
            <div class="mobile-header-logo">
                <a href="index.html"><img src="{{asset('frontend/assets/imgs/theme/logo.png')}} " alt="logo" /></a>
            </div>
            <div class="mobile-menu-close close-style-wrap close-style-position-inherit">
                <button class="close-style search-close">
                    <i class="icon-top"></i>
                    <i class="icon-bottom"></i>
                </button>
            </div>
        </div>
        <div class="mobile-header-content-area">
            <div class="mobile-search search-style-3 mobile-header-border">
                <form action="#">
                    <input type="text" placeholder="Search for items…" />
                    <button type="submit"><i class="fi-rs-search"></i></button>
                </form>
            </div>
            <div class="mobile-menu-wrap mobile-header-border">



                <!-- mobile menu start -->
                <nav>
                    <ul class="mobile-menu font-heading">
                        <li class="menu-item-has-children">
                            <a href="{{ url('/') }}">Home</a>
                             
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">category</a>
                            <ul class="dropdown">
                                {{-- <li><a href="shop-grid-right.html">Shop Grid – Right Sidebar</a></li>
                                <li><a href="shop-grid-left.html">Shop Grid – Left Sidebar</a></li>
                                <li><a href="shop-list-right.html">Shop List – Right Sidebar</a></li>
                                <li><a href="shop-list-left.html">Shop List – Left Sidebar</a></li>
                                <li><a href="shop-fullwidth.html">Shop - Wide</a></li> --}}
                                @php
                                    $categories = App\Models\Category::orderBy('category_name','ASC')->limit(6)->get();
                                @endphp
                            
                                @foreach($categories as $category)    
                                <li>
                                    <a href="{{ url('product/category/'.$category->id.'/'.$category->category_slug) }}">{{ $category->category_name }} </a>
                        
                                    {{-- @php 
                                        $subcategories = App\Models\SubCategory::where('category_id',$category->id)->orderBy('subcategory_name','ASC')->get();
                                    @endphp
                            
                                        <ul class="sub-menu">
                                            @foreach($subcategories as $subcategory)   
                                            <li><a href="{{ url('product/subcategory/'.$subcategory->id.'/'.$subcategory->subcategory_slug) }}">{{ $subcategory->subcategory_name }}</a></li>
                                            @endforeach
                                        </ul> --}}
                                </li>
                                @endforeach
                        
                    </ul>
                </nav>
                <!-- mobile menu end -->
            </div>
            <div class="mobile-header-info-wrap">
                <div class="single-mobile-header-info">
                    <a href="page-contact.html"><i class="fi-rs-marker"></i> Our location </a>
                </div>
                <div class="single-mobile-header-info">
                    <a href="{{route('login')}}"><i class="fi-rs-user"></i>Log In / Sign Up </a>
                </div>
                <div class="single-mobile-header-info">
                    <a href="#"><i class="fi-rs-headphones"></i>(+01) - 2345 - 6789 </a>
                </div>
            </div>
            <div class="mobile-social-icon mb-50">
                <h6 class="mb-15">Follow Us</h6>
                <a href="#"><img src="{{asset('frontend/assets/imgs/theme/icons/icon-facebook-white.svg')}} " alt="" /></a>
                <a href="#"><img src="{{asset('frontend/assets/imgs/theme/icons/icon-twitter-white.svg')}} " alt="" /></a>
                <a href="#"><img src="{{asset('frontend/assets/imgs/theme/icons/icon-instagram-white.svg')}} " alt="" /></a>
                <a href="#"><img src="{{asset('frontend/assets/imgs/theme/icons/icon-pinterest-white.svg')}} " alt="" /></a>
                <a href="#"><img src="{{asset('frontend/assets/imgs/theme/icons/icon-youtube-white.svg')}} " alt="" /></a>
            </div>
            <div class="site-copyright">Copyright 2022 © Nest. All rights reserved. Powered by AliThemes.</div>
        </div>
    </div>
</div>
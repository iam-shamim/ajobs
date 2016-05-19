@extends('layouts.index')
@section('container')
    <section class="hero">
        <div class="container text-center">
            <h2 class="hero-title">Find an Awesome Things Here</h2>
            <p class="hero-description hidden-xs">Find all things you need on DLapak. We give you a simple way.</p>
            <div class="row hero-search-box">
                <form>
                    <div class="col-md-4 col-sm-4 search-input">
                        <input type="text" class="form-control input-lg search-first" placeholder="I'm feeling lucky...">
                    </div>
                    <div class="col-md-4 col-sm-4 search-input">
                        <select class="form-control input-lg search-second">
                            <option selected="">All Location</option>
                            <option>New York</option>
                            <option>Washington</option>
                            <option>California</option>
                        </select>
                    </div>
                    <div class="col-md-4 col-sm-4 search-input">
                        <button class="btn btn-custom btn-block btn-lg search-input-icon"><i class="fa fa-search"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-8">
                    <div class="row">
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category"><i class="fa fa-car shortcut-icon icon-blue"></i></a>
                                <a href="category"><h3>Car</h3></a>
                                <span class="total-items">234,567</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category"><i class="fa fa-motorcycle shortcut-icon icon-green"></i></a>
                                <a href="category"><h3>Motorcycle</h3></a>
                                <span class="total-items">25,366</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category"><i class="fa fa-home shortcut-icon icon-brown"></i></a>
                                <a href="category"><h3>Property</h3></a>
                                <span class="total-items">252,546</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category"><i class="fa fa-female shortcut-icon icon-violet"></i></a>
                                <a href="category"><h3>Fashion</h3></a>
                                <span class="total-items">52,546</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category"><i class="fa fa-mobile-phone shortcut-icon icon-dark-blue"></i></a>
                                <a href="category"><h3>Gadget</h3></a>
                                <span class="total-items">215,546</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category"><i class="fa fa-soccer-ball-o shortcut-icon icon-orange"></i></a>
                                <a href="category"><h3>Sport</h3></a>
                                <span class="total-items">415,546</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category"><i class="fa fa-gears shortcut-icon icon-light-blue"></i></a>
                                <a href="category"><h3>Industry</h3></a>
                                <span class="total-items">15,546</span>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3">
                            <div class="shortcut">
                                <a href="category"><i class="fa fa-wrench shortcut-icon icon-light-green"></i></a>
                                <a href="category"><h3>Job</h3></a>
                                <span class="total-items">152,546</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-header">
                                <h2>Featured</h2>
                            </div>
                            <div id="featured-products" class="owl-carousel owl-carousel-featured">
                                <div class="item">
                                    <div class="item-ads-grid">
                                        <div class="item-badge-grid featured-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-1.jpg" class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail"><h4>Lenovo A326 Black 4GB RAM</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category">Electronics</a> , <a href="category">Smartphone</a></li>
                                                <li class="item-location"><a href="category"><i class="fa fa-map-marker"></i> Manchester</a></li>
                                                <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                            </ul>
                                        </div>
                                        <div class="product-footer">
                                            <div class="item-price-grid pull-left">
                                                <h3>$ 100</h3>
                                                <span>Negotiable</span>
                                            </div>
                                            <div class="item-action-grid pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="item-ads-grid">
                                        <div class="item-badge-grid premium-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-6.jpg" class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail"><h4>Samsung Tab 3 V 116</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category">Electronics</a> , <a href="category">Smartphone</a></li>
                                                <li class="item-location"><a href="category"><i class="fa fa-map-marker"></i> Manchester</a></li>
                                                <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                            </ul>
                                        </div>
                                        <div class="product-footer">
                                            <div class="item-price-grid pull-left">
                                                <h3>$ 100</h3>
                                                <span>Negotiable</span>
                                            </div>
                                            <div class="item-action-grid pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="item-ads-grid highlight-ads">
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-7.jpg" class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail"><h4>Sony Experia Z2 LTE</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category">Electronics</a> , <a href="category">Smartphone</a></li>
                                                <li class="item-location"><a href="category"><i class="fa fa-map-marker"></i> Manchester</a></li>
                                                <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                            </ul>
                                        </div>
                                        <div class="product-footer">
                                            <div class="item-price-grid pull-left">
                                                <h3>$ 100</h3>
                                                <span>Negotiable</span>
                                            </div>
                                            <div class="item-action-grid pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="item-ads-grid">
                                        <div class="item-badge-grid hot-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-1.jpg" class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail"><h4>Lenovo A326 Black 4GB RAM</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category">Electronics</a> , <a href="category">Smartphone</a></li>
                                                <li class="item-location"><a href="category"><i class="fa fa-map-marker"></i> Manchester</a></li>
                                                <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                            </ul>
                                        </div>
                                        <div class="product-footer">
                                            <div class="item-price-grid pull-left">
                                                <h3>$ 100</h3>
                                                <span>Negotiable</span>
                                            </div>
                                            <div class="item-action-grid pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="item-ads-grid">
                                        <div class="item-badge-grid featured-ads">
                                            <a href="#">Featured Ads</a>
                                        </div>
                                        <div class="item-img-grid">
                                            <img alt="" src="assets/img/products/product-1.jpg" class="img-responsive img-center">
                                        </div>
                                        <div class="item-title">
                                            <a href="detail"><h4>Lenovo A326 Black 4GB RAM</h4></a>
                                        </div>
                                        <div class="item-meta">
                                            <ul>
                                                <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                <li class="item-cat"><i class="fa fa-bars"></i> <a href="category">Electronics</a> , <a href="category">Smartphone</a></li>
                                                <li class="item-location"><a href="category"><i class="fa fa-map-marker"></i> Manchester</a></li>
                                                <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                            </ul>
                                        </div>
                                        <div class="product-footer">
                                            <div class="item-price-grid pull-left">
                                                <h3>$ 100</h3>
                                                <span>Negotiable</span>
                                            </div>
                                            <div class="item-action-grid pull-right">
                                                <ul>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                    <li><a href="detail" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    @if(!Auth::check())
                        <div class="widget">
                            <div class="widget-header">
                                <h3>Quick Signup</h3>
                            </div>
                            <div class="widget-body">
                                <form method="post" action="{!! route('signUp.action') !!}">
                                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                    <div class="form-group">
                                        <input type="text" placeholder="User Name" value="{!! old('userName') !!}" name="userName" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Email" name="email" value="{!! old('email') !!}" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" placeholder="Password" name="password" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label for="terms" class="string optional">
                                                <input type="checkbox" name="Agree" id="terms" value="Agree">
                                                I Agree with Term and Conditions
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-block btn-custom">Sign Up</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    @endif
                    <div class="widget">
                        <div class="widget-header">
                            <h3>Trends</h3>
                        </div>
                        <div class="widget-body">
                            <ul class="trends">
                                <li><a href="#">Smartphone &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">Watch &amp; Jewelry &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">Clothes &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">Shoes &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">Music &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">Furniture &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                <li><a href="#">Photography &nbsp;<span class="item-numbers">(242)</span></a></li>
                                <li><a href="#">Web Development &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="banner-widget">
                        <img src="http://placehold.it/600x275" alt="banner" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="counter">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-database"></i></span>
                        <div data-refresh-interval="100" data-speed="3000" data-to="7803" data-from="0" class="item-count">7803</div>
                        <span class="item-info">Items</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-user-plus"></i></span>
                        <div data-refresh-interval="50" data-speed="5000" data-to="427" data-from="0" class="item-count">427</div>
                        <span class="item-info">Sellers</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-map-marker"></i></span>
                        <div data-refresh-interval="80" data-speed="5000" data-to="639" data-from="0" class="item-count">639</div>
                        <span class="item-info">Locations</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-users"></i></span>
                        <div data-refresh-interval="80" data-speed="5000" data-to="1548" data-from="0" class="item-count">1548</div>
                        <span class="item-info">Members</span>
                    </div>
                </div>
            </div>
        </div> <!-- / .counter -->
    </div>
@endsection
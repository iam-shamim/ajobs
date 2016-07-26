@extends('layouts.index')
@section('title','New hot jobs')
<?php
$currentJobDate=date('Y-m-d');
$currentJobStr=strtotime($currentJobDate);
?>
@section('container')
    @include('include.findJobsSection')
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-header">
                                <h2>New Hot Jobs</h2>
                            </div>
                            <div id="featured-products" class="owl-carousel owl-carousel-featured">
                                <div class="row hotJobRow">
                                    @foreach($hotJobs AS $hotJob)
                                        <div class="item">
                                            <div class="item-ads-grid">
                                                <div class="item-company">
                                                    <a href="detail">
                                                        <img src="{!! url('img/company/'.$hotJob->logo) !!}" alt="company logo" class="companyIconForJob pull-left img-responsive">
                                                        <h4 class="text-capitalize">{!! $hotJob->jobTitle !!}</h4>
                                                    </a>
                                                </div>
                                                <div class="item-title">
                                                    <a href="{!! route('jobCompany',['id'=>$hotJob->employersID]) !!}">
                                                        <h5 class="text-capitalize m-l5">{!! $hotJob->companyName !!}</h5>
                                                    </a>
                                                </div>
                                                <div class="item-meta">
                                                    <ul>
                                                        <li class="item-date"><i class="fa fa-briefcase"></i> {!! preg_replace('/[[:upper:]]+/',' $0',$hotJob->jobType) !!}</li>
                                                        <?php
                                                        $jobDate=strtotime(date('Y-m-d',strtotime($hotJob->created_at)));
                                                        $viewableDate=($currentJobStr==$jobDate)?'Today '.date('h.i A',strtotime($hotJob->created_at)):date('M d,Y h.i A',strtotime($hotJob->created_at));
                                                        ?>
                                                        <li class="item-date"><i class="fa fa-clock-o"></i> {!! $viewableDate !!}</li>
                                                        <li class="item-cat"><i class="fa fa-bars"></i> <a href="">{!! $hotJob->categoryName !!}</a></li>
                                                        <li class="item-location"><i class="fa fa-map-marker"></i> {!! $hotJob->jobLocation !!}</li>
                                                    </ul>
                                                </div>
                                                <div class="product-footer">
                                                    <div class="item-price-grid pull-left">
                                                        <h3><span>20000-40000</span></h3>
                                                    </div>
                                                    <div class="item-action-grid pull-right">
                                                        <ul>
                                                            <!--
                                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                            -->
                                                            <li><a href="detail" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                    <div class="text-center">
                                        {{ $hotJobs->links() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    @include('include.rightMenuSighup')
                    @include('include.rightMenuCategorys')
                </div>
            </div>
        </div>
    </section>
    <style>
        .item .item-title h4{font-size:inherit;}
        .hotJobRow .item .item-company h4{position:absolute;bottom:0%;left:70px;}

        .item .companyIconForJob{width:65px;height:65px;background:#DCDCDC;padding:2px;border-radius:5px}
        .item .item-title{width: 100%;min-height:50px;max-height:50px;}
        .hotJobRow .item .item-company{width: 100%;min-height: 70px;position: relative;}
        .hotJobRow .item-meta{min-height:80px}

    </style>
@endsection
@extends('layouts.index')
@section('title','Find Your Job')
<?php
$currentJobDate=date('Y-m-d');
$currentJobStr=strtotime($currentJobDate);
?>
@section('container')
    @include('include.findJobsSection')
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-8">
                    <div class="section-header">
                        <h2>Top Employers</h2>
                    </div>
                    <div class="row">
                        @foreach($bestCompanyJobs AS $key=>$val)
                            <div class="col-xs-6 col-sm-4">
                                <div class="shortcut">
                                    <div class="row">
                                        <div class="col-xs-8 col-xs-offset-2">
                                            <img src="{!! url('img/company/'.$val->logo) !!}" alt="Company logo" class="img-responsive img-thumbnail">
                                        </div>
                                    </div>
                                    <a href="{!! route('jobCompany',['id'=>$val->id]) !!}"><h3>{!! $val->companyName !!}</h3></a>
                                    <span class="total-items">{!! $val->jobsCont !!}</span>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-header">
                                <h2>New Jobs</h2>
                            </div>
                            <div id="featured-products" class="owl-carousel owl-carousel-featured">
                                @foreach($jobs AS $job)
                                    <div class="item">
                                        <div class="item-ads-grid">
                                            <div class="item-title">
                                                <a href="{!! route('jobs.view',$job->id) !!}"><h4>{!! $job->jobTitle !!}</h4></a>
                                            </div>
                                            <div class="item-meta">
                                                <ul>
                                                    <li class="item-date"><i class="fa fa-briefcase"></i> {!! preg_replace('/[[:upper:]]+/',' $0',$job->jobType) !!}</li>
                                                    <?php
                                                    $jobDate=strtotime(date('Y-m-d',strtotime($job->created_at)));
                                                    $viewableDate=($currentJobStr==$jobDate)?'Today '.date('h.i A',strtotime($job->created_at)):date('M d,Y h.i A',strtotime($job->created_at));
                                                    ?>
                                                    <li class="item-date"><i class="fa fa-clock-o"></i> {!! $viewableDate !!}</li>
                                                    <li class="item-cat"><i class="fa fa-bars"></i> {!! $job->categoryName !!}</li>
                                                    <li class="item-location"><i class="fa fa-map-marker"></i> {!! $job->jobLocation !!}</li>
                                                </ul>
                                            </div>
                                            <div class="product-footer">
                                                <div class="item-price-grid pull-left">
                                                    <h3><span>{!! $job->salary !!}</span></h3>

                                                </div>
                                                <div class="item-action-grid pull-right">
                                                    <ul>
                                                        <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                        <li><a href="{!! route('jobs.view',$job->id) !!}" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                                <div class="text-center">
                                    {{ $jobs->links() }}
                                </div>
                                <div class="section-header">
                                    <h2>Hot Jobs</h2>
                                </div>
                                <div class="row hotJobRow">
                                    @foreach($hotJobs AS $hotJob)
                                        <div class="col-md-12">
                                            <div class="item">
                                                <div class="item-ads-grid">
                                                    <div class="featured">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="item-title">
                                                        <a href="{!! route('jobs.view',$hotJob->id) !!}">
                                                            <h4 class="text-capitalize">{!! $hotJob->jobTitle !!}</h4>
                                                        </a>
                                                        <h5 class="text-capitalize m-l5"><a href="{!! route('jobCompany',['id'=>$hotJob->employersID]) !!}">{!! $hotJob->companyName !!}</a></h5>
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
                                                                <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                                <li><a href="detail" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                            </ul>
                                                        </div>
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
                    @include('include.rightMenuCategorys')
                </div>
            </div>
        </div>
    </section>
@endsection
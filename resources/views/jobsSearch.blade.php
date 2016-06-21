@extends('layouts.index')
@section('title','jobs Search')
<?php
$currentJobDate=date('Y-m-d');
$currentJobStr=strtotime($currentJobDate);
?>
@section('container')
    @include('include.findJobsSection')
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="widget">
                        <div class="widget-header">
                            <h3>Option</h3>
                        </div>
                        <div class="widget-body">
                            <form action="{!! route('jobSearch') !!}" method="get">
                                <div class="form-group hidden">
                                    @if(isset($jobKeyword))
                                        <input type="hidden" name="jobKeyword" value="{!! $jobKeyword !!}">
                                    @endif
                                    @if(isset($jobLocation))
                                        <input type="hidden" name="jobLocation" value="{!! $jobLocation !!}">
                                    @endif
                                </div>
                                <div class="form-group">
                                    <h4><small>Job Type</small></h4>
                                    <div class="checkbox">
                                        <div>
                                            <input type="checkbox" {!! $fullTime !!} class="styleInput" id="FullTime" name="fullTime">
                                            <label for="FullTime"><span></span><span>Full Time</span></label>
                                        </div>
                                        <div>
                                            <input type="checkbox" {!! $partTime !!} class="styleInput" id="PartTime" name="partTime">
                                            <label for="PartTime"><span></span><span>Part Time</span></label>
                                        </div>
                                        <div>
                                            <input type="checkbox" {!! $internship !!} class="styleInput" id="Internship" name="internship">
                                            <label for="Internship"><span></span><span>Internship</span></label>
                                        </div>
                                        <div>
                                            <input type="checkbox" {!! $contractual !!} class="styleInput" id="Contractual" name="contractual">
                                            <label for="Contractual"><span></span><span>Contractual</span></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <h4><small>Experience</small></h4>
                                    <input type="range" id="ExperienceRange" name="experience" class="pointer" value="{!! $experienceGet !!}" max="10">
                                    <p class="text-center ExperienceRangeText">{!! $experienceText !!}</p>
                                </div>
                                <div class="form-group">
                                    <h4><small>Category</small></h4>
                                    <div class="checkbox">
                                            <div>
                                                <input type="radio" class="styleInput" @if($categoryGet=='any') checked @endif name="category" value="any" id="any">
                                                <label for="any"><span></span><span>All</span></label>
                                            </div>
                                        @while(list($key,$val)=each($category))
                                            <div>
                                                <input type="radio" class="styleInput" @if($categoryGet==$key) checked @endif name="category" value="{!! $key !!}" id="{!! $key !!}">
                                                <label for="{!! $key !!}"><span></span><span>{!! $val !!}</span></label>
                                            </div>
                                        @endwhile
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-success btn-block"><i class="fa fa-search"></i></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-md-12">
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
                                    {{ $jobs->appends($urlParameters)->links() }}
                                </div>
                            </div>
                        </div>
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
                        <div class="item-count">7803</div>
                        <span class="item-info">Items</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-user-plus"></i></span>
                        <div class="item-count">427</div>
                        <span class="item-info">Sellers</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-map-marker"></i></span>
                        <div  class="item-count">639</div>
                        <span class="item-info">Locations</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-counter">
                        <span class="item-icon"><i class="fa fa-users"></i></span>
                        <div class="item-count">1548</div>
                        <span class="item-info">Members</span>
                    </div>
                </div>
            </div>
        </div> <!-- / .counter -->
    </div>
    <style>
        .item .item-title h4{font-size:inherit;}

        .item .companyIconForJob{width:65px;height:65px;background:#DCDCDC;padding:2px;border-radius:5px}
        .item .item-title{width: 100%;min-height:50px;max-height:50px;}
    </style>
    <script>
        $(document).ready(function () {
            $('#ExperienceRange').change(function () {
                var value=$(this).val();
                if(value<1){
                    value=value+' Year';
                }else{
                    value=value+' Years';
                }
                $('.ExperienceRangeText').html(value);
            });
        });
    </script>
@endsection
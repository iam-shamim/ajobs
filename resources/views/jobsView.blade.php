@extends('layouts.index')
@section('container')
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-xs-12">
                            <img src="{!! url('img/institutes/5067FlU1454588100-img.jpg') !!}" class="companyInfoIcon pull-left m-r5">
                            <h2 class="no-line-height m-b0"> <small>{!! $job->companyName !!}</small></h2>
                            <p class="">{!! $job->companySummary !!}</p>
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-6 col-sm-offset-3 col-lg-offset-0">
                            <table>
                                <h2 class="m-t15"><small><strong>Details</strong></small></h2>
                                <tr><td><i class="fa fa-briefcase  m-r10"></i></td><td><strong>{!! $job->jobType!!}</strong></td></tr>
                                <tr><td><i class="fa fa-location-arrow"></i></td><td>{!! $job->jobLocation!!}</td></tr>
                                <tr><td><i class="fa fa-calendar"></i></td><td>Posted: {!! date('M d,Y',strtotime($job->jobsPosted)) !!}</td></tr>
                                <tr><td><i class="fa fa-calendar-o"></i></td><td>End: {!! date('M d,Y',strtotime($job->applicationEndDate)) !!}</td></tr>
                                <tr><td><i class="fa fa-blind"></i></td><td>Need: {!! $job->numberOfPosition!!}</td></tr>
                                <tr><td><i class="fa fa-money"></i></td><td>{!! $job->salary!!}</td></tr>
                                <tr><td><i class="fa fa-graduation-cap"></i></td><td>Experience: {!! $job->minimumExperience!!}</td></tr>
                                <tr><td><i class="fa fa-child"></i></td><td>Minimum Age: {!! $job->minimumAge!!}</td></tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    @if(session()->has('success'))
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="alert alert-success">
                                    <p>{!! session()->get('success') !!}</p>
                                </div>
                            </div>
                        </div>
                    @endif
                    <div class="row">
                        <div class="col-xs-12">
                            <h2 class="no-line-height"><small><strong>{!! $job->jobTitle !!}</strong></small></h2><hr class="m-5">
                        </div>
                        <div class="col-xs-12">
                            <div class="m-l10">
                                {!! $job->jobSummary !!}
                                {!! $job->jobDescription !!}
                            </div>
                        </div>
                        <div class="col-xs-12">
                            @if($job->others)
                                <h2 class="no-line-height"><small><strong>Other's</strong></small></h2><hr class="m-5">
                                <div class="m-l10">{!! $job->others !!}</div>
                            @endif

                        </div>
                        <div class="col-xs-12">
                            <h2 class="no-line-height"><small><strong>Application Instruction</strong></small></h2><hr class="m-5">
                            <div class="m-l10">{!! $job->applicationInstruction !!}</div>
                            <br>
                            @if(isset(Auth::user()->id) AND $job->userID==Auth::user()->id)
                                <div>
                                    <a href="{!! route('jobs.edit',$id) !!}" class="btn-sm btn-primary">Edit Job</a>
                                    @if($job->featuredJob===NULL)
                                        <a href="{!! route('jobs.featured.apply',$id) !!}" class="btn-sm btn-primary">Apply For Featured</a>
                                    @endif
                                    <a href="{!! route('jobs.destroy',$id) !!}" class="btn-sm btn-danger">Delete Job</a>
                                </div>
                            @endif
                            @if(isset(Auth::user()->id) AND (Auth::user()->userType=='Root' OR Auth::user()->userType=='Admin'))
                                <div>
                                    <a href="{!! route('jobs.remove',$id) !!}" class="btn-sm btn-danger" onclick="if(confirm('are you sure?')){return true} return false"><i class="fa fa-trash fa-1-2x"></i> Delete Job</a>
                                    @if($job->featuredJob==1)
                                        <a href="{!! route('jobs.undeclared',$id) !!}" class="btn-sm btn-success featuredSuccess">√ Declare Featured Job</a>
                                    @else
                                        <a href="{!! route('jobs.featured',$id) !!}" class="btn-sm btn-primary">Declare Featured Job</a>
                                    @endif
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <style>
        .companyInfoIcon{width:90px;height:80px;}
    </style>
    <script>
        $(document).ready(function () {
            $('.featuredSuccess').hover(function () {
                $(this).html('Undeclared Featured Job');
            });
            $('.featuredSuccess').mouseleave(function () {
                $(this).html('√ Declare Featured Job');
            });
        });
    </script>
@endsection
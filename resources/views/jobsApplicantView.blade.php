@extends('layouts.index')
@section('title',$pageTitle)
@section('container')
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileMyJob','active-profile')
                @include('include.profileLeftMenuJobs')
                <div class="col-md-9 col-sm-9">
                    @include('include.errorSection')
                </div>
                <div class="col-md-9 col-sm-9">
                    <div class="widget">
                        <div class="widget-header">
                            {!! $pageTitle !!}
                        </div>
                        <div class="widget-body">
                            <div class="m-b5 m-l5">Job Name: <a href="{!! route('jobs.view',$job->id) !!}"> {!! $job->jobTitle !!}</a></div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a href="{!! route('profile.view.about',$value->userID) !!}">{!! $value->firstName.' '.$value->middleName.' '.$value->lastName !!}</a>
                                            @if($value->status==='Applied')
                                                <small><span class="label label-default">New</span></small></h3>
                                        @endif
                                    </div>
                                    <div class="panel-body">
                                        <p>{!! $value->coverLetter !!}</p>
                                        <?php
                                        $fileNameExp=explode('.',$value->attachedResume);
                                        $ext=end($fileNameExp);
                                        ?>
                                        <p class="m-t15">
                                            @if(isset($value->attachedResume) AND $ext==='pdf')
                                                <a href="{!! url('resume/'.$value->attachedResume) !!}" class="m-r15" target="_blank"><i class="fa fa-eye"></i> View Resume</a>
                                            @endif
                                            @if(isset($value->attachedResume) AND file_exists('resume/'.$value->attachedResume))
                                                <a href="{!! url('resume/'.$value->attachedResume) !!}" download=""><i class="fa fa-download"></i> Download Resume</a>
                                            @endif
                                        </p>
                                    </div>
                                    <div class="panel-footer">
                                        @if($value->status==='ShortListed')
                                            <a class="btn-sm btn-success pointer shortList" action-type="remove" href="{!! route('applicant.shortList',$value->applicantsID) !!}" data-token="{!! csrf_token() !!}">√ Short Listed</a>
                                        @else
                                            <a class="btn-sm btn-primary pointer shortList" action-type="add" href="{!! route('applicant.shortList',$value->applicantsID) !!}" data-token="{!! csrf_token() !!}">Short List</a>
                                        @endif
                                        @if($value->status==='Rejected')
                                            <a class="btn-sm btn-danger pointer reject" action-type="remove" href="{!! route('applicant.reject',$value->applicantsID) !!}" data-token="{!! csrf_token() !!}">√ Rejected</a>
                                        @else
                                            <a class="btn-sm btn-primary pointer reject" action-type="add" href="{!! route('applicant.reject',$value->applicantsID) !!}" data-token="{!! csrf_token() !!}">Reject</a>
                                        @endif
                                        @if($value->interviewID)
                                            <a class="btn-sm btn-success pointer interviewSuccess" href="{!! route('interview.view',['jobsID'=>$job->id,'interviewID'=>$value->interviewID]) !!}">√ Interview</a>
                                        @endif
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        $(document).ready(function () {
            $('.interviewSuccess').hover(function () {
                $(this).text('View Interview');
            });
            $('.interviewSuccess').mouseout(function () {
                $(this).text('√ Interview');
            });
        });
    </script>
@endsection
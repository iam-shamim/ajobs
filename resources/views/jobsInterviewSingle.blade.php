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
                                            @if($value->seenByApplicant)
                                                <i class="fa fa-check-circle" title="seen"></i>
                                            @else
                                                <i class="fa fa-circle-thin" title="unseen"></i>
                                            @endif
                                            <a href="{!! route('profile.view.about',$value->userID) !!}">{!! $value->firstName.' '.$value->middleName.' '.$value->lastName !!}</a>
                                        </h3>
                                    </div>
                                    <div class="panel-body">
                                        <p>{!! $value->interviewInfo !!}</p>
                                        <div>
                                            <p>
                                                <span class="m-r10"><strong>Date: </strong> {!! date('d-m-Y',strtotime($value->interviewDate)) !!} </span>
                                                <span class="m-r10"><strong>Time: </strong>{!! $value->interviewTime !!}</span>
                                                <span><strong>Type: </strong>{!! $value->interviewType !!}</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <a class="btn-sm btn-primary pointer" href="{!! route('applicant.view',['jobsID'=>$job->id,'applicantID'=>$value->job_applicantID]) !!}" ><i class="fa fa-eye"></i> Application</a>
                                        <a class="btn-sm btn-primary pointer" href="{!! route('interview.edit',$value->interviewID) !!}" ><i class="fa fa-pencil-square-o"></i> Edit</a>
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
            $('.shortList').click(function (event) {
                var actionTo=$(this).attr('href');
                var actionType=$(this).attr('action-type');
                var token=$(this).attr('data-token');
                $.ajax({
                    context:this,
                    url:actionTo,
                    type: 'post',
                    data: {actionType:actionType,_token:token},
                    beforeSend:function() {
                        $(this).html('Loading...');
                    },
                    success: function( msg ) {
                        if(actionType=='add'){
                            $(this).html('√ Short Listed');
                            $(this).addClass('btn-success');
                            $(this).attr('action-type','remove');
                            $(this).removeClass('btn-primary');
                        }else if(actionType=='remove'){
                            $(this).html('Short List');
                            $(this).addClass('btn-primary');
                            $(this).removeClass('btn-success');
                            $(this).attr('action-type','add');
                        }

                    }
                }).fail(function () {
                    $(this).html('Short List');
                });
                return false;
            })
            $('.reject').click(function (event) {
                var actionTo=$(this).attr('href');
                var actionType=$(this).attr('action-type');
                var token=$(this).attr('data-token');
                $.ajax({
                    context:this,
                    url:actionTo,
                    type: 'post',
                    data: {actionType:actionType,_token:token},
                    beforeSend:function() {
                        $(this).html('Loading...');
                    },
                    success: function( msg ) {
                        if(actionType=='add'){
                            $(this).html('√ Rejected');
                            $(this).addClass('btn-danger');
                            $(this).attr('action-type','remove');
                            $(this).removeClass('btn-primary');
                        }else if(actionType=='remove'){
                            $(this).html('Reject');
                            $(this).addClass('btn-primary');
                            $(this).removeClass('btn-danger');
                            $(this).attr('action-type','add');
                        }

                    }
                }).fail(function () {
                    $(this).html('Short List');
                });
                return false;
            })
        });
    </script>
@endsection
@extends('layouts.index')
@section('title','Short List')
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
                           Short List
                        </div>
                        <div class="widget-body">
                            <div class="m-b5 m-l5">Job Name: <a href="{!! route('jobs.view',$job->id) !!}"> {!! $job->jobTitle !!}</a></div>
                            @foreach($applicant AS $value)
                                <div class="panel panel-default" id="{!! $value->applicantsID !!}">
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
                                            <a class="btn-sm btn-primary pointer reject" applicant-id="{!! $value->applicantsID !!}" action-type="add" href="{!! route('applicant.reject',$value->applicantsID) !!}" data-token="{!! csrf_token() !!}">Reject</a>
                                        @endif
                                            <a class="btn-sm btn-primary pointer" href="{!! route('interview.create',['jobsID'=>$job->id,'applicantID'=>$value->applicantsID]) !!}">Interview</a>

                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="text-center">
                        {!! $applicant->links() !!}
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
                var applicantID=$(this).attr('applicant-id');
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
                            $('#'+applicantID).fadeOut();
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
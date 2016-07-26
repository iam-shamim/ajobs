@extends('layouts.index')
@section('title','Interview List')
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
                            Interview  List
                        </div>
                        <div class="widget-body">
                            <div class="m-b5 m-l5">Job Name: <a href="{!! route('jobs.view',$job->id) !!}"> {!! $job->jobTitle !!}</a></div>
                            @foreach($interviews AS $value)
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
                            @endforeach
                        </div>
                    </div>
                    <div class="text-center">
                        {!! $interviews->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
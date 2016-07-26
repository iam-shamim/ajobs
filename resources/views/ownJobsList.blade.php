@extends('layouts.index')
@section('title','My Jobs')
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
                            My Jobs
                        </div>
                        <div class="widget-body">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td width="5%">S/L</td>
                                        <td>Job Name</td>
                                        <td width="5%" title="Applications">App..</td>
                                        <td width="5%" title="Short List">Sho..</td>
                                        <td width="5%" title="Interview">Int..</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($jobs AS $key=>$val)
                                        <tr>
                                            <td>{!! ++$sl !!}</td>
                                            <td>
                                                <a href="{!! route('jobs.view',$val->jobID) !!}">{!! $val->jobTitle !!}</a>
                                                @if(isset($unseen[$val->jobID]))
                                                    <a href="{!! route('new.applicant',$val->jobID) !!}"><span class="myBadge text-danger" title="Unseen Job Application">{!! $unseen[$val->jobID] !!}</span></a>
                                                @endif
                                            </td>
                                            <td><a href="{!! route('my.applicant',$val->jobID) !!}">{!! $val->applicantsCount !!}</a></td>
                                            <td><a href="{!! route('applicant.shortList.view',$val->jobID) !!}">{!! (isset($shortList[$val->jobID]))?$shortList[$val->jobID]:'0' !!}</a></td>
                                            <td><a href="{!! route('jobs.interview.list',$val->jobID) !!}">{!! (isset($interviewsCount[$val->jobID]))?$interviewsCount[$val->jobID]:'0' !!}</a></td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div class="text-center">
                                {!! $jobs->links() !!}
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection
@extends('layouts.index')
@section('title','My Jobs')
@section('container')
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileMyJob','active-profile')
                @include('include.profileLeftMenuJobSeeker')
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
                                        <td width="5%">#</td>
                                        <td>Job Name</td>
                                        <td title="Job Status">Status</td>
                                        <td title="Job Status" width="10%">Interview</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $applicantsVal=$applicants->items();
                                    ?>
                                    @while(list($key,$val)=each($applicantsVal))
                                        <tr>
                                            <td>{!! ++$sl !!}</td>
                                            <td><a href="{!! route('jobs.view',$val->jobID) !!}">{!! $val->jobTitle !!}</a></td>
                                            <td>{!! preg_replace('/[[:upper:]]+/',' $0',$val->status) !!}</td>
                                            <td>
                                                @if($val->interviewID)
                                                    <a href="{!! route('my.jobs.interview',$val->interviewID) !!}"><i class="fa fa-check-circle text-success"></i></a>
                                                @else
                                                    <i class="fa fa-circle-o text-success"></i>
                                                @endif
                                            </td>
                                        </tr>
                                    @endwhile
                                </tbody>
                            </table>
                            <div class="text-center">
                                {!! $applicants->links() !!}
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection
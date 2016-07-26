@extends('layouts.index')
@section('title','My Interview')
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
                            My Interview
                        </div>
                        <div class="widget-body">
                            <p><strong>Job Name:</strong> <a href="{!! route('jobs.view',$job->id) !!}">{!! $job->jobTitle !!}</a></p>
                            <p><span class="m-r15"><strong>Date: </strong>{!! date('d-m-Y',strtotime($interview->interviewDate)) !!}</span><span class="m-l15 m-r15"><strong>Time: </strong>{!! $interview->interviewTime !!}</span><span class="m-l15"><strong>Interview Type: </strong>{!! $interview->interviewType !!}</span></p>
                            <p>{!! $interview->interviewInfo !!}</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection
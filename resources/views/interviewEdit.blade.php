@extends('layouts.index')
@section('title','Interview Edit')
@section('container')
    <link rel="stylesheet" href="{!! url('plugins/jquery-ui/jquery-ui.css') !!}" />
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
                            Interview Edit
                        </div>
                        <div class="widget-body">
                            <form action="{!! route('interview.update',$interview->id) !!}" method="post">
                                <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                <div class="form-group">
                                    <strong>To: </strong>
                                    <a href="{!! route('profile.view.about',$profile->userID) !!}">{!! $profile->firstName.' '.$profile->middleName.' '.$profile->lastName !!}</a>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group m-t10">
                                            <label for="interviewDate">Interview Date:</label>
                                            <input type="text" class="form-control interviewDate" id="interviewDate" value="{!! date('d-m-Y',strtotime($interview->interviewDate)) !!}" name="interviewDate">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group m-t10">
                                            <label for="interviewTime">Interview Time</label>
                                            <input type="text" class="form-control" id="interviewTime" name="interviewTime" value="{!! $interview->interviewTime !!}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group m-t10">
                                            <label for="interviewType">Interview Type</label>
                                            <select name="interviewType" id="interviewType" class="form-control">
                                                <option value="Call" {!!  ($interview->interviewType=='Call')?'selected':null !!}>Call</option>
                                                <option value="Email" {!! ($interview->interviewType=='Email')?'selected':null !!}>Email</option>
                                                <option value="OnlineTest" {!! ($interview->interviewType=='OnlineTest')?'selected':null !!}>Online Test</option>
                                                <option value="InPerson" {!! ($interview->interviewType=='InPerson')?'selected':null !!}>In Person</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="interviewInfo">Interview Info</label>
                                            <textarea name="interviewInfo" id="interviewInfo" class="form-control" rows="10">{!! $interview->interviewInfo !!}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <button class="form-control btn-success">Send</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <script src="{!! url('plugins/jquery-ui/jquery-ui.min.js') !!}"></script>
    <script>
        $(function() {
            $( ".interviewDate" ).datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd-mm-yy'

            });
        });
    </script>
    <style>
        #interviewType option[selected]{color:green;}
    </style>
@endsection
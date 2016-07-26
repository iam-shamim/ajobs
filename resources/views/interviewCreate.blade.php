@extends('layouts.index')
@section('title','New Interview')
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
                            New Interview
                        </div>
                        <div class="widget-body">
                            <form action="{!! route('interview.store',['jobsID'=>$jobsID,'applicantID'=>$applicantID]) !!}" method="post">
                                <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                <div class="form-group">
                                    <strong>To: </strong>
                                    <a href="{!! route('profile.view.about',$profile->userID) !!}">{!! $profile->firstName.' '.$profile->middleName.' '.$profile->lastName !!}</a>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group m-t10">
                                            <label for="interviewDate">Interview Date:</label>
                                            <input type="text" class="form-control interviewDate" id="interviewDate" value="{!! old('interviewDate') !!}" name="interviewDate">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group m-t10">
                                            <label for="interviewTime">Interview Time</label>
                                            <input type="text" class="form-control" id="interviewTime" name="interviewTime" value="{!! old('interviewTime') !!}">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group m-t10">
                                            <label for="interviewType">Interview Type</label>
                                            <select name="interviewType" id="interviewType" class="form-control">
                                                <option value="Call">Call</option>
                                                <option value="Email">Email</option>
                                                <option value="OnlineTest">Online Test</option>
                                                <option value="InPerson">In Person</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="interviewInfo">Interview Info</label>
                                            <textarea name="interviewInfo" id="interviewInfo" class="form-control" rows="10">{!! old('interviewInfo') !!}</textarea>
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
@endsection
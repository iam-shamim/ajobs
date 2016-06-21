@extends('layouts.index')
@section('title','New Interview')
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
                            New Interview
                        </div>
                        <div class="widget-body">
                            <div class="form-group">
                                <strong>To: </strong>
                                <a href="{!! route('profile.view.about',$profile->userID) !!}">{!! $profile->firstName.' '.$profile->middleName.' '.$profile->lastName !!}</a>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group m-t10">
                                        <label for="interviewDate">Interview Date:</label>
                                        <input type="text" class="form-control" id="interviewDate" name="interviewDate">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group m-t10">
                                        <label for="interviewTime">Interview Time</label>
                                        <input type="text" class="form-control" id="interviewTime" name="interviewTime">
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
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection
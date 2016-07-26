@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css" />
    <section class="main no-padding">
        <div class="account-header">
            <div class="container">
                <div class="row">
                    @if(Auth::check())

                    @endif
                    <div class="col-sm-4 col-md-3 col-lg-2">
                        <!-- User avatar  -->
                        <div class="profile_avatar">
                            <img src="{!! url('img/people/'.$data->profilePic) !!}" alt="avatar" class="img-responsive" id="show">
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-9 col-lg-10">
                        <div class="profile_summary">
                            <!-- User name -->
                            <h3 class="profile_name">{!! $data->firstName !!} {!! $data->middleName !!} {!! $data->lastName !!}</h3>
                            <!-- User status -->
                            <p>{!! $data->summary !!}</p>
                        </div> <!-- / .profile__summary -->
                    </div>
                </div> <!-- / .row -->
            </div> <!-- / .container -->
        </div>
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileCompany','active-profile')
                @include('include.profileLeftMenuView')
                <div class="col-md-9 col-sm-9">
                    @if($myCompany)
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse">Company</a> </h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-5 col-md-6 col-lg-7">
                                        <h1><small><a href="{!! route('jobCompany',$myCompany->companieID) !!}">{!! $myCompany->companyName !!}</a></small></h1>
                                        <p class="pull-left m-r15">City: {!! $myCompany->city !!}</p>
                                        <p class="pull-left m-r15 m-l10">District: {!! $myCompany->district !!}</p>
                                        <p class=" m-l10">Post Code: {!! $myCompany->postcode !!}</p>
                                        <p>{!! $myCompany->address !!}</p>
                                    </div>
                                    <div class="col-sm-5 col-md-4 col-lg-3">
                                        <div class="institute_avatar">
                                            <div class="form-group">
                                                <img src="{!! $myCompany->logo !!}"  alt="Company Logo" class="img-responsive" id="showInstituteImage">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <p>{!! $myCompany->companySummary !!} </p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <label><strong><i class="fa fa-envelope-o"></i> Email: </strong></label>
                                        <p>{!! $myCompany->email !!}</p>
                                    </div>
                                    <div class="col-md-4">
                                        <label><strong><i class="fa fa-internet-explorer"></i> Website: </strong></label>
                                        <p>{!! $myCompany->website !!}</p>
                                    </div>
                                    <div class="col-md-3">
                                        <label><strong><i class="fa fa-phone"></i> Phone: </strong></label>
                                        <p>{!! $myCompany->phone !!}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
@endsection
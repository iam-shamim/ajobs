@extends('layouts.index')
@section('container')
    <section class="main no-padding">
        @include('include/profileHeaderView')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfile','active-profile')
                @include('include.profileLeftMenuView')
                <div class="col-md-9 col-sm-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse">Profile </a> </h4>
                        </div>
                        <div class="form-horizontal">
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Email</label>
                                    <div class="col-sm-9">
                                        <input type="email" required="required" name="email"  value="{!! $data->email !!}" maxlength="100" readonly class="form-control"  >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">First Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="firstName"  value="{!! $data->firstName !!}" readonly class="form-control" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Middle Name</label>
                                    <div class="col-sm-9">
                                        <input type="text"  name="middleName"  value="{!! $data->middleName !!}" readonly class="form-control" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Last Name</label>
                                    <div class="col-sm-9">
                                        <input type="text"name="lastName"  value="{!! $data->lastName !!}" readonly class="form-control" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Phone</label>
                                    <div class="col-sm-9">
                                        <input type="tel" name="phone"  value="{!! $data->phone !!}" maxlength="100" readonly class="form-control" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Date of Birth</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="datepicker" name="birthDay" readonly   value="{!! date('d-m-Y',strtotime($data->DOB))!!}" maxlength="100" class="form-control" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Gender</label>
                                    <div class="col-sm-9 m-t5">
                                        <input type="text" id="datepicker" name="birthDay" readonly   value="{!! $data->gender!!}" maxlength="100" class="form-control" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Summary</label>
                                    <div class="col-sm-9">
                                        <textarea name="summary" id="" class="form-control" cols="70" readonly rows="7">{!! $data->summary !!}</textarea>
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
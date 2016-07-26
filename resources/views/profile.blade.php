@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="{!! url('plugins/jquery-ui/jquery-ui.css') !!}" />
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfile','active-profile')
                @include('include.profileLeftMenu')
                <div class="col-md-9 col-sm-9">
                    @if($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach($errors->all() as $error)
                                    <li>{!! $error !!}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                </div>
                <div class="col-md-9 col-sm-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> My Profile </a> </h4>
                        </div>

                        <form accept-charset="utf-8" method="post" enctype="multipart/form-data" action="{!! route('profile.update') !!}" id="UserProfileForm" class="form-horizontal">
                            <input type="hidden" name="_method" value="put">
                            <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Email</label>
                                    <div class="col-sm-9">
                                        <input type="email" required="required" name="email"  value="{!! $data->email !!}" maxlength="100" class="form-control"  >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">First Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="firstName"  value="{!! $data->firstName !!}" class="form-control" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Middle Name</label>
                                    <div class="col-sm-9">
                                        <input type="text"  name="middleName"  value="{!! $data->middleName !!}" class="form-control" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Last Name</label>
                                    <div class="col-sm-9">
                                        <input type="text"name="lastName"  value="{!! $data->lastName !!}" class="form-control" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Phone</label>
                                    <div class="col-sm-9">
                                        <input type="tel" name="phone"  value="{!! $data->phone !!}" maxlength="100" class="form-control" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Date of Birth</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="datepicker" name="birthDay"   value="@if($data->DOB){!! date('d-m-Y',strtotime($data->DOB))!!}@endif" maxlength="100" class="form-control" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Gender</label>
                                    <div class="col-sm-9 m-t5">
                                        <input type="radio" value="M" name="gender" class="styleInput" id="male" {!! $data->genderMale !!}><label for="male" class="m-r15">Male <span></span> </label>
                                        <input type="radio" value="F" name="gender" class="styleInput" id="female" {!! $data->genderFemale !!}><label for="female" class="m-r15">Female <span></span></label>
                                        <input type="radio" value="Other" name="gender" class="styleInput" id="other" {!! $data->genderOthers !!}><label for="other">Other <span></span></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-3 control-label">Profile Picture</label>
                                    <div class="col-sm-9 m-t5">
                                        <input type="file" class="filestyle" name="profilePic" onchange="loadFile(event)">
                                        <span class="help-block"></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Summary</label>
                                    <div class="col-sm-9">
                                        <textarea name="summary" id="" class="form-control" cols="70" rows="7">{!! $data->summary !!}</textarea>
                                    </div>
                                </div>

                            </div>
                            <div class="panel-footer">
                                <div class="row">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <button type="submit" class="btn btn-custom"><i class="fa fa-save"></i> Save Update</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="{!! url('plugins/filestyle/bootstrap-filestyle.min.js') !!}"></script>
    <script src="{!! url('plugins/jquery-ui/jquery-ui.min.js') !!}"></script>
    <script>
        $(function() {
            $( "#datepicker" ).datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd-mm-yy'

            });
        });
    </script>
    <script>
        var loadFile = function(event) {
            var showFunc = document.getElementById('show');
            showFunc.src = URL.createObjectURL(event.target.files[0]);
        };
    </script>
@endsection
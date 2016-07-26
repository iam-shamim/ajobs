@extends('layouts.index')
@section('container')
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuSettingGeneral','active-profile')
                @include('include.profileLeftMenuSettings')

                <div class="col-md-9 col-sm-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse">General Account Settings</a> </h4>
                        </div>
                        <div class="panel-body">
                            <form action="{!! route('userName.update') !!}" method="post">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse">User Name</a> </h4>
                                    </div>
                                    <div class="panel-body">
                                        <p class="userNameText">{!! Auth::user()->userName !!}</p>
                                        <label for="userName" class="userNameLabel text-danger" style="display:none"></label>
                                        <input type="text" name="userName" id="userName" class="form-control" style="display:none" value="{!! Auth::user()->userName !!}">
                                    </div>
                                    <div class="panel-footer">
                                        <span class="btn btn-xs btn-custom userNameEdit"><i class="fa fa-pencil-square"></i> Edit</span>
                                        <span class="btn  btn-xs userNameCancel btn-warning userNameUpdateCancel" style="display:none"><i class="fa fa-ban"></i> Cancel</span>
                                        <button class="btn  btn-xs btn-custom userNameUpdate" action-to="{!! route('userName.update') !!}" data-token="{!! csrf_token() !!}" style="display:none"><i class="fa fa-pencil"></i> <span class="userNameUpdateText">Update</span></button>
                                    </div>
                                </div>
                            </form>
                            <form action="{!! route('password.update') !!}" method="post">
                                <input type="hidden" name="_method" value="put">
                                <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse">Change password</a> </h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-xs-12">
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
                                        @if(Session::has('success'))
                                            <div class="alert alert-success">
                                                <p>password updated successfully</p>
                                            </div>
                                        @endif
                                        <div class="">
                                            <div class="form-group">
                                                <label for="oldPassword">Old password</label>
                                                <input type="password" name="oldPassword" class="form-control" id="oldPassword">
                                            </div>
                                            <div class="form-group">
                                                <label for="newPassword">New password</label>
                                                <input type="password" name="password" class="form-control" id="newPassword">
                                            </div>
                                            <div class="form-group">
                                                <label for="confirmPassword">Confirm password</label>
                                                <input type="password" name="password_confirmation" class="form-control" id="confirmPassword">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <button class="btn btn-xs btn-custom"><i class="fa fa-pencil"></i> Update</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        $(document).ready(function(){
            $('.userNameEdit').click(function(){
                $('.userNameText').fadeOut(0,function () {
                    $('[name=userName]').fadeIn(0);
                    $('.userNameEdit').fadeOut(0,function () {
                        $('.userNameUpdateCancel').fadeIn(0);
                        $('.userNameUpdate').fadeIn(0);
                    });
                });
            });
            $('.userNameUpdateCancel').click(function(){
                if($(this).hasClass('disabled')){
                    return false;
                }
                var userName=$('.userNameText').html();
                $('[name=userName]').fadeOut(0,function () {
                    $(this).val(userName);
                    $('.userNameText').fadeIn(0);
                    $('.userNameUpdateCancel').fadeOut(0);
                    $('.userNameUpdate').fadeOut(0);
                    $('.userNameEdit').fadeIn(5);
                });

            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $('.userNameUpdate').click(function (event) {
                console.log('alert');
                var actionTo=$(this).attr('action-to');
                var token=$(this).attr('data-token');
                var userName=$('[name=userName]').val();
                $.ajax({
                    url:actionTo,
                    type: 'post',
                    data: {_method: 'put',_token:token,userName:userName},
                    beforeSend:function() {
                        $('.userNameUpdate').addClass('disabled');
                        $('.userNameCancel').addClass('disabled');
                        $('.userNameUpdateText').html('loadin.....');
                    },
                    success: function( msg ) {

                    }
                }).done(function (data) {
                    var userName=$('.userNameText').html();
                    $('.userNameText').html($('[name=userName]').val());
                    $('[name=userName]').fadeOut(0,function () {
                        $('.userNameText').fadeIn(0);
                        $('.userNameUpdateCancel').fadeOut(0);
                        $('.userNameUpdate').fadeOut(0);
                        $('.userNameEdit').fadeIn(5);
                    });
                    $('.userNameUpdate').removeClass('disabled');
                    $('.userNameCancel').removeClass('disabled');
                    $('.userNameUpdateText').html('Update');
                }).fail(function (data) {
                    var msg=data.responseJSON.msg;
                    $('.userNameLabel').html(msg);
                    $('.userNameLabel').fadeIn(0);
                    $('.userNameUpdate').removeClass('disabled');
                    $('.userNameCancel').removeClass('disabled');
                    $('.userNameUpdateText').html('Update');
                });
                return false;
            })
        });
    </script>
@endsection
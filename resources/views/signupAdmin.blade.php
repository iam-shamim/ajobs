@extends('layouts.index')
@section('container')
    <section class="main">
        <div class="container">
            <div class="row m-t5">
                <div class="col-sm-5 login-form">
                    @include('include.errorSection')
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5 login-form">
                    <div class="panel panel-default">
                        <form method="post" action="{!! route('signUp.admin.action') !!}">
                            <div class="panel-intro text-center">
                                <h1 class="logo"><i class="fa fa-recycle"></i> {!! trans('common.appName') !!}</h1>
                                <h2 class="no-line-height no-margin"><small>Create Admin</small></h2>
                            </div>
                            <div class="panel-body">
                                    @if(session()->has('success'))
                                        <div class="alert alert-success">
                                            <p>{!! session()->get('success') !!}</p>
                                        </div>
                                    @endif
                                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                    <div class="form-group">
                                        <input type="text" placeholder="User Name" value="{!! old('userName') !!}" name="userName" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Email" name="email" value="{!! old('email') !!}" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" placeholder="Password" name="password" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" placeholder="Confirm password" name="password_confirmation" class="form-control input-lg">
                                    </div>

                            </div>
                            <div class="panel-footer">
                                <div style=" clear:both"></div>
                                <div class="form-group">
                                    <button class="btn btn-bwlock btn-custom">Sign Up</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@extends('layouts.index')
@section('container')
    <section class="main">
        <div class="container">
            <div class="row m-t5">
                <div class="col-sm-5 login-form">
                    @if($errors->any())
                        <div class="alert alert-danger p-l0">
                            <ul>
                                @foreach($errors->all() as $error)
                                    <li>{!! $error !!}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5 login-form">
                    <div class="panel panel-default">
                        <div class="panel-intro text-center">
                            <h1 class="logo"><i class="fa fa-recycle"></i> {!! trans('common.appName') !!}</h1>
                            @if($type==='company')
                                <h2 class="text-center"><small>Create a Company Account</small></h2>
                            @endif
                        </div>
                        <div class="panel-body">
                            @if($type==='company')
                                <form method="post" action="{!! route('signUp.action') !!}/company">
                            @else
                                <form method="post" action="{!! route('signUp.action') !!}">
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
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label for="terms" class="string optional">
                                            <input type="checkbox" name="Agree" id="terms" value="Agree">
                                            I Agree with Term and Conditions
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <button class="btn btn-bwlock btn-custom">Sign Up</button>
                                </div>
                                @if(!$type)
                                    <div class="text-center">
                                        <a href="{!! route('signup.create') !!}/company" class="btn btn-success">
                                            <i class="fa fa-university"></i>
                                            I want to post a job
                                        </a>
                                    </div>
                                    <hr>
                                    <div><p class="text-center">Sing Up With</p></div>
                                    <div class="text-center">
                                        <a href="{!! route('socialite.index','facebook') !!}" class="m-r10"><i class="fa fa-facebook-official fa-2x"></i></a>
                                        <a href="{!! route('socialite.index','google') !!}" class="m-r10"><i class="fa fa-google fa-2x"></i></a>
                                        <a href="{!! route('socialite.index','twitter') !!}"><i class="fa fa-twitter fa-2x"></i></a>
                                        <a href="{!! route('socialite.index','linkedin') !!}" class="m-r10"><i class="fa fa-linkedin fa-2x"></i></a>
                                        <a href="{!! route('socialite.index','github') !!}" class="m-r10"><i class="fa fa-github fa-2x"></i></a>
                                    </div>
                                @endif
                            </form>
                        </div>
                        <div class="panel-footer">
                            <p class="text-center pull-right"> <a href="{!! url('/login') !!}"> Have an account? </a> </p>
                            <div style=" clear:both"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
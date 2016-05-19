@extends('layouts.index')
@section('title','Password reset link')
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
            @if(isset($status))
                <div class="row">
                    <div class="col-sm-5 login-form">
                        <div class="panel panel-default">
                            <div class="panel-intro text-center">
                                <h1 class="logo"><i class="fa fa-recycle"></i> {!! trans('common.appName') !!}</h1>
                            </div>
                            <div class="panel-body">
                                <form method="post" action="{!! route('password.reset.action') !!}">
                                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                    <input type="hidden" name="_reset" value="{!! $resetLink !!}">
                                    <div class="form-group">
                                        <input type="password" placeholder="Password" title="Password" name="password" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" placeholder="Confirm password" title="Confirm password" name="confirmPassword" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-block btn-custom">
                                            <i class="fa fa-envelope"></i>
                                            Send Password Reset Link
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            @endif

        </div>
    </section>
@endsection
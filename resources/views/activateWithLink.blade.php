@extends('layouts.index')
@section('container')
    <section class="main">
        <div class="container">
            <div class="row m-t5">

            </div>
            <div class="row">
                <div class="col-sm-5 login-form">
                    <div class="panel panel-default">
                        <div class="panel-intro text-center">
                            <h1 class="logo"><i class="fa fa-recycle"></i> {!! trans('common.appName') !!}</h1>
                        </div>
                        <div class="panel-body">
                            @include('include.errorSection')
                            @if($success===true)
                                <div class="panel panel-default">
                                    <div class="panel-heading text-center">Account Activated</div>
                                    <div class="panel-body">
                                        <h1 class="text-center">
                                            <small class="text-success">
                                                <i class="fa fa-thumbs-up"></i>
                                                Thank You
                                            </small>
                                        </h1>
                                        <p class="text-center">Your <strong>{!! $userName !!}</strong> account has successfully activated.</p>
                                        <p class="text-center">Click on <a href="{!! route('login.create') !!}" class="text-success"><strong>login</strong></a> to get access to your account</p>

                                    </div>
                                    <div class="panel-footer">
                                        <div class="text-center p-0">
                                            <a href="{!! url('') !!}" class="btn text-center"><span class="glyphicon glyphicon-home"></span> Back to Home</a>
                                        </div>
                                    </div>
                                </div>

                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
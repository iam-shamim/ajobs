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
                        <div class="panel-intro text-center">
                            <h1 class="logo"><i class="fa fa-recycle"></i> {!! trans('common.appName') !!}</h1>
                        </div>
                        <div class="panel-body">
                            <form method="post" action="{!! route('login.activation') !!}">
                                <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                <div class="form-group">
                                    <input type="text" placeholder="Activation Code" title="Activation Code" name="activationCode" class="form-control input-lg">
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-block btn-custom">Active</button>
                                </div>
                            </form>
                        </div>
                        <div class="panel-footer">

                            <p class="text-center pull-right"> <a href="{!! session('resend') !!}" data-token="{!! csrf_token() !!}" class="resendMail" onclick="return false;">Resend Activation Code</a> </p>
                            <div style=" clear:both"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        $(document).ready(function () {
            $('.resendMail').click(function () {
                var actionTo=$(this).attr('href');
                var token=$(this).attr('data-token');
                $.ajax({
                    url:actionTo,
                    type: 'post',
                    data: {_token:token},
                    beforeSend:function() {
                        $('.resendMail').html('Sending...');
                    },
                    success: function( msg ) {
                        $('.resendMail').html('Resend Activation Code');
                    }
                }).fail(function () {
                    $('.resendMail').html('Resend Activation Code');
                });
                return false;
            });
        })
    </script>
@endsection
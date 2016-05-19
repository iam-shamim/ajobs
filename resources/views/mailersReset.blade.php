@extends('layouts.index')
@section('container')
    <section class="main">
        <div class="container">
            <div class="row m-t5">
                <div class="col-sm-8 col-xs-offset-2">
                    <div class="alert alert-info">
                        <h2><small>Reset your password</small></h2>
                        <p>Click <strong><a href="{!! $resetLink !!}"> here </a></strong>to reset your password.</p>
                        <p>{!! $resetLink !!}</p>
                        <p class="m-t10 text-center">Nurun Nob Shamim</p>
                        <p class="text-center">From</p>
                        <p class="text-center"><a href="{!! url('/') !!}">Amar Jobs</a></p>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection
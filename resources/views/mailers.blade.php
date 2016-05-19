@extends('layouts.index')
@section('container')
    <section class="main">
        <div class="container">
            <div class="row m-t5">
                <div class="col-sm-8 col-xs-offset-2">
                    <div class="alert alert-info">
                        <h2><small>Confirm Your Email Address</small></h2>
                        <p>A confirmation email has bin sent to {!! $mailTo !!}. Click on the confirmation link in the email to activate your account.</p>
                        <p>Activate with code: {!! $activeCode !!} or <a href="{!! $activeLink !!}" class="btn btn-primary">Click</a> this link.</p>
                        <p class="m-t10 text-center">Nurun Nob Shamim</p>
                        <p class="text-center">From</p>
                        <p class="text-center"><a href="{!! url('/') !!}">Amar Jobs</a></p>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection
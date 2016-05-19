@extends('layouts.index')
@section('container')
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 notFoundMain text-center">
                   <img src="{!! url('img/404-not-found.png') !!}" class="img-responsive">
                    <h1><a href="{!! url('') !!}" class="btn text-center"><span class="glyphicon glyphicon-home"></span> Back to Home</a></h1>
                </div>
            </div>
        </div>
    </section>
@endsection
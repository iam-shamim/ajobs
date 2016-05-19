@extends('layouts.index')
@section('container')
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 notFoundMain text-center">
                    <h1><small class="text-danger">This job May be deleted by user or expiry date over.</small></h1>
                    <h1><a href="{!! url('') !!}" class="btn text-center"><span class="glyphicon glyphicon-home"></span> Back to Home</a></h1>
                </div>
            </div>
        </div>
    </section>
@endsection
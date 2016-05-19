@extends('layouts.index')
@section('container')
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('demo','active-profile')
                @include('include.profileLeftMenuJobs')
                <div class="col-md-9 col-sm-9">

                </div>
            </div>
        </div>
    </section>
@endsection
@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css" />
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileRecommendation','active-profile')
                @include('include.profileLeftMenu')
                <div class="col-md-9 col-sm-9">
                    @foreach($recommendation AS $key=>$val)
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title p-b10">
                                    <a href="{!! route('profile.view.profile',$val->userID) !!}">{!! $val->firstName !!} {!! $val->middleName !!} {!! $val->lastName!!}</a>
                                </h4>

                            </div>
                            <div class="panel-body">
                                <p>{!! $val->recommendationText !!}</p>
                            </div>
                        </div>
                    @endforeach
                    <div class="text-center">
                        {!! $recommendation->render() !!}
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@extends('layouts.index')
@section('title','Notifications')
@section('container')
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileMyJob','active-profile')
                @include('include.profileLeftMenuJobSeeker')
                <div class="col-md-9 col-sm-9">
                    @include('include.errorSection')
                </div>
                <div class="col-md-9 col-sm-9">
                    <div class="widget">
                        <div class="widget-header">
                            Notifications
                        </div>
                        <div class="widget-body">
                            <div class="list-group">
                                @foreach($notifications AS $val)
                                    <a href="{!! $val->url !!}?notificationDelete=true" class="list-group-item">{!! $val->notificationText !!}</a>
                                @endforeach
                            </div>
                            <div class="text-center">
                                {!! $notifications->links() !!}
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection
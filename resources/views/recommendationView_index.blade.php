@extends('layouts.index')
@section('container')
    <section class="main no-padding">
        @include('include.profileHeaderView')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileRecommendation','active-profile')
                @include('include.profileLeftMenuView')
                <div class="col-md-9 col-sm-9 recommendationContainer">
                    @if(Auth::check())
                        @if($id!=Auth::user()->id)
                            <div class="container-fluid">
                                <div class="row m-b10">
                                    <a href="{!! route('recommendation.create',$id) !!}" class="pull-right btn btn-success">Give Recommendation</a>
                                </div>
                            </div>
                        @endif
                    @endif

                    @foreach($recommendation AS $key=>$val)
                        <span id="Link{!! $val->id !!}" class="anchor"></span>
                        <div class="panel panel-default {!! $val->id !!}">
                            <div class="panel-heading">
                                <h4 class="panel-title p-b10">

                                    <a href="{!! route('profile.view.profile',$val->userID) !!}">{!! $val->firstName !!} {!! $val->middleName !!} {!! $val->lastName!!}</a>
                                </h4>

                            </div>
                            <div class="panel-body">
                                <p>{!! $val->recommendationText !!}</p>
                            </div>
                            @if(Auth::check())
                                @if(Auth::user()->id===$val->userID)
                                    <div class="panel-footer">
                                        <a href="{!! route('recommendation.edit',$val->id) !!}" class="btn btn-info"><i class="fa fa-pencil fa-1-2x"></i> Edit</a>
                                        <a href="{!! route('recommendation.destroy',$val->id) !!}" class="delete btn btn-danger" data-token="{!! csrf_token() !!}" data-id="{!! $val->id !!}"><i class="fa fa-trash-o fa-1-2x"></i> Delete</a>
                                    </div>
                                @endif
                            @endif

                        </div>
                    @endforeach
                    <div class="text-center">
                        {!! $recommendation->render() !!}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        $(document).ready(function () {
            $('.delete').click(function (event) {
                var actionTo=$(this).attr('href');
                var token=$(this).attr('data-token');
                var id=$(this).attr('data-id');
                $.ajax({
                    url:actionTo,
                    type: 'post',
                    data: {_method: 'delete',_token:token},
                    beforeSend:function() {
                        $('[data-id='+id+']').fadeOut();
                    },
                    success: function( msg ) {
                        $('.'+id).fadeOut();
                    }
                }).fail(function () {
                    $('[data-id='+id+']').fadeIn();
                });
                return false;
            })
        });
    </script>
    <style>
        .anchor {
            display: block;
            position: relative;
            top: -80px;
            visibility: hidden;
        }
    </style>
@endsection
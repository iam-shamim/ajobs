@extends('layouts.index')
@section('container')
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileAboutMe','active-profile')
                @include('include.profileLeftMenu')
                <div class="col-md-9 col-sm-9">
                    @include('include.errorSection')
                </div>
                <div class="col-sm-9">
                    <form action="{!! route('about.me.store') !!}" method="post">
                        <input type="hidden" value="{!! csrf_token() !!}" name="_token">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a href="#collapseB1" data-toggle="collapse">About Me Add</a>
                                </h4>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label for="aboutTitle">Title</label>
                                    <input type="text" id="aboutTitle" class="form-control" name="aboutTitle" value="{!! old('aboutTitle') !!}">
                                </div>
                                <div class="form-group">
                                    <label for="aboutText">About Me Text</label>
                                    <textarea id="aboutText" class="form-control" rows="8" name="aboutText">{!! old('aboutText') !!}</textarea>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="form-group">
                                    <button class="btn btn-success btn-block"><i class="fa fa-save"></i> Save About Me</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script>
        $(document).ready(function () {
            $('.delete').click(function (event) {
                if(!confirm('Are you sure?')){
                    return false;
                }
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
@endsection
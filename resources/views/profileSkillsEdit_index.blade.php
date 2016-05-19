@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="{!! url('plugins/jquery-ui/jquery-ui.css') !!}" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.2/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.2/js/select2.min.js"></script>
    <style>.select2-container .select2-selection--single{height:32px !important;}</style>
    <section class="main no-padding">
        <div class="account-header">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-md-3 col-lg-2">
                        <!-- User avatar -->
                        <div class="profile_avatar">
                            <img src="{!! url('img/people/'.$data->profilePic) !!}" alt="avatar" class="img-responsive" id="show">
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-9 col-lg-10">
                        <div class="profile_summary">
                            <!-- User name -->
                            <h3 class="profile_name">{!! $data->firstName !!} {!! $data->middleName !!} {!! $data->lastName !!}</h3>
                            <!-- User status -->
                            <p>{!! $data->summary !!}</p>
                            <!-- Contact -->
                            <a href="{!! route('logout') !!}" class="btn btn-primary btn-warning btn-sm"><i class="fa fa-sign-out"></i> Sign Out</a>
                        </div> <!-- / .profile__summary -->
                    </div>
                </div> <!-- / .row -->
            </div> <!-- / .container -->
        </div>
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileSkills','active-profile')
                @include('include.profileLeftMenu')
                <div class="col-md-9 col-sm-9">
                    @if($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach($errors->all() as $error)
                                    <li>{!! $error !!}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                </div>
                <div class="col-md-9 col-sm-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> My Profile </a> </h4>
                        </div>
                        <div class="panel-heading">
                            <div class="row">
                                <form action="{!! route('profile.skills.update') !!}" method="post">
                                    <div class="col-md-7">
                                        <input type="hidden" name="_mehod" value="put">
                                        <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                        <select class="js-example-basic-single form-control" name="skillName">
                                            @while(list($key,$val)=each($skills))
                                                <option value="{!! $key !!}">{!! $val !!}</option>
                                            @endwhile
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="number" class="form-control" placeholder="Skill Range" name="skillRange" value="{!! old('skillRange') !!}" title="Skill Range" style="height: 32px">
                                    </div>
                                    <div class="col-md-2">
                                        <button class="no-border"><i class="fa fa-plus-circle btn btn-primary btn-block m-b5"> Add Skill </i></button>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="{!! url('plugins/filestyle/bootstrap-filestyle.min.js') !!}"></script>
    <script src="{!! url('plugins/jquery-ui/jquery-ui.min.js') !!}"></script>
    <script>
        $(function() {
            $( "#datepicker" ).datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd/mm/yy'
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $(".js-example-basic-single").select2();
        });
    </script>
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
@endsection
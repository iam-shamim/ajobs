@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="{!! url('plugins/jquery-ui/jquery-ui.css') !!}" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.2/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.2/js/select2.min.js"></script>
    <style>.select2-container .select2-selection--single{height:32px !important;}</style>
    <section class="main no-padding">
        @include('include/profileHeader')
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
                            <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse">Skill Edit </a> </h4>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <form action="{!! route('profile.skills.update',$mySkill->id) !!}" method="post">
                                    <div class="col-md-10 col-md-offset-1">
                                        <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                        <input type="hidden" name="_method" value="put">
                                        <select class="js-example-basic-single form-control" name="skillName">
                                            @while(list($key,$val)=each($skills))
                                                <?php
                                                    if($mySkill->skillID==$key){
                                                        $selected='selected';
                                                    }else{
                                                        $selected='';

                                                    }
                                                ?>
                                                <option value="{!! $key !!}" {!! $selected !!}>{!! $val !!}</option>
                                            @endwhile
                                        </select>
                                    </div>
                                    <div class="col-md-10 col-md-offset-1 m-t5">
                                        <input type="number" class="form-control" placeholder="Skill Range" name="skillRange" value="{!! $mySkill->skillRange !!}" title="Skill Range" style="height: 32px">
                                    </div>
                                    <div class="col-md-10 col-md-offset-1 m-t5">
                                        <input type="submit" class="form-control btn-primary" value="Update Skill">
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
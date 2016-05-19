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
                            <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> My Skills </a> </h4>
                        </div>
                        <div class="panel-body  ">
                            <div class="row">
                                <form action="{!! route('profile.skills.store') !!}" method="post">
                                    <div class="col-md-7">
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
                                        <button class="no-border no-bg"><i class="fa fa-plus-circle btn btn-primary btn-block m-b5"> Add Skill </i></button>
                                    </div>
                                </form>

                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <td width="5%">#</td>
                                            <td>Skills</td>
                                            <td>Complete</td>
                                            <td width="15%">Action</td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php $sl=1; ?>
                                        @foreach($mySkills AS $key=>$val)
                                            <?php
                                                if($val->skillRange>=80){
                                                    $skillRangeClass='progress-bar-success';
                                                }else if($val->skillRange>=50){
                                                    $skillRangeClass='progress-bar-info';
                                                }else if($val->skillRange>=33){
                                                    $skillRangeClass='progress-bar-warning';
                                                }else{
                                                    $skillRangeClass='progress-bar-danger';
                                                }
                                            ?>
                                            <tr  class="{!! $val->id !!}">
                                                <td>{!! $sl++ !!}</td>
                                                <td>{!! $val->skillName!!}</td>
                                                <td>
                                                    <div class="progress" title="{!! $val->skillRange !!}%">
                                                        <div class="progress-bar {!! $skillRangeClass !!} progress-bar-striped" role="progressbar"  aria-valuemin="0" aria-valuemax="100" style="width: {!! $val->skillRange !!}%"></div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="{!! route('profile.skills.edit',$val->id) !!}"><i class="fa fa-pencil-square btn-sm btn-info"></i></a>
                                                    <a href="{!! route('profile.skills.destroy',$val->id) !!}" class="delete" data-token="{!! csrf_token() !!}" data-id="{!! $val->id!!}"><i class="fa fa-trash-o btn-sm btn-danger"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
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
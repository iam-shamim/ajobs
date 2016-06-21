@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css" />
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileEducation','active-profile')
                @include('include.profileLeftMenu')
                <div class="col-md-9 col-sm-9">
                    @include('include.errorSection')
                </div>
                <div class="col-xs-9 m-b10">
                    <a href="{!! route('education.add') !!}" class="btn btn-success pull-right">Add Education</a>
                </div>
                <div class="col-md-9 col-sm-9">
                    @foreach($education AS $key=>$value)
                        <div class="panel panel-default {!! $value->id !!}">
                            <div class="panel-heading">
                                <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> My Education </a> </h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-5 col-md-4 col-lg-3">
                                        <div class="institute_avatar">
                                            <div class="form-group">
                                                <img src="{!! url('img/institutes/'.$value->logo) !!}"  alt="avatar" class="img-responsive" id="showInstituteImage">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-7 col-md-8 col-lg-9">
                                        <h2 class="text-capitalize"><small>{!! $value->instituteName !!}</small></h2>
                                        <p class="pull-left">{!! $value->city !!},</p>
                                        <p class="pull-left">{!! $value->district !!},</p>
                                        <p class="pull-left m-r10">{!! $value->postcode !!}</p>
                                        <p class=" m-l10">Institute Code: {!! $value->instituteCode !!}</p>
                                        <p>{!! $value->address !!}</p>
                                    </div>
                                    <div class="col-sm-7 col-md-8 col-lg-12">
                                       <h3><small><strong>Exam/Degree: </strong>{!! $value->degreeName !!}s</small></h3>
                                       <h3><small><strong>Group/Subject: </strong>{!! $value->subjectName !!}</small></h3>
                                       <h3><small><strong>Year: </strong>{!! date('d/m/Y',strtotime($value->startedOn)) !!} - @if($value->endedOn==null) Continue @else {!! date('d/m/Y',strtotime($value->endedOn)) !!} @endif</small></h3>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <label><strong><i class="fa fa-envelope-o"></i> Email: </strong></label>
                                        <p>{!! $value->email !!}</p>
                                    </div>
                                    <div class="col-md-4">
                                        <label><strong><i class="fa fa-internet-explorer"></i> Website: </strong></label>
                                        <p>{!! $value->website !!}</p>
                                    </div>
                                    <div class="col-md-3">
                                        <label><strong><i class="fa fa-phone"></i> Phone: </strong></label>
                                        <p>{!! $value->phone !!}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <a href="{!! route('education.destroy',$value->id) !!}" class="delete btn btn-danger" data-token="{!! csrf_token() !!}" data-id="{!! $value->id!!}">Delete</a>
                            </div>
                        </div>
                    @endforeach
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
@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css" />
    <section class="main no-padding">
        @include('include/profileHeaderView')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileRecommendation','active-profile')
                @include('include.profileLeftMenuView')
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
                    <form action="{!! route('recommendation.update',$id) !!}" method="post">
                        <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                        <input type="hidden" name="_method" value="put">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title p-b10">
                                    <a href="#collapseB1" data-toggle="collapse">Edit Recommendation</a>
                                </h4>

                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <strong>To</strong>: {!! $data->firstName !!} {!! $data->middleName!!} {!! $data->lastName  !!}
                                </div>
                                <div class="form-group">
                                    <label for="recommendation">Recommendation</label>
                                    <textarea name="recommendation" id="recommendation" class="form-control" rows="10">{!! $recommendation->recommendationText !!}</textarea>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <button type="submit" class="btn btn-custom btn-block"><i class="fa fa-save"></i> Update Recommendation</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
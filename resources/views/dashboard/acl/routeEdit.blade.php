@extends('layouts.AdminLTE')
@section('AclMenu','active')
@section('route','active')
@section('container')
    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-6 col-sm-offset-3">
                <a href="{!! route('route.index') !!}" class="btn btn-info pull-right m-b5">
                    <i class="fa fa-eye"></i>
                    View All Route
                </a>
            </div>
        </div>
        <div class="row m-t5">
            <div class="col-sm-6 col-sm-offset-3">
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
        </div>
        <div class="row m-t5">
            <div class="col-sm-6 col-sm-offset-3">
                <form action="{!! route('route.update',$data->id) !!}" method="post">
                    <input type="hidden" name="_method" value="PUT">
                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                    <div class="form-group">
                        <label for="routeName">Route Name</label>
                        <input type="text" value="{!! $data->routeName !!}" class="form-control" name="routeName" id="routeName">
                    </div>
                    <div class="form-group">
                        <label for="method">Method</label>
                        <input type="text" name="methodName" value="{!! $data->method !!}" class="form-control" id="method">
                    </div>
                    <div class="form-group">
                        <label for="controller">Controller</label>
                        <input type="text" name="controller" value="{!! $data->controller !!}" class="form-control" id="controller">
                    </div>
                    <input type="submit" value="Update" class="form-control btn-primary">
                </form>
            </div>
        </div>
    </div>
@endsection
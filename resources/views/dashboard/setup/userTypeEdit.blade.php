@extends('layouts.AdminLTE')
@section('AclMenu','active')
@section('userType','active')
@section('container')
    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-6 col-sm-offset-3">
                <a href="{!! route('user.type.index') !!}" class="btn btn-info pull-right m-b5">
                    <i class="fa fa-eye"></i>
                    View All User Type
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
                <form action="{!! route('user.type.update',$data->id) !!}" method="post">
                    <input type="hidden" name="_method" value="put">
                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                    <div class="form-group">
                        <label for="userType">User Type</label>
                        <input type="text" value="{!! $data->userType !!}" class="form-control" name="userType" id="userType">
                    </div>
                    <input type="submit" value="User Type Save" class="form-control btn-primary">
                </form>
            </div>
        </div>
    </div>
@endsection
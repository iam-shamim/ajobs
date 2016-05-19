@extends('layouts.AdminLTE')
@section('setupMenu','active')
@section('degreeSub','active')
@section('container')
    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-6 col-sm-offset-3">
                <a href="{!! route('degrees.index') !!}" class="btn btn-info pull-right m-b5">
                    <i class="fa fa-eye"></i>
                    View All Degrees
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
                <form action="{!! route('degrees.update',$data->id) !!}" method="post">
                    <input type="hidden" name="_method" value="PUT">
                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                    <div class="form-group">
                        <label for="degreeName">Degree Name</label>
                        <input type="text" value="{!! $data->degreeName !!}" class="form-control" name="degreeName" id="degreeName">
                    </div>
                    <div class="form-group">
                        <label for="serial">Degree Serial</label>
                        <input type="number" name="serial" value="{!! $data->sortInd !!}" class="form-control" id="serial">
                    </div>
                    <input type="submit" value="Update" class="form-control btn-primary">
                </form>
            </div>
        </div>
    </div>
@endsection
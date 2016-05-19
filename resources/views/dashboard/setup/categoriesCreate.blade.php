@extends('layouts.AdminLTE')
@section('setupMenu','active')
@section('catSub','active')
@section('container')
    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-6 col-sm-offset-3">
                <a href="{!! route('categories.index') !!}" class="btn btn-info pull-right m-b5">
                    <i class="fa fa-eye"></i>
                    View All Categories
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
                <form action="{!! route('categories.store') !!}" method="post">
                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                    <div class="form-group">
                        <label for="categoryName">Categories Name</label>
                        <input type="text" value="{!! old('categoryName') !!}" class="form-control" name="categoryName" id="categoryName">
                    </div>
                    <div class="form-group">
                        <label for="serial">Categories Serial</label>
                        <input type="number" name="serial" value="{!! old('serial') !!}" class="form-control" id="serial">
                    </div>
                    <input type="submit" value="Categories Save" class="form-control btn-primary">
                </form>
            </div>
        </div>
    </div>
@endsection
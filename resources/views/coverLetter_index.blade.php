@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css" />
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileCoverLetter','active-profile')
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
                            <h4 class="panel-title p-b10">
                                <a href="#collapseB1" data-toggle="collapse">Cover Latter </a>
                                <a href="{!! $routeLink !!}" class="pull-right btn-sm btn-success no-border">{!! $addOrEditText !!}</a>
                            </h4>

                        </div>
                        <div class="panel-body">
                            <h1 class="no-margin no-padding"><small>{!! $coverLetterTitle !!}</small></h1>
                            <p>{!! $coverLetterText !!}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
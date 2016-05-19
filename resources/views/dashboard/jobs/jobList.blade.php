@extends('layouts.AdminLTE')
@section('jobsMenu','active')
@section('jobList','active')
@section('container')
    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-12">

            </div>
        </div>
        @if(session()->has('success'))
            <div class="row">
                <div class="col-xs-12">
                    <div class="alert alert-success">
                        <p>{!! session()->get('success') !!}</p>
                    </div>
                </div>
            </div>
        @endif
        <div class="row">
            <div class="col-sm-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td width="5%">#</td>
                                <td>Job Title</td>
                                <td width="10%">Job Type</td>
                                <td>Job Company</td>
                                <td width="10%">Date</td>
                                <td width="5%">Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($featuredList AS $val)
                                <tr>
                                    <td>{!! $sl++ !!}</td>
                                    <td><a href="{!!  route('jobs.view',$val->jobID) !!}" class="jobTitle">{!! $val->jobTitle !!}</a></td>
                                    <td>{!! $val->jobType !!}</td>
                                    <td>{!! $val->companyName !!}</td>
                                    <td>{!! date('M d,Y',strtotime($val->created_at)) !!}</td>
                                    <td>
                                        <a href="{!! route('jobs.remove',$val->jobID) !!}"  class="m-l5"><i class="fa fa-trash fa-1-2x text-danger" ></i></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="text-center">
                {!! $featuredList->render() !!}
            </div>
        </div>
    </div>
    </div>

@endsection
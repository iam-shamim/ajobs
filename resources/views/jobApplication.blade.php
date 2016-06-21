@extends('layouts.index')
@section('container')
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <form action="{!! '' !!}" method="post">
                        <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title p-b10">
                                    <a href="#collapseB1" data-toggle="collapse">Job Application</a>
                                </h4>

                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <div><strong>Job Title</strong>: {!! $job->jobTitle !!}</div>
                                </div>
                                <div class="form-group">
                                    <label for="recommendation">Recommendation</label>
                                    <textarea name="recommendation" id="recommendation" class="form-control" rows="10">{!! old('recommendation') !!}</textarea>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <button type="submit" class="btn btn-custom btn-block"><i class="fa fa-save"></i> Send Recommendation</button>
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
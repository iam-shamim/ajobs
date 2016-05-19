@extends('layouts.index')
@section('container')
    <style>.select2-container .select2-selection--single{height:32px !important;}</style>
    <section class="main no-padding">
        @include('include/profileHeaderView')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileSkills','active-profile')
                @include('include.profileLeftMenuView')
                <div class="col-md-9 col-sm-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse">Skills </a> </h4>
                        </div>
                        <div class="panel-body  ">
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <td width="5%">#</td>
                                            <td>Skills</td>
                                            <td>Complete</td>
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
@endsection
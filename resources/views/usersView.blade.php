@extends('layouts.AdminLTE')
@section('usersMenu','active')
@section('usersList','active')
@section('container')
    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-12">
                <div class="row">
                    <form action="" method="get">
                        <div class="col-sm-6 m-t5">
                            <input type="text" name="searchText" value="@if(isset($searchText)){!! $searchText !!}@endif" class="form-control" placeholder="Search....." title="Search.....">
                        </div>
                        <div class="col-sm-3 m-t5">
                            <select name="userType" id="userType" class="form-control" title="User Type">
                                @while(list($key,$val)=each($userType))
                                    <option @if($val==$getUserType) selected @endif>{!! $val !!}</option>
                                @endwhile
                            </select>
                        </div>
                        <div class="col-sm-3 m-t5">
                            <input type="submit" class="btn btn-primary btn-block" value="Search Users">
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-12 m-t10">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td width="5%">S/L</td>
                                <td>Name</td>
                                <td>email</td>
                                @if(empty($getUserType) OR $getUserType=='Any')
                                    <td width="5%">Type</td>
                                @endif
                                <td width="5%">Joined</td>
                                <td width="1%">Status</td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $usersDataItem=$usersData->items() ?>
                            @while(list($key,$val)=each($usersDataItem))
                                <tr>
                                    <td width="5%">{!! $sl++ !!}</td>
                                    <td><a href="{!! route('profile.view.about',$val->userID) !!}">{!! $val->firstName.' '.$val->middleName.' '.$val->lastName !!}</a></td>
                                    <td>{!! $val->email !!}</td>
                                    @if(empty($getUserType) OR $getUserType=='Any')
                                        <td width="5%">{!! $val->userType !!}</td>
                                    @endif
                                    <td width="10%">{!! date('M d,Y',strtotime($val->created_at)) !!}</td>
                                    <td width="1%">
                                        @if($val->userType=='Root')
                                            <i class="fa fa-check-circle-o enable fa-color  fa-1-2x m-l5"></i>
                                        @elseif($val->userStatus=='Blocked')
                                            <a href="{!! route('users.status.change',['userID'=>$val->userID,'type'=>'Active']) !!}" title="Blocked"  class="m-l5"><i class="fa fa-times-circle text-danger fa-1-2x" ></i></a>
                                        @elseif($val->userStatus=='InActive')
                                            <a href="{!! route('users.status.change',['userID'=>$val->userID,'type'=>'Blocked']) !!}" title="InActive"  class="m-l5"><i class="fa fa-ban disable fa-1-2x" ></i></a>
                                        @else
                                            <a href="{!! route('users.status.change',['userID'=>$val->userID,'type'=>'Blocked']) !!}" title="Active"  class="m-l5"><i class="fa fa-check-circle-o enable fa-color  fa-1-2x" ></i></a>
                                        @endif
                                    </td>
                                </tr>
                            @endwhile
                        </tbody>
                    </table>
                </div>
                <div class="text-center">
                    {{ $usersData->appends($urlParameters)->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
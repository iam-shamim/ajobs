@extends('layouts.AdminLTE')
@section('AclMenu','active')
@section('permission','active')
@section('container')
    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-12">
                <form method="post" action="{!! route('permission.store') !!}">
                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="row">
                                    <div class="col-sm-8 m-t5">
                                        <input type="text" name="searchText" value="@if(isset($searchText)){!! $searchText !!}@endif" class="form-control" placeholder="Search....." id="searchText">
                                    </div>
                                    <div class="col-sm-3 m-t5">
                                        <select name="searchType" id="searchType" class="form-control">
                                            <option value="route" @if(isset($searchType) AND $searchType=='route') selected @endif>Route</option>
                                            <option value="action"  @if(isset($searchType) AND $searchType=='action') selected @endif>Action</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-1 m-t5">
                                        <input type="submit" id="searchSubmit" value="Search" class="btn btn-primary">
                                    </div>
                            </div>
                        </div>
                        <div class="col-sm-3 form_submit  m-t5">
                            <button href="{!! route('degrees.create') !!}" class="btn btn-info pull-right m-b5">
                                <i class="fa fa-save"></i>
                                Save Permission
                            </button>
                        </div>
                    </div>
                    <div class="table" id="tableDiv">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <td width="1%">#</td>
                                    <td width="20%">Route</td>
                                    <td width="5%">Method</td>
                                    <td width="20%">Action</td>
                                    @foreach($userType AS $key=>$val)
                                        <td width="1%" title="{!! $val->userType !!}"><?php echo substr($val->userType,0,2) ?> </td>
                                    @endforeach
                                </tr>
                            </thead>
                            <tbody>
                            <?php $fullRouteList=''; ?>
                                @foreach($data as $row)
                                    <tr>
                                        <td>{!! $sl++ !!}</td>
                                        <td>{!! $row->routeName !!}</td>
                                        <td>{!! $row->method !!}</td>
                                        <td>{!! $row->controller !!}</td>
                                        @foreach($userType AS $key=>$val)
                                            <td>
                                                <input type="checkbox" id="input{!! $row->id !!},{!! $val->id !!}" {!! $activeList[$row->id.$val->id] !!} name="name_{!! $row->id !!}_{!! $val->id !!}"  class="styleInput " />
                                                <label title="{!! $val->userType !!}" for="input{!! $row->id !!},{!! $val->id !!}"><span></span></label>
                                            </td>
                                        @endforeach
                                    </tr>
                                    <?php $fullRouteList.=$row->id.','?>
                                @endforeach
                            </tbody>
                        </table>
                        <button href="{!! route('degrees.create') !!}" class="btn btn-info pull-right m-b5">
                            <i class="fa fa-save"></i>
                            Save Permission
                        </button>
                        <div class="text-center">
                            {{ $data->appends($urlParameters)->links() }}
                        </div>
                    </div>
                    <input type="hidden" name="fullRouteList" value="{!! $fullRouteList !!}">
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $('#searchSubmit').click(function () {
            var searchText = $('#searchText').val();
            var searchType =  $('#searchType').val();
            window.location = "{!! route('permission.search') !!}?searchText="+searchText+"&searchType="+searchType+"";
            return false;
        });
    </script>
@endsection
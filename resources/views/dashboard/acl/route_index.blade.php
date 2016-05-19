@extends('layouts.AdminLTE')
@section('AclMenu','active')
@section('route','active')
@section('container')
    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-12">
                <a href="{!! route('route.create') !!}" class="btn btn-info pull-right m-b5">
                    <i class="fa fa-plus-circle"></i>
                    Route Upgrade
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                @if(Session::has('updateRoute'))
                <div class="alert alert-success">
                    <p>{!! Session::get('updateRoute') !!}</p>
                </div>
                @endif
                <div class="table">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td width="5%">#</td>
                                <td>Route</td>
                                <td width="5%">Method</td>
                                <td>Action</td>
                                <td width="8%">#</td>
                            </tr>
                        </thead>
                        <tbody>
                        <?php $sl=0;?>
                            @foreach($routesList as $row)
                                <tr class="{!! $row->id !!}">
                                    <td>{!! ++$sl !!}</td>
                                    <td>{!! $row->routeName !!}</td>
                                    <td>{!! $row->method !!}</td>
                                    <td>{!! $row->controller !!}</td>
                                    <td>
                                        <?php $statusChange=($row->status=='disable')?'enable':'disable'; ?>
                                        <a href="{!! route('route.edit',$row->id) !!}" class=""><i class="fa fa-pencil fa-1-2x" ></i></a>
                                            @if($row->status=='enable')
                                                <a href="{!! route('route.status',[$row->id,$statusChange]) !!}"  class="m-l5"><i class="fa fa-check-circle-o fa-color {!! $row->status !!}  fa-1-2x" ></i></a>
                                            @else
                                                <a href="{!! route('route.status',[$row->id,$statusChange]) !!}"  class="m-l5"><i class="fa fa-ban fa-color {!! $row->status !!}  fa-1-2x" ></i></a>
                                            @endif
                                            <a href="{!! route('route.destroy',$row->id) !!}"  data-token="{!! csrf_token() !!}" data-id="{!! $row->id !!}" class="m-l10 delete enable"><i class="fa fa-trash fa-1-2x text-danger"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="text-center">
                    {{-- $data->links() --}}
                </div>
            </div>
        </div>
    </div>
<script>
        $(document).ready(function () {
            $('.delete').click(function (event) {
                var actionTo=$(this).attr('href');
                var token=$(this).attr('data-token');
                var id=$(this).attr('data-id');
                $.ajax({
                    url:actionTo,
                    type: 'post',
                    data: {_method: 'delete',_token:token},
                    beforeSend:function() {
                        $('[data-id='+id+']').fadeOut();
                    },
                    success: function( data ) {
                        var dataObj=JSON.parse(data);
                        if(dataObj.success){
                            $('.'+id).fadeOut();
                        }
                    }
                }).fail(function () {
                    $('[data-id='+id+']').fadeIn();
                });
                return false;
            })
        });
    </script>
@endsection
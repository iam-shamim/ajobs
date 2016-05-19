@extends('layouts.AdminLTE')
@section('AclMenu','active')
@section('userType','active')
@section('container')

    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-8 col-sm-offset-2">
                <a href="{!! route('user.type.create') !!}" class="btn btn-info pull-right m-b5">
                    <i class="fa fa-plus-circle"></i>
                    New User Type
                </a>
                <div class="table">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td width="10%">#</td>
                                <td>User Type</td>
                                <td width="15%" align="center">Action</td>
                            </tr>
                        </thead>
                        <tbody class="tbody">
                        <?php $sl=0; ?>
                            @foreach($data as $row)
                                <tr class="{!! $row->id !!}">
                                    <td>{!! ++$sl !!}</td>
                                    <td data-text="{!! $row->id !!}">{!! $row->userType !!}</td>
                                    <td align="center">
                                        <?php $statusChange=($row->status=='disable')?'enable':'disable'; ?>
                                        <a href="{!! route('user.type.edit',$row->id) !!}" class=""><i class="fa fa-pencil fa-1-2x" ></i></a>
                                         @if($row->status=='enable')
                                                <a href="{!! route('user.type.status',[$row->id,$statusChange]) !!}"  class="m-l5"><i class="fa fa-check-circle-o fa-color {!! $row->status !!}  fa-1-2x" ></i></a>
                                         @else
                                                <a href="{!! route('user.type.status',[$row->id,$statusChange]) !!}"  class="m-l5"><i class="fa fa-ban fa-color {!! $row->status !!}  fa-1-2x" ></i></a>
                                         @endif
                                        <a href="{!! route('user.type.destroy',$row->id) !!}"  data-token="{!! csrf_token() !!}" data-id="{!! $row->id !!}" class="m-l5 delete text-danger"><i class="fa fa-trash fa-1-2x"></i></a>
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
                var confirmCheck=confirm('are you sure');
                if(!confirmCheck){
                    return false;
                }
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
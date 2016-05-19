@extends('layouts.AdminLTE')
@section('AclMenu','active')
@section('permission','active')
@section('container')
    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-12">
                <form method="post" action="{!! route('permission.store') !!}">
                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                <button href="{!! route('degrees.create') !!}" class="btn btn-info pull-right m-b5">
                    <i class="fa fa-save"></i>
                    Save Permission
                </button>
                <div class="table">
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
                    <div class="text-center">
                        {!! $data->render() !!}
                    </div>
                </div>
                    <input type="hidden" name="fullRouteList" value="{!! $fullRouteList !!}">
                </form>
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
                    success: function( msg ) {
                        $('.'+id).fadeOut();
                    }
                }).fail(function () {
                    $('[data-id='+id+']').fadeIn();
                });
                return false;
            })
        });
    </script>
@endsection
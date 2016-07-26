@extends('layouts.AdminLTE')
@section('setupMenu','active')
@section('catSub','active')
@section('container')
    <div class="container">
        <div class="row m-t5">
            <div class="col-sm-8 col-sm-offset-2">
                <a href="{!! route('categories.create') !!}" class="btn btn-info pull-right m-b5">
                    <i class="fa fa-plus-circle"></i>
                    New  Categorie
                </a>
                <div class="table">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td width="10%">#</td>
                                <td>Category Name</td>
                                <td width="20%">Serial</td>
                                <td width="20%">Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $row)
                                <tr class="{!! $row->id !!}">
                                    <td>{!! ++$sl !!}</td>
                                    <td>{!! $row->categoryName !!}</td>
                                    <td>{!! $row->sortInd !!}</td>
                                    <td>
                                        <a href="{!! route('categories.edit',$row->id) !!}" class=""><i class="fa fa-pencil fa-1-2x"></i></a>
                                        <a href="{!! route('categories.destroy',$row->id) !!}"  data-token="{!! csrf_token() !!}" data-id="{!! $row->id !!}" class="m-l10 delete text-danger"><i class="fa fa-trash fa-1-2x"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="text-center">
                    {!! $data->links() !!}
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('.delete').click(function (event) {
                if(!confirm('Are You Sure?')){
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
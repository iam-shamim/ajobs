@extends('layouts.index')
@section('container')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.2/css/select2.min.css" rel="stylesheet" />
    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileCompany','active-profile')
                @include('include.profileLeftMenuJobs')
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
                    <form action="{!! route('company.store') !!}" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse">Add My Company</a> </h4>
                            </div>
                            <div class="panel-body">
                                <div class="col-lg-3">
                                    <label class="pull-left">Search Company</label>
                                </div>
                                <div class="col-lg-9 m-b15">
                                    <select class="searchCompany form-control"></select>
                                    <input type="hidden" value="null" name="_searchCompany">
                                </div>
                                <div class="container-fluid m-b10">
                                    <div class="row">
                                        <div class="col-sm-5 col-md-4 col-lg-3">
                                            <!-- User avatar -->
                                            <div class="institute_avatar">
                                                <div class="form-group">
                                                    <label for="instituteImage" class="active">
                                                        <img src="{!! url('img/company/company-icon.png') !!}"  alt="avatar" class="img-responsive" id="showCompanyImage">
                                                    </label>
                                                    <input type="file" id="instituteImage" class="hidden" name="logo" onchange="loadFile(event)">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="companyName">Company Name</label>
                                        <input type="text" name="companyName" value="{!! old('companyName') !!}" class="form-control myCompany" id="companyName">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="city">City</label>
                                        <input type="text" name="city" value="{!! old('city') !!}" class="form-control myCompany" id="city">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="district">District</label>
                                        <input type="text" name="district" value="{!! old('district') !!}" class="form-control myCompany" id="district">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="postcode">Post Code</label>
                                        <input type="text" name="postcode" value="{!! old('postcode') !!}" class="form-control myCompany" id="postcode">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="phone">Phone</label>
                                        <input type="text" name="phone" value="{!! old('phone') !!}" class="form-control myCompany" id="phone">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email">email</label>
                                        <input type="text" name="email" value="{!! old('email') !!}" class="form-control myCompany" id="email">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="website">website</label>
                                        <input type="text" name="website" value="{!! old('website') !!}" class="form-control myCompany" id="website">
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="form-group">
                                        <label for="address">Company Address</label>
                                        <textarea id="address" name="address" class="form-control myCompany" rows="6">{!! old('address') !!}</textarea>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="form-group">
                                        <label for="companySummary">Company Summary</label>
                                        <textarea id="companySummary" name="companySummary" class="form-control" rows="6">{!! old('companySummary') !!}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <button type="submit" class="btn btn-custom btn-block"><i class="fa fa-save"></i> Save My Company</button>
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
    <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.2/js/select2.min.js"></script>
    <script>
        $('.searchCompany').change(function () {
            var value=$(this).attr('value');
            var valueObj=JSON.parse(value);
            $('[name=_searchCompany]').val(valueObj.id);
            $('#companyName').val(valueObj.companyName);
            $('#city').val(valueObj.city);
            $('#district').val(valueObj.district);
            $('#postcode').val(valueObj.postcode);
            $('#address').html(valueObj.address);
            $('#phone').val(valueObj.phone);
            $('#email').val(valueObj.email);
            $('#website').val(valueObj.website);
            $('#showCompanyImage').attr('src',valueObj.logo);
            $('.myCompany').attr('readonly','');
        });
        $('.searchCompany').select2({
            placeholder: 'Search Company',
            ajax: {
                dataType: 'json',
                url: '{{ url("ajax/company/search") }}',
                delay: 4,
                data: function(params) {
                    return {
                        term: params.term || '',
                        page: params.page || 1
                    }
                },
                cache: true,
                processResults: function (data, page) {
                    console.log(data);
                    return {
                        results: data,
                        pagination: {
                            more: true
                        }
                    };
                }
            },
            delay: 250,
            escapeMarkup: function (markup) { return markup; },
            minimumInputLength: 2,
            templateResult: function(data){
                console.log(data);
                if(data.id=='0'){

                    return '<div>' +
                            '<img width="30" src="'+data.img+'"> '+data.text+
                            '</div>';
                }
                return '<div class="instituteSearchResultMain">' +
                        '<div class="instituteSearchResultImgDiv">' +
                        '<img width="30" src="'+data.img+'"> '+
                        '</div>' +
                        '<div class="instituteSearchResultInfoDiv">' +
                        '<p>'+data.text+'</p>'+
                        '<p>'+data.city+''+data.district+' '+data.website+'</p>'+
                        '</div>'+
                        '</div>';
            }
        });
    </script>
    <script>
        var loadFile = function(event) {
            var showFunc = document.getElementById('showCompanyImage');
            showFunc.src = URL.createObjectURL(event.target.files[0]);
            $('[for=instituteImage].active').removeClass('active');
        };
    </script>
    <style>
        .instituteSearchResultMain{display: block;}
        .instituteSearchResultImgDiv{ width:10%;float: left;margin-right: 5px;}
        .instituteSearchResultImgDiv img{ width:100%}
        .instituteSearchResultInfoDiv{}
        .instituteSearchResultInfoDiv p+p{line-height:10px;}
    </style>
@endsection
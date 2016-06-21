<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index, follow">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:regular,700,600&amp;latin" type="text/css" />
    <!-- Essential styles -->
    <link rel="stylesheet" href="{!! url('bootstrap/css/bootstrap.min.css') !!}" type="text/css">
    <link rel="stylesheet" href="{!! url('font-awesome/css/font-awesome.css') !!}" type="text/css">

    <!-- Dlapak styles -->
    <link id="theme_style" type="text/css" href="{!! url('css/style1.css') !!}" rel="stylesheet" media="screen">
    <link id="theme_style" type="text/css" href="{!! url('css/default.css') !!}" rel="stylesheet" media="screen">
    <link id="theme_style" type="text/css" href="{!! url('style.css') !!}" rel="stylesheet" media="screen">


    <!-- Favicon -->
    <link href="assets/img/favicon.png" rel="icon" type="image/png">

    <!-- Assets -->

    <!-- JS Library -->
    <script src="{!! url('assets/js/jquery.js') !!}"></script>

</head>
<body>
<div class="wrapper">
    @include('include.mainLayoutHeader')

    @yield('container')

    @section('footer')
    <div class="footer">
        <div class="container">
            <ul class="pull-left footer-menu">
                <li>
                    <a href="index"> Home </a>
                    <a href="about"> About us </a>
                    <a href="contact"> Contact us </a>
                </li>
            </ul>
            <ul class="pull-right footer-menu">
                <li> &copy; {!! trans('common.appName') !!}</li>
            </ul>
        </div>
    </div>
    @show
</div>
<!-- Essentials -->
<script src="{!! url('bootstrap/js/bootstrap.min.js') !!}"></script>
<script src="{!! url('js/main.js') !!}"></script>

</body>
</html>
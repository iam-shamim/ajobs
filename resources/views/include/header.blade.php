<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{!! trans('common.appName') !!} | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="{!! url('bootstrap/css/bootstrap.min.css') !!}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{!! url('font-awesome/css/font-awesome.min.css') !!}">


  <link rel="stylesheet" type="text/css" href="{!! url('font-awesome/css/font-awesome.min.css') !!}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{!! url('theme/css/AdminLTE.css') !!}">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="{!! url('theme/css/skins/_all-skins.min.css') !!}">
    <link rel="stylesheet" href="{!! url('css/default.css') !!}">
    <link rel="stylesheet" href="{!! url('css/sweetalert.css') !!}">
    <link rel="stylesheet" href="{!! url('style.css') !!}">



    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery 2.1.4 -->
    <script src="{!! url('js/jquery-1.11.3.min.js') !!}"></script>
    <script src="{!! url('js/my.js') !!}"></script>
  </head>
  <body class="hold-transition skin-blue sidebar-mini ">
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="{!! url('') !!}" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini" title="{!! trans('common.appName') !!}">A.J</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg">{!! trans('common.appName') !!}</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->

              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>

              </li>
              <!-- Tasks: style can be found in dropdown.less -->
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-exclamation-triangle"></i>
                  <span class="label label-warning">10</span>
                </a>

              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="{!! url('img/people/'.$currentUserData->profilePic) !!}" class="user-image" alt="User Image">
                  <span class="hidden-xs">Admin</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="{!! url('img/people/'.$currentUserData->profilePic) !!}" class="img-circle" alt="User Image">
                    <p>
                      {!! $currentUserData->firstName !!} {!! $currentUserData->middleName !!} {!! $currentUserData->lastName !!}
                      <small>Member since {!! date('M. Y',strtotime($currentUserData->created_at)) !!}</small>
                    </p>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="{!! route('profile') !!}" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="{!! route('logout') !!}" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->

            </ul>
          </div>
        </nav>
      </header>
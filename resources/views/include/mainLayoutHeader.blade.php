<header class="navbar navbar-default navbar-fixed-top navbar-top">
    <div class="container">
        <div class="navbar-header">
            <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="{!! route('home') !!}" class="navbar-brand"><span class="logo"><i class="fa fa-recycle"></i> {!! trans('common.appName') !!}</span></a>
        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                @if(!Auth::check())
                <li><a href="{!! route('signup.create') !!}">Signup</a></li>
                <li><a href="{!! route('login.create') !!}">Login</a></li>
                @endif
                <li class="new-ads"><a href="{!! route('newFeaturedJobsQuery') !!}" class="btn btn-ads btn-block">Hot Jobs</a></li>
                @if(!Auth::check())
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-user"></i> <strong class="caret"></strong>&nbsp;</a>
                        <div class="dropdown-menu dropdown-login" style="padding:15px;min-width:250px">
                            <?php
                                if(!isset($routeTo)){
                                    $routeTo='profile';
                                }
                            ?>
                            <form method="post" action="{!! route('login.action') !!}">
                                <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon addon-login"><i class="fa fa-user"></i></span>
                                        <input type="text" placeholder="Username or email" name="userName" required="required" class="form-control input-login">

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon addon-login"><i class="addon fa fa-lock"></i></span>
                                        <input type="password" placeholder="Password" name="password" required="required" class="form-control input-login">
                                        <input type="hidden" name="redirectTo" value="{!! $_SERVER['REQUEST_URI'] !!}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label class="string optional" for="user_remember_me">
                                            <input type="checkbox" id="user_remember_me" name="remember_me">
                                            Remember me
                                        </label>
                                    </div>
                                </div>
                                <input type="submit" class="btn btn-custom btn-block" value="Sign In">
                                <div><p class="text-center">Login With</p></div>
                                <div class="text-center">
                                    <a href="{!! route('socialite.index','facebook') !!}" class="m-r10"><i class="fa fa-facebook-official fa-2x"></i></a>
                                    <a href="{!! route('socialite.index','google') !!}" class="m-r10"><i class="fa fa-google fa-2x"></i></a>
                                    <a href="{!! route('socialite.index','twitter') !!}"><i class="fa fa-twitter fa-2x"></i></a>
                                    <a href="{!! route('socialite.index','linkedin') !!}" class="m-r10"><i class="fa fa-linkedin fa-2x"></i></a>
                                    <a href="{!! route('socialite.index','github') !!}" class="m-r10"><i class="fa fa-github fa-2x"></i></a>
                                </div>
                                <a href="{!! route('password.forgot.form') !!}" class="btn-block text-center">Forgot password?</a>
                            </form>
                        </div>
                </li>
                @else
                    <li><a href="{!! route('notification.view') !!}"><i class="fa fa-globe fa-1-2x "></i></a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-user"></i><strong class="caret"></strong>&nbsp;</a>
                        <ul class="dropdown-menu">
                            @if(Auth::user()->userType==='Root' OR Auth::user()->userType==='Admin')
                                <li><a href="{!! route('dashboard.index') !!}"><i class="fa fa-tachometer"></i> Dashboard</a></li>
                            @endif
                            <li><a href="{!! route('profile') !!}"><i class="fa fa-user"></i> My Profile</a></li>
                            @if(Auth::user()->userType==='Company')
                                <li><a href="{!! route('my.jobs.list') !!}"><i class="fa fa-briefcase"></i> My Jobs</a></li>
                            @elseif(Auth::user()->userType==='JobSeeker')
                                <li><a href="{!! route('my.jobs.jobSeeker') !!}"><i class="fa fa-briefcase"></i> My Jobs</a></li>
                            @endif
                            <li><a href="{!! route('settings.index') !!}"><i class="fa fa-wrench"></i> Settings</a></li>
                            <li><a href="{!! route('logout') !!}"><i class="fa fa-sign-out"></i> Log Out</a></li>
                        </ul>
                    </li>
                @endif


            </ul>
        </div>
    </div>
</header>
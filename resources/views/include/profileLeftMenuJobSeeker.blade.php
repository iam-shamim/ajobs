<div class="col-md-3 col-sm-3">
    <div class="widget">
        <div class="widget-header">
            <h3>Author Menus</h3>
        </div>
        <div class="widget-body">
            <ul class="author-menus">
                @if(Auth::user()->userType==='JobSeeker')
                    <li class="@yield('LeftMenuMyProfileMyJob')"><a href="{!! route('my.jobs.jobSeeker') !!}">My Jobs</a></li>
                @endif
                <li class=""><a href="{!! route('logout') !!}">Signout</a></li>
            </ul>
        </div>
    </div>
</div>
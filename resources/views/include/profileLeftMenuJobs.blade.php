<div class="col-md-3 col-sm-3">
    <div class="widget">
        <div class="widget-header">
            <h3>Author Menus</h3>
        </div>
        <div class="widget-body">
            <ul class="author-menus">
                @if(Auth::user()->userType==='Company')
                    <li class="@yield('LeftMenuMyProfileCompany')"><a href="{!! route('company.index') !!}">My Company</a></li>
                    <li class="@yield('LeftMenuMyProfileJob')"><a href="{!! route('jobs.create') !!}">Jobs Post</a></li>
                    <li class="@yield('LeftMenuMyProfileMyJob')"><a href="{!! route('my.jobs.list',$data->userID) !!}">My Jobs</a></li>
                @endif
                <li class=""><a href="{!! route('logout') !!}">Signout</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="col-md-3 col-sm-3">
    <div class="widget">
        <div class="widget-header">
            <h3>Settings</h3>
        </div>
        <div class="widget-body">
            <ul class="author-menus">
                <li class="@yield('LeftMenuSettingGeneral')"><a href="{!! route('settings.index') !!}"><i class="fa fa-cogs"></i> General</a></li>

                @if(Auth::user()->userType==='Company')

                @endif
                <li class=""><a href="{!! route('logout') !!}">Signout</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="col-md-3 col-sm-3">
    <div class="widget">
        <div class="widget-header">
            <h3>Profile</h3>
        </div>
        <div class="widget-body">
            <ul class="author-menus">
                <li class="@yield('LeftMenuMyProfile')"><a href="{!! route('profile') !!}">My Profile</a></li>
                <li class="@yield('LeftMenuMyProfileExperience')"><a href="{!! route('experience.index') !!}">My Experiences</a></li>
                <li class="@yield('LeftMenuMyProfileSkills')"><a href="{!! route('profile.skills') !!}">My Skills</a></li>
                <li class="@yield('LeftMenuMyProfileEducation')"><a href="{!! route('education.index') !!}">My Education</a></li>
                <li class="@yield('LeftMenuMyProfileAboutMe')"><a href="{!! route('about.me.index') !!}">About Me</a></li>
                <li class="@yield('LeftMenuMyProfileRecommendation')"><a href="{!! route('recommendation.index') !!}">My Recommendations</a></li>
                @if(Auth::user()->userType==='Company')
                    <li class="@yield('LeftMenuMyProfileCompany')"><a href="{!! route('company.index') !!}">My Company</a></li>
                @endif
                <li class=""><a href="{!! route('logout') !!}">Signout</a></li>
            </ul>
        </div>
    </div>
</div>
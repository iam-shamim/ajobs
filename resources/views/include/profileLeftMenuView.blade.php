<div class="col-md-3 col-sm-3">
    <div class="widget">
        <div class="widget-header">
            <h3>Author Menus</h3>
        </div>
        <div class="widget-body">
            <ul class="author-menus">
                <li class="@yield('LeftMenuMyProfile')"><a href="{!! route('profile.view.profile',$id) !!}">Profile</a></li>
                <li class="@yield('LeftMenuMyProfileExperience')"><a href="{!! route('profile.view.experience',$id) !!}">Experiences</a></li>
                <li class="@yield('LeftMenuMyProfileSkills')"><a href="{!! route('profile.view.skills',$id) !!}">Skills</a></li>
                <li class="@yield('LeftMenuMyProfileEducation')"><a href="{!! route('profile.view.education',$id) !!}">Education</a></li>
                <li class="@yield('LeftMenuMyProfileAbout')"><a href="{!! route('profile.view.about',$id) !!}">About</a></li>
                <li class="@yield('LeftMenuMyProfileRecommendation')"><a href="{!! route('profile.view.recommendation',$id) !!}">Recommendations</a></li>
                @if($userType==='Company')
                    <li class="@yield('LeftMenuMyProfileCompany')"><a href="{!! route('profile.view.company',$id) !!}">Company</a></li>
                @endif
            </ul>
        </div>
    </div>
</div>
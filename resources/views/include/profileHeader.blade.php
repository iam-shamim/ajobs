<div class="account-header">
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-md-3 col-lg-2">
                <!-- User avatar -->
                <div class="profile_avatar">
                    <img src="{!! url('img/people/'.$data->profilePic) !!}" alt="avatar" class="img-responsive" id="show">
                </div>
            </div>
            <div class="col-sm-8 col-md-9 col-lg-10">
                <div class="profile_summary">
                    <!-- User name -->
                    <h3 class="profile_name">{!! $data->firstName !!} {!! $data->middleName !!} {!! $data->lastName !!}</h3>
                    <!-- User status -->
                    <p>{!! $data->summary !!}</p>
                    <!-- Contact -->
                    <a href="{!! route('logout') !!}" class="btn btn-primary btn-warning btn-sm"><i class="fa fa-sign-out"></i> Sign Out</a>
                </div> <!-- / .profile__summary -->
            </div>
        </div> <!-- / .row -->
    </div> <!-- / .container -->
</div>
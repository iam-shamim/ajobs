<!DOCTYPE html>
<html>  
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="index, follow">
        <title>Dlapak - General Listing Template</title>
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:regular,700,600&amp;latin" type="text/css" />
        <!-- Essential styles -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.css" type="text/css"> 

        <!-- Dlapak styles -->
        <link id="theme_style" type="text/css" href="assets/css/style1.css" rel="stylesheet" media="screen">


        <!-- Favicon -->
        <link href="assets/img/favicon.png" rel="icon" type="image/png">

        <!-- Assets -->
        <link rel="stylesheet" href="assets/plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="assets/plugins/owl-carousel/owl.theme.css">
    
        <!-- JS Library -->
        <script src="assets/js/jquery.js"></script>

    </head>
    <body>
        <div class="wrapper">
            <header 
             class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container">
                    <div class="navbar-header">
                        <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="index.blade.php" class="navbar-brand"><span class="logo"><i class="fa fa-recycle"></i> Dlapak</span></a>
                    </div>

                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="new-ads"><a href="account_create_post.php" class="btn btn-ads btn-block">Advertise</a></li>
                            <li><a href="signup.blade.php">Signup</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><strong class="caret"></strong>&nbsp;Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="account_posts.php">My Ads</a></li>
                                    <li><a href="account_create_post.php">Create Ads</a></li>
                                    <li><a href="profile.blade.php">My Profile</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-user"></i> <strong class="caret"></strong>&nbsp;</a>
                                <div class="dropdown-menu dropdown-login" style="padding:15px;min-width:250px">
                                    <form>                       
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon addon-login"><i class="fa fa-user"></i></span>
                                                <input type="text" placeholder="Username or email" required="required" class="form-control input-login">                                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon addon-login"><i class="addon fa fa-lock"></i></span>
                                                <input type="password" placeholder="Password" required="required" class="form-control input-login">                                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label class="string optional" for="user_remember_me">
                                                    <input type="checkbox" id="user_remember_me" style="">
                                                    Remember me
                                                </label>
                                            </div>
                                        </div>
                                        <input type="submit" class="btn btn-custom btn-block" value="Sign In">
                                        <a href="forgot_password.php" class="btn-block text-center">Forgot password?</a>
                                    </form>                                    
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </header>
            <section class="main no-padding">
                <div class="account-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4 col-md-3 col-lg-2">
                                <!-- User avatar -->
                                <div class="profile_avatar">
                                    <img src="assets/img/people/gie.jpg" alt="avatar" class="img-responsive">
                                </div>
                            </div>
                            <div class="col-sm-8 col-md-9 col-lg-10">
                                <div class="profile_summary">
                                    <!-- User name --> 
                                    <h3 class="profile_name">John Doe</h3>
                                    <!-- User status -->
                                    <p>Hello.. I'am a frontend developer.</p>
                                    <!-- Contact -->
                                    <a href="index.blade.php" class="btn btn-primary btn-warning btn-sm"><i class="fa fa-sign-out"></i> Sign Out</a>
                                </div> <!-- / .profile__summary -->
                            </div>
                        </div> <!-- / .row -->
                    </div> <!-- / .container -->
                </div>
                <div class="container">

                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <div class="widget">
                                <div class="widget-header">
                                    <h3>Author Menus</h3>
                                </div>
                                <div class="widget-body">
                                    <ul class="author-menus">

                                        <li><a href="account_posts.php">My Ads</a></li>
                                        <li><a href="account_create_post.php">Create New Ads</a></li>
                                        <li><a href="profile.blade.php">My Profile</a></li>
                                        <li><a href="index.blade.php">Signout</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9 col-sm-9">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> New Ads </a> </h4>
                                </div>

                                <form accept-charset="utf-8" method="post" enctype="multipart/form-data" id="UserProfileForm" class="form-horizontal">
                                    <div class="panel-body">             
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Name</label>
                                            <div class="col-sm-9">
                                                <input type="text" required="required" value="" class="form-control">                                   </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Price</label>
                                            <div class="col-sm-9">
                                                <input type="number" min="1" required="required" value="" class="form-control">                                
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Detail</label>
                                            <div class="col-sm-9">
                                                <textarea class="form-control"></textarea>                                
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Photo 1</label>
                                            <div class="col-sm-9">
                                                <input type="file" class="filestyle">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Photo 2</label>
                                            <div class="col-sm-9">
                                                <input type="file"  class="filestyle">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Photo 3</label>
                                            <div class="col-sm-9">
                                                <input type="file"  class="filestyle">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>     
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-sm-offset-3 col-sm-9">
                                                <button type="submit" class="btn btn-custom"><i class="fa fa-save"></i> Publish</button>
                                                <button type="submit" class="btn btn-default"><i class="fa fa-close"></i> Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </form> 
                            </div>
                        </div>  
                    </div>
                </div>
            </section>
             <div class="footer">
                <div class="container">
                <ul class="pull-left footer-menu">
                    <li>
                        <a href="index.blade.php"> Home </a>
                        <a href="about.php"> About us </a>
                        <a href="contact.php"> Contact us </a>
                    </li>
                </ul>
                <ul class="pull-right footer-menu">
                    <li> &copy; 2015 Dlapak </li>
                </ul>
                </div>
            </div>
        </div>
        <!-- Essentials -->
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/plugins/owl-carousel/owl.carousel.js"></script>
        <script src="assets/plugins/counter/jquery.countTo.js"></script>
        <script src="assets/plugins/filestyle/bootstrap-filestyle.min.js"></script>
        <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-68907527-1', 'auto');
  ga('send', 'pageview');

</script>
    </body>
</html> 
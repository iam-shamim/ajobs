@if(!Auth::check())
    <div class="widget">
        <div class="widget-header">
            <h3>Quick Signup</h3>
        </div>
        <div class="widget-body">
            <form method="post" action="{!! route('signUp.action') !!}">
                <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                <div class="form-group">
                    <input type="text" placeholder="User Name" value="{!! old('userName') !!}" name="userName" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="text" placeholder="Email" name="email" value="{!! old('email') !!}" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" name="password" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Confirm password" name="password_confirmation" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <div class="checkbox">
                        <label for="terms" class="string optional">
                            <input type="checkbox" name="Agree" id="terms" value="Agree">
                            I Agree with Term and Conditions
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <button class="btn btn-block btn-custom">Sign Up</button>
                </div>
            </form>
        </div>
    </div>
@endif
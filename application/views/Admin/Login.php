<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>asset/admin/style/style.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <div class="container">
        <div class="card card-container">
           
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="<?php echo base_url(); ?>AdminLogin/loginSubmit" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <label for="login">Username:</label>
                <input type="text" id="inputEmail" class="form-control" name="username" placeholder="Username" required autofocus>
                <label for="pass">Password:</label>
                <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <?php echo validation_errors(); ?><?php if (isset($loginerror)) { ?><?php echo $loginerror; ?><?php } ?>
                <input type="submit" class="btn btn-lg btn-primary btn-block btn-signin" value="Login">
                
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                Forgot the password?
            </a>
        </div><!-- /card-container -->
    </div><!-- /container -->
<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<?php echo base_url();?>auth/login">Login</a></li>
                  
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="container py-3">
<div class="row">
    <div class="col-md-12">
    <div class="card-body">
    <h2 class="text-center text-info">Masuk</h2>
    <p class="text-gray text-center"> Belum punya akun ? <span class="text-info"><a href="<?php echo base_url();?>Auth/registrasi">Daftar</a></span></p>
    <?php echo validation_errors(); ?><?php if (isset($loginerror)) { ?><?php echo $loginerror; ?><?php } ?>
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="<?php echo base_url(); ?>Home/loginSubmit" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <label for="login">Username:</label>
                <input type="text" id="inputEmail" class="form-control" name="customer_username" placeholder="Username" required autofocus>
                <label for="pass">Password:</label>
                <input type="password" id="inputPassword" class="form-control mb-3" name="customer_password" placeholder="Password" required>
              
                
                <input type="submit" class="btn btn-lg btn-info btn-block btn-signin" value="Login">
                
            </form><!-- /form -->
            <a href="#" class="forgot-password text-info">
               
            </a>
        </div><!-- /card-container -->
    </div>
</div>
</div>

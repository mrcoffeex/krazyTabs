<?php  
    require '_config.php';

    $title = $my_project_name;    
    $email = @$_GET['email'];
?>

<!DOCTYPE html>
<html lang="en">

<?php include '_head.php'; ?>

<body class="sidebar-dark">
    <div class="container-scroller">

        <div class="container-fluid page-body-wrapper full-page-wrapper">
      
            <div class="content-wrapper d-flex align-items-stretch auth auth-img-bg">
                <div class="row flex-grow">
                    <div class="col-lg-6 d-flex align-items-center justify-content-center">
                        <div class="auth-form-transparent text-left p-3">
                            <div class="brand-logo">
                                <img src="images/logo-long.png" alt="logo">
                            </div>
                            <h4>We code our way to innovation!</h4>
                            <h6 class="font-weight-light">Login to Access Interface</h6>
                            <form class="pt-3" method="post" enctype="multipart/form-data" action="config/auth" onsubmit="validate_login(this)">
                                <div class="form-group">
                                    <label>Username</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend bg-transparent">
                                        <span class="input-group-text bg-transparent border-right-0">
                                            <i class="ti-user text-primary"></i>
                                        </span>
                                        </div>
                                        <input type="email" name="tabs_log_username" class="form-control form-control-lg border-left-0" placeholder="Email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend bg-transparent">
                                        <span class="input-group-text bg-transparent border-right-0">
                                            <i class="ti-lock text-primary"></i>
                                        </span>
                                        </div>
                                        <input type="password" name="tabs_log_password" class="form-control form-control-lg border-left-0" placeholder="Password">                        
                                    </div>
                                </div>
                                <div class="my-2 d-flex justify-content-between align-items-center">
                                    <div class="form-check form-check-primary">
                                        <label class="form-check-label text-muted">
                                        <input type="checkbox" class="form-check-input">
                                        Keep me signed in
                                        </label>
                                    </div>
                                    <a href="#" class="auth-link text-black">Forgot password?</a>
                                </div>
                                <div class="my-3">
                                    <button type="submit" name="tabs_login" id="tabs_login" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">LOGIN</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-6 login-half-bg d-flex flex-row">
                        <p class="text-white font-weight-medium text-center flex-grow align-self-end"><?= $my_project_name; ?> &copy; <?= date("Y"); ?>  All rights reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

  <?php include '_scripts.php'; ?>

  <?php include '_alerts.php'; ?>

</body>

</html>


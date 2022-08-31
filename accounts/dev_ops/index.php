<?php  
    require '../../config/includes.php';
    require 'session.php';

    $title = "Welcome ".$tabs_user_fullname;
    $upp_description = '<span class="text-primary" id="live_system_logs_count"></span> system logs today.';
?>

<!DOCTYPE html>
<html lang="en">

<?php include '_head.php'; ?>

<body>
    <div class="container-scroller">
        
        <?php include '_navbar.php'; ?>
        
        <div class="container-fluid page-body-wrapper">

        <?php include '_sidebar.php'; ?>

            <div class="main-panel">
                <div class="content-wrapper">
                    
                    <?php include '_breads.php'; ?>

                  
                        <div class="col-md-12 transparent">
                            <div class="row">
                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-tale">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">Events</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3">26</span> Barangays
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-dark-blue">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">Candidates</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3">12,318</span> Aug 2022
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-light-blue">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">Judges</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3">1,876</span> Aug 2022
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>

                
                <?php include '_footer.php'; ?>

                </div>
            </div>
        </div>
    </div>

    <!-- modals -->

    <?php include '_scripts.php'; ?>

</body>

</html>


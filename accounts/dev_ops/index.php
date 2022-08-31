<?php  
    require '../../config/includes.php';
    require 'session.php';

    $title = "Welcome ".$e4ps_user_fullname;
    $upp_description = '<span class="text-primary" id="live_system_logs_count"></span> system logs today.';
?>

<!DOCTYPE html>
<html lang="en">

<?php include '_head.php'; ?>

<body class="sidebar-dark">
    <div class="container-scroller">
        
        <?php include '_navbar.php'; ?>
        
        <div class="container-fluid page-body-wrapper">
        
        <?php include '_settings-panel.php'; ?>

        <?php include '_sidebar.php'; ?>

            <div class="main-panel">
                <div class="content-wrapper">
                    
                    <?php include '_breads.php'; ?>

                    <div class="row">
                        <div class="col-md-12 transparent">
                            <div class="row">
                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-tale">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">Digos City's Barangay</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3">26</span> Barangays
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-dark-blue">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">Approved 4ps</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3">12,318</span> Aug 2022
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-light-blue">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">4Ps Applicants</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3">1,876</span> Aug 2022
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-light-danger">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">For 4Ps Approval</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3">756</span> Aug 2022
                                        </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                            <p class="card-title">Year</p>
                            <p class="font-weight-500">The total number of sessions within the date range. It is the period time a user is actively engaged with your website, page or app, etc</p>
                            <div class="d-flex flex-wrap mb-5">
                                <div class="me-5 mt-3">
                                <p class="text-muted">Sample</p>
                                <h3 class="text-primary fs-30 font-weight-medium">12.3k</h3>
                                </div>
                                <div class="me-5 mt-3">
                                <p class="text-muted">Sample</p>
                                <h3 class="text-primary fs-30 font-weight-medium">14k</h3>
                                </div>
                                <div class="me-5 mt-3">
                                <p class="text-muted">4ps</p>
                                <h3 class="text-primary fs-30 font-weight-medium">71.56%</h3>
                                </div>
                                <div class="mt-3">
                                <p class="text-muted">Population</p>
                                <h3 class="text-primary fs-30 font-weight-medium">34040</h3>
                                </div> 
                            </div>
                            <canvas id="order-chart"></canvas>
                            </div>
                        </div>
                        </div>
                        <div class="col-md-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                            <div class="d-flex justify-content-between">
                            <p class="card-title">Households</p>
                            <a href="#" class="text-info">View all</a>
                            </div>
                            <p class="font-weight-500">The total number of sessions within the date range. It is the period time a user is actively engaged with your website, page or app, etc</p>
                            <div id="sales-legend" class="chartjs-legend mt-4 mb-2"></div>
                            <canvas id="sales-chart"></canvas>
                            </div>
                        </div>
                        </div>
                    </div>
                   

                    <div class="row">
                        <div class="col-md-6 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                            <p class="card-title"><i class="ti-calendar"></i> Announcements</p>
                            <ul class="icon-data-list">
                                <li>
                                <div class="d-flex">
                                    <img src="../../images/faces/face1.jpg" alt="user">
                                    <div>
                                    <p class="text-info mb-1">John Raven Manulat</p>
                                    <p class="mb-0">e4Ps Map dashboard have been created and updated</p>
                                    <small>9:30 am</small>
                                    </div>
                                </div>
                                </li>
                                <li>
                                <div class="d-flex">
                                    <img src="../../images/faces/face2.jpg" alt="user">
                                    <div>
                                    <p class="text-info mb-1">John Vianne Murcia</p>
                                    <p class="mb-0">You have done a great job </p>
                                    <small>10:30 am</small>
                                    </div>
                                </div>
                                </li>
                                <li>
                                <div class="d-flex">
                                <img src="../../images/faces/face3.jpg" alt="user">
                                <div>
                                <p class="text-info mb-1">Joane May Delima</p>
                                <p class="mb-0">Data have been in sync with the Map</p>
                                <small>11:30 am</small>
                                </div>
                                </div>
                                </li>
                                <li>
                                <div class="d-flex">
                                    <img src="../../images/faces/face4.jpg" alt="user">
                                    <div>
                                    <p class="text-info mb-1">Conrado Panerio</p>
                                    <p class="mb-0">Presentation of the Project is done!</p>
                                    <small>8:50 am</small>
                                    </div>
                                </div>
                                </li>
                                <li>
                                <div class="d-flex">
                                    <img src="../../images/faces/face5.jpg" alt="user">
                                    <div>
                                    <p class="text-info mb-1">Marlon Suelto</p>
                                    <p class="mb-0">Digos City Map is finished!</p>
                                    <small>9:00 am</small>
                                    </div>
                                </div>
                                </li>
                            </ul>
                            </div>
                        </div>
                        </div>
                        <div class="col-md-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-title"><i class="ti-server"></i> System Logs</p>
                                    <p class="card-subtitle">
                                        Legend: 
                                        <span class="text-e4ps-yellow">auth</span>/
                                        <span class="text-success">insert</span>/
                                        <span class="text-danger">delete</span>/
                                        <span class="text-info">update</span>
                                    </p>
                                    <div class="table-responsive">
                                        <table class="table table-dark table-hover">
                                            <thead>
                                                <tr>
                                                    <th class="text-center col-sm-2">Time</th>
                                                    <th class="col-sm-10">Log</th>
                                                </tr>
                                            </thead>
                                            <tbody id="live_system_logs"></tbody>
                                        </table>
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


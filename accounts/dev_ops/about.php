<?php  
    require '../../config/includes.php';
    require 'session.php';

    $title = "About KrazyApps";
    $upp_description = "Good. Better. Krazy!";
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
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h3><i class="ti-info-alt"></i> About Us</h3>
                                            <p style="font-size: 15px; text-align: justify;">
                                               We create/provides solutions to companies and individuals in a way of apps/softwares. Since 2017 we created several apps and helped a few companies to improved their transactions when it comes to efficiency and accuracy. Aside from the great performance and flexibility of our services. We offer Krazy affordable rates in the market.<br>
                                               Solutions that we offer:<br>
                                            </p>
                                            <ul>
                                                <li>Automated Tabulation</li>
                                                <li>Management Systems</li>
                                                <li>Information Systems</li>
                                                <li>Inventory Systems</li>
                                                <li>Online Customized Apps</li>
                                            </ul>

                                            <p class="text-primary" style="font-weight: bold;">
                                                Email: kjohn0319@gmail.com <br>
                                                Cel #: 0912 161 0673
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


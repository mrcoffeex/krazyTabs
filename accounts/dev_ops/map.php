<?php  
    require '../../config/includes.php';
    require 'session.php';

    $title = "Digos City Map";
    $upp_description = 'Pantawid Pamilyang Pilipino Program';
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
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            
                            <iframe style="width: 100%; height: 1080px; position: relative;" src="https://www.arcgis.com/apps/dashboards/03ac543fa1ea440286b3c20003a08435" allowfullscreen></iframe>
                            
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


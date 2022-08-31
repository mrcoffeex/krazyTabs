<?php  
    require '../../config/includes.php';
    require 'session.php';

    $redirect = @$_GET['cd'];

    $title = getEventTitle($redirect)." Candidates";
    $upp_description = '<span class="text-primary">'.countCategories($redirect).'</span> results.';
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

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                                <tr class="table-dark">
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>Designation</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                    $getCandidates = selectCandidatesByEvent($redirect);
                                                    while ($candidate=$getCandidates->fetch(PDO::FETCH_ASSOC)) {
                                                ?>
                                                <tr>
                                                    <td><?= $candidate['tabs_can_number'] ?></td>
                                                    <td><?= $candidate['tabs_can_name'] ?></td>
                                                    <td><?= $candidate['tabs_can_desc'] ?></td>
                                                </tr>

                                                <?php } ?>

                                            </tbody>
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

    <?php include '_scripts.php'; ?>

    <?php include '_alerts.php'; ?>

</body>

</html>


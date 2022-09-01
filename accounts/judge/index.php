<?php  
    require '../../config/includes.php';
    require 'session.php';

    $title = "Judge ".$tabs_user_fullname;
    $upp_description = 'Welcome to <span class="text-primary">'.getEventTitle($tabs_event_id).'</span>';
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
                                    <div class="card card-dark-blue">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">Candidates</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3"><?= countCandidatesByEvent($tabs_event_id) ?></span>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-light-blue">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">Categories</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3"><?= countCategories($tabs_event_id) ?></span>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <h1 class="display-4 text-center">Categories</h1>
                                </div>

                                <?php  
                                    //populate categories
                                    $getCategories = selectCategories($tabs_event_id);
                                    while ($category=$getCategories->fetch(PDO::FETCH_ASSOC)) {
                                ?>

                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-tale">
                                        <div class="card-body">
                                            <p class="fs-6 mb-1 text-center">
                                                <?= $category['tabs_cat_title'] ?>
                                            </p>
                                        </div>
                                        <a href="category?rand=<?= my_rand_str(30) ?>&cd=<?= $category['tabs_cat_id'] ?>" class="stretched-link" title="click to open this category ..."></a>
                                    </div>
                                </div>
                                
                                <?php } ?>

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

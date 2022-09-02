<?php  
    require '../../config/includes.php';
    require 'session.php';

    $redirect = @$_GET['cd'];

    $title = "Judge ".$tabs_user_fullname;
    $upp_description = "<a href='./' class='text-decoration-none text-dark'><i class='ti-angle-double-left'></i> ".getEventTitleByCatId($redirect)."</a> <span class='text-primary'>".getCategoryTitle($redirect)."</span>";
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
                                    <h3 class="card-title text-center">
                                        <span class="text-primary"><?= getCategoryTitle($redirect) ?></span> Category
                                    </h3>
                                    <div class="table-sorter-wrapper col-lg-12 table-responsive">
                                        <table class="table table-hover table-bordered" id="sortable-table-1">
                                            <thead>
                                                <tr class="table-dark">
                                                    <th class="sortStyle text-center">Rate <i class="ti-angle-down"></i></th>
                                                    <th class="sortStyle text-center"># <i class="ti-angle-down"></i></th>
                                                    <th class="sortStyle">Candidate <i class="ti-angle-down"></i></th>
                                                    <?php  
                                                        //get criteria
                                                        $getCriHead=selectCriteria($redirect);
                                                        while ($criHead=$getCriHead->fetch(PDO::FETCH_ASSOC)) {
                                                    ?>
                                                    <th class="sortStyle text-center"><?= $criHead['tabs_cri_title'] ?> <i class="ti-angle-down"></i></th>
                                                    <?php } ?>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php  
                                                    //populate candidates join to results scores condition with judge id (tabs_user_id)
                                                    $getCandidates=selectCandidatesByEvent($tabs_event_id);
                                                    while ($candidate=$getCandidates->fetch(PDO::FETCH_ASSOC)) {
                                                ?>
                                                <tr>
                                                    <td class="text-center">
                                                        <a href="rate?rand=<?= my_rand_str(30) ?>&catId=<?= $redirect ?>&canId=<?= $candidate['tabs_can_id'] ?>">
                                                            <button 
                                                            type="button" 
                                                            class="btn btn-primary btn-sm">
                                                            <i class="ti-star"></i>
                                                            </button>
                                                        </a>
                                                    </td>
                                                    <td class="text-center"><?= $candidate['tabs_can_number'] ?></td>
                                                    <td><?= $candidate['tabs_can_name'] ?></td>
                                                    <?php  
                                                        //get criteria
                                                        $getCriRow=selectCriteria($redirect);
                                                        while ($criRow=$getCriRow->fetch(PDO::FETCH_ASSOC)) {
                                                    ?>
                                                    <td class="text-center"><?= getCandidateResultByCriteria($criRow['tabs_cri_id'], $redirect, $candidate['tabs_can_id'], $tabs_user_id) ?></td>
                                                    <?php } ?>
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


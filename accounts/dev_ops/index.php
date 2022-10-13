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
                                            <span class="fs-3"><?= countEvents() ?></span>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-dark-blue">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">Candidates</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3"><?= countCandidates() ?></span>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 mb-4 stretch-card transparent">
                                    <div class="card card-light-blue">
                                        <div class="card-body">
                                        <p class="fs-6 mb-2">Judges</p>
                                        <p class="fw-bold mb-2">
                                            <span class="fs-3"><?= countJudges() ?></span>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">

                                <div class="col-md-12">
                                    <p class="fs-6 mb-2"><i class="ti-star"></i> Highlighted Events</p>
                                </div>

                                <?php  
                                    //get highligt events
                                    $getEvents=selectEventsWithHighlights();
                                    while ($event=$getEvents->fetch(PDO::FETCH_ASSOC)) {

                                        
                                        //get categories
                                        $getCategories=selectCategories($event['tabs_event_id']);
                                        $countCategories=$getCategories->rowCount();

                                        $candidates = countCandidatesByEvent($event['tabs_event_id']);
                                        $judges = countJudgesByEvent($event['tabs_event_id']);
                                ?>

                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table table-hover table-bordered">
                                                    <thead>
                                                        <tr class="table-dark">
                                                            <th 
                                                            class="p-3 text-center" 
                                                            colspan="<?= 1 + $countCategories; ?>">
                                                            <?= $event['tabs_event_title'] ?>
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                        <tr>

                                                            <?php
                                                                while ($category=$getCategories->fetch(PDO::FETCH_ASSOC)) {

                                                                $criterias = countCriteria($category['tabs_cat_id']);
                                                                $expectedScoreCount = $candidates * $criterias * $judges;
                                                            ?>
                                                            
                                                            <td class="p-3 text-center">
                                                                <a href="category_results?rand=<?= my_rand_str(30) ?>&cd=<?= $category['tabs_cat_id'] ?>" onclick="window.open(this.href, 'mywin', 'left=20, top=20, width=1366, height=768, toolbar=1, resizable=0'); return false;">
                                                                    <button 
                                                                        type="button" 
                                                                        class="btn btn-primary btn-sm">
                                                                        <i class="ti-bar-chart"></i> 
                                                                        <?= $category['tabs_cat_title'] ?> 
                                                                        <?= countCategoryResults($category['tabs_cat_id']) . "/" . $expectedScoreCount ?>
                                                                    </button>
                                                                </a>
                                                            </td>

                                                            <?php } ?>

                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
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


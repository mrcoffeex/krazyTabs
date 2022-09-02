<?php  
    require '../../config/includes.php';
    require 'session.php';

    $redirect = @$_GET['cd'];

    //get event_id
    // $eventID = getEventIdByCatId($redirect);
    // $candidateCount = countCandidatesByEvent($eventID);

    $title = getEventTitle($redirect)." Results";
    $upp_description = '<span class="text-primary">'.countCategories($redirect).'</span> Categories';
?>

<!DOCTYPE html>
<html lang="en">

<?php include '_head.php'; ?>

<body>
    <div class="container-scroller">
        
        <div class="container-fluid page-body-wrapper" style="padding-top: 0px;">

            <div class="main-panel" style="width: 100%;">
                <div class="content-wrapper">
                    
                    <?php include '_breads.php'; ?>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="table-sorter-wrapper col-lg-12 table-responsive">
                                                <table class="table table-hover table-bordered" id="sortable-table-1">
                                                    <thead>
                                                        <tr class="table-dark">
                                                            <th class="sortStyle p-2 text-center"># <i class="ti-angle-down"></th>
                                                            <th class="sortStyle p-2 text-center">Candidate <i class="ti-angle-down"></th>
                                                            <?php  
                                                                //populate judeges
                                                                $getCategoryHeaders=selectCategories($redirect);
                                                                while ($categoryHead=$getCategoryHeaders->fetch(PDO::FETCH_ASSOC)) {
                                                            ?>
                                                            <th class="sortStyle p-2 text-center" title="<?= getCategoryTitle($categoryHead['tabs_cat_id']) ?>">
                                                                <?= getCategoryTitle($categoryHead['tabs_cat_id']) ?> <span class="text-primary"><?= getCategoryPercentage($categoryHead['tabs_cat_id'])."%" ?></span> <i class="ti-angle-down"></i> 
                                                            </th>
                                                            <?php } ?>
                                                            <th class="sortStyle p-2 text-center">Total <i class="ti-angle-down"></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php 
                                                            //populate candidates
                                                            $getCandidates=selectCandidatesByEvent($redirect);
                                                            while ($catList=$getCandidates->fetch(PDO::FETCH_ASSOC)) {
                                                        ?>
                                                        <tr>
                                                            <td class="p-2 text-center"><?= $catList['tabs_can_number'] ?></td>
                                                            <td class="p-2 text-center"><?= $catList['tabs_can_name'] ?></td>
                                                            <?php  
                                                                //populate judeges
                                                                $totalScore=0;
                                                                $getCategories=selectCategories($redirect);
                                                                while ($category=$getCategories->fetch(PDO::FETCH_ASSOC)) {

                                                                    $criteriaCount = countCriteria($category['tabs_cat_id']);

                                                                    //populate judeges
                                                                    $allJudgeAverage=0;
                                                                    $getAllJudgesRow=selectCategoryActiveJudges($category['tabs_cat_id']);
                                                                    $countActiveJudges=$getAllJudgesRow->rowCount();
                                                                    while ($judgesRow=$getAllJudgesRow->fetch(PDO::FETCH_ASSOC)) {

                                                                        $allscores=0;
                                                                        $getCriteriaScore=selectCriteria($category['tabs_cat_id']);
                                                                        while ($criteriaScore=$getCriteriaScore->fetch(PDO::FETCH_ASSOC)) {

                                                                            $allscores += getCandidateResultByCriteria($criteriaScore['tabs_cri_id'], $category['tabs_cat_id'], $catList['tabs_can_id'], $judgesRow['tabs_user_id']);

                                                                        }

                                                                        $judgeAverage = $allscores / $criteriaCount;
                                                                        $allJudgeAverage += $judgeAverage;
                                                                    }

                                                                    $realAverage = calculateIfZero($allJudgeAverage, $countActiveJudges, "division", 2);

                                                                    //get criteriaMax 
                                                                    $getScoreMax=selectCriteria($category['tabs_cat_id']);
                                                                    $scoreMax=$getScoreMax->fetch(PDO::FETCH_ASSOC);

                                                                    $finalCategoryPercentage = getAverageValueByCategoryPercentage($realAverage, $scoreMax['tabs_cri_score_max'], getCategoryPercentage($category['tabs_cat_id']));

                                                                    $totalScore += $finalCategoryPercentage;
                                                            ?>
                                                            <td class="p-2 text-center"><?= $finalCategoryPercentage; ?></td>
                                                            <?php } ?>

                                                            <td class="p-2 text-center"><?= RealNumber($totalScore, 2) ?></td>
                                                        </tr>
                                                        <?php } ?>
                                                    </tbody>
                                                </table>
                                            </div>
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

    <?php include '_scripts.php'; ?>

    <?php include '_alerts.php'; ?>

</body>

</html>


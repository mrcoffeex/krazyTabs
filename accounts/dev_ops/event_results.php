<?php  
    require '../../config/includes.php';
    require 'session.php';

    $redirect = @$_GET['cd'];

    //get event_id
    $eventID = getEventIdByCatId($redirect);

    $criteriaCount = countCriteria($redirect);
    $candidateCount = countCandidatesByEvent($eventID);

    $title = getEventTitleByCatId($redirect).": ".getCategoryTitle($redirect)." Category Results";
    $upp_description = '<span class="text-primary">'.countCategoryResults($redirect).'</span> results in <span class="text-success">'.$candidateCount."</span> Candidates";
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
                                                                $getAllJudges=selectCategoryActiveJudges($redirect);
                                                                $tableDataCount=$getAllJudges->rowCount();
                                                                while ($judges=$getAllJudges->fetch(PDO::FETCH_ASSOC)) {
                                                            ?>
                                                            <th class="sortStyle p-2 text-center" title="<?= getJudgeName($judges['tabs_user_id']) ?>"><?= limitString(getJudgeName($judges['tabs_user_id']), 10) ?> <i class="ti-angle-down"></th>
                                                            <?php } ?>
                                                            <th class="sortStyle p-2 text-center">Total <i class="ti-angle-down"></th>
                                                            <th class="sortStyle p-2 text-center">Avg <i class="ti-angle-down"></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php 
                                                            //populate candidates
                                                            $getCandidates=selectCandidatesByEvent($eventID);
                                                            while ($catList=$getCandidates->fetch(PDO::FETCH_ASSOC)) {
                                                        ?>
                                                        <tr>
                                                            <td class="p-2 text-center"><?= $catList['tabs_can_number'] ?></td>
                                                            <td class="p-2 text-center"><?= $catList['tabs_can_name'] ?></td>
                                                            <?php  
                                                                //populate judeges
                                                                $allJudgeAverage=0;
                                                                $getAllJudgesRow=selectCategoryActiveJudges($redirect);
                                                                $countActiveJudges=$getAllJudgesRow->rowCount();
                                                                while ($judgesRow=$getAllJudgesRow->fetch(PDO::FETCH_ASSOC)) {

                                                                    $allscores=0;
                                                                    $getCriteriaScore=selectCriteria($redirect);
                                                                    while ($criteriaScore=$getCriteriaScore->fetch(PDO::FETCH_ASSOC)) {

                                                                        $allscores += getCandidateResultByCriteria($criteriaScore['tabs_cri_id'], $redirect, $catList['tabs_can_id'], $judgesRow['tabs_user_id']);

                                                                    }

                                                                    $judgeAverage = $allscores / $criteriaCount;
                                                                    $allJudgeAverage += $judgeAverage;
                                                            ?>
                                                            <td class="p-2 text-center"><?= $judgeAverage; ?></td>
                                                            <?php } ?>
                                                            <td class="p-2 text-center">
                                                                <?= 
                                                                RealNumber($allJudgeAverage, 3); 
                                                                ?>
                                                            </td>
                                                            <td class="p-2 text-center">
                                                                <?= 
                                                                calculateIfZero($allJudgeAverage, $countActiveJudges, "division", 3); 
                                                                ?>
                                                            </td>
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


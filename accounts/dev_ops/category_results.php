<?php  
    require '../../config/includes.php';
    require 'session.php';

    $redirect = @$_GET['cd'];

    //get event_id
    $eventID = getEventIdByCatId($redirect);

    $criteriaCount = countCriteria($redirect);
    $candidateCount = countCandidateResultByEventCategory($eventID, $redirect);

    $title = getEventTitleByCatId($redirect).": ".getCategoryTitle($redirect)." Category Results";
    $upp_description = '<span class="text-primary">'.countCategoryResults($redirect).'</span> results in <span class="text-success">'.$candidateCount."</span> Candidates";
?>

<!DOCTYPE html>
<html lang="en">

<?php include '_head.php'; ?>

<body id="print-page-scale">
    <div class="container-scroller">
        
        <div class="container-fluid page-body-wrapper" style="padding-top: 0px;">

            <div class="main-panel" style="width: 100%;">
                <div class="content-wrapper">
                    
                    <div class="row mb-3">
                        <div class="col-md-12"> 
                            <div class="row">
                                <div class="col-12 col-xl-8 mb-2 mb-xl-0">
                                    <h3 class="font-weight-bold"><?= $title; ?></h3>
                                    <h6 class="font-weight-normal mb-0"><?= $upp_description ?></h6>
                                </div>
                                <div class="col-12 col-xl-4 no-print">
                                    <div class="justify-content-end d-flex">
                                        <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                                            <button class="btn btn-success" type="button" onclick="window.print()">
                                                Print Result
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12 mb-3">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-sorter-wrapper col-lg-12 table-responsive">
                                        <table class="table table-hover table-bordered" id="sortable-table-1">
                                            <thead>
                                                <tr>
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
                                                    <th class="sortStyle p-2 text-center"><?= getCategoryPercentage($redirect) ?>% <i class="ti-angle-down"></th>
                                                    <th class="sortStyle p-2 text-center">Rank <i class="ti-angle-down"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php 
                                                    //populate candidates
                                                    $getCandidates=getCandidateResultByEventCategory($eventID, $redirect);
                                                    while ($catList=$getCandidates->fetch(PDO::FETCH_ASSOC)) {
                                                ?>
                                                <tr>
                                                    <td class="p-2 text-center"><?= getCandidateNumber($catList['tabs_can_id']) ?></td>
                                                    <td class="p-2 text-center"><?= getCandidateName($catList['tabs_can_id']) ?></td>
                                                    <?php  
                                                        //populate judeges
                                                        $allTotal=0;
                                                        $getAllJudgesRow=selectCategoryActiveJudges($redirect);
                                                        $countActiveJudges=$getAllJudgesRow->rowCount();
                                                        while ($judgesRow=$getAllJudgesRow->fetch(PDO::FETCH_ASSOC)) {

                                                            $allTotalPercentage=0;
                                                            $getCriteriaScore=selectCriteria($redirect);
                                                            while ($criteriaScore=$getCriteriaScore->fetch(PDO::FETCH_ASSOC)) {

                                                                $allscores = getCandidateResultByCriteria($criteriaScore['tabs_cri_id'], $redirect, $catList['tabs_can_id'], $judgesRow['tabs_user_id']);

                                                                $allTotalPercentage += getCriteriaPercentage($allscores, $criteriaScore['tabs_cri_percentage'], $criteriaScore['tabs_cri_score_max']);

                                                            }

                                                            $allTotal += $allTotalPercentage;
                                                            
                                                            $allAverage = calculateIfZero($allTotal, $countActiveJudges, "division", 2);
                                                    ?>
                                                    <td class="p-2 text-center"><?= RealNumber($allTotalPercentage, 2) ?></td>
                                                    <?php } ?>
                                                    <td class="p-2 text-center"><?= RealNumber($allTotal, 2) ?></td>
                                                    <td class="p-2 text-center"><?= $allAverage ?></td>
                                                    <td class="p-2 text-center">
                                                        <?= RealNumber(getAverageValueByCategoryPercentage($allAverage, getCategoryPercentage($redirect)), 2); ?>
                                                    </td>
                                                    <td class="p-2 text-center hide-on-print">
                                                        <input 
                                                        type="number" 
                                                        class="form-control form-control-sm text-center border border-light" 
                                                        min="1" 
                                                        step="1" 
                                                        id="catRank_<?= $catList['tabs_can_id'] ?>" 
                                                        value="<?= getCandidateCatRank($catList['tabs_can_id'], $eventID, $redirect) ?>" 
                                                        onkeyup="updateCatRank(<?= $catList['tabs_can_id'] ?>, this.value)" autofocus>
                                                    </td>
                                                </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="row">
                                <?php  
                                    //populate judges
                                    $getJudges=selectCategoryActiveJudges($redirect);
                                    while ($judge=$getJudges->fetch(PDO::FETCH_ASSOC)) {

                                        
                                        $getList=getCandidateResultByCategoryAndJudge($redirect, $judge['tabs_user_id']);
                                        $countCandidates=$getList->rowCount();
                                ?>

                                <div class="col-lg-6 mb-3">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                                <tr>
                                                    <th class="p-2 text-center" colspan="<?= 3 + $criteriaCount; ?>"><?= getJudgeName($judge['tabs_user_id']); ?></th>
                                                </tr>
                                                <tr>
                                                    <th class="p-2 text-center"><?= $countCandidates."/".$candidateCount; ?></th>
                                                    <th class="p-2">Candidate</th>
                                                    <?php  
                                                        //get criteria
                                                        $getCriRow=selectCriteria($redirect);
                                                        while ($criRow=$getCriRow->fetch(PDO::FETCH_ASSOC)) {
                                                    ?>
                                                    <th class="p-2 text-center" title="<?= $criRow['tabs_cri_title'] ?>">
                                                        <?= limitString($criRow['tabs_cri_title'], 10) ?> 
                                                        <span class="text-primary"><?= $criRow['tabs_cri_percentage']."%" ?></span>
                                                    </th>
                                                    <?php } ?>
                                                    <th class="p-2 text-center">Total %</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php  
                                                    //populate criteria results
                                                    while ($list=$getList->fetch(PDO::FETCH_ASSOC)) {
                                                ?>
                                                <tr>
                                                    <td class="p-2 text-center"><?= getCandidateNumber($list['tabs_can_id']) ?></td>
                                                    <td class="p-2"><?= getCandidateName($list['tabs_can_id']) ?></td>
                                                    <?php  
                                                        //get criteria
                                                        $totalPercentage=0;
                                                        $getCriRow=selectCriteria($redirect);
                                                        while ($criRow=$getCriRow->fetch(PDO::FETCH_ASSOC)) {

                                                            $scores = getCandidateResultByCriteria($criRow['tabs_cri_id'], $redirect, $list['tabs_can_id'], $list['tabs_user_id']);

                                                            $totalPercentage += getCriteriaPercentage($scores, $criRow['tabs_cri_percentage'], $criRow['tabs_cri_score_max']);
                                                    ?>
                                                    <td class="p-2 text-center">
                                                        <?= $scores; ?>
                                                        <span class="float-end">( <?= RealNumber(getCriteriaPercentage($scores, $criRow['tabs_cri_percentage'], $criRow['tabs_cri_score_max']), 2)."%" ?> )</span>
                                                    </td>
                                                    <?php } ?>
                                                    <td class="p-2 text-center"><?= RealNumber($totalPercentage, 2); ?></td>
                                                </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
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

    <?php include '_scripts.php'; ?>

    <script>

        function updateCatRank(canId, catRank){

            $(document).ready(function(){

                $.get(
                    "auto_update_cat_rank.php?canId=" + canId + "&eventId=<?= $eventID ?>&catId=<?= $redirect ?>", 
                    {catRank: catRank}, 
                    function(data){

                    setTimeout(function () {
                        
                        if (data == 0) {

                            //nothing to do here

                        } else if (data == 1) {

                            toastr.error('error');

                        } else {

                            //nothing to do here

                        }

                    }, 700);

                });

            });
            
        }

    </script>

    <?php include '_alerts.php'; ?>

</body>

</html>


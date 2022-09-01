<?php  
    require '../../config/includes.php';
    require 'session.php';

    $redirect = @$_GET['cd'];

    $title = getEventTitleByCatId($redirect).": ".getCategoryTitle($redirect)." Results";
    $upp_description = '<span class="text-primary">'.countCriteria($redirect).'</span> results.';
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
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                                <tr class="table-dark">
                                                    <th>Title</th>
                                                    <th>Min-Max</th>
                                                    <th class="text-center">Edit</th>
                                                    <th class="text-center">Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php 
                                                    $getCriteria = selectCriteria($redirect);
                                                    while ($criteria=$getCriteria->fetch(PDO::FETCH_ASSOC)) {
                                                ?>
                                                <tr>
                                                    <td><?= $criteria['tabs_cri_title'] ?></td>
                                                    <td><?= $criteria['tabs_cri_score_min']." - ".$criteria['tabs_cri_score_max'] ?></td>
                                                    <td class="text-center">
                                                        <button 
                                                            type="button" 
                                                            class="btn btn-info btn-sm" 
                                                            data-bs-toggle="modal" 
                                                            data-bs-target="#edit_<?= $criteria['tabs_cri_id']; ?>">
                                                            <i class="ti-pencil"></i>
                                                        </button>
                                                    </td>
                                                    <td class="text-center">
                                                        <button 
                                                            type="button" 
                                                            class="btn btn-danger btn-sm"
                                                            data-bs-toggle="modal" 
                                                            data-bs-target="#delete_<?= $criteria['tabs_cri_id']; ?>">
                                                            <i class="ti-close"></i>
                                                        </button>
                                                    </td>
                                                </tr>

                                                <!-- edit -->
                                                <div class="modal fade" id="edit_<?= $criteria['tabs_cri_id'] ?>" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="ModalLabel"><i class="ti-pencil"></i> Update Criteria</h5>
                                                                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <form 
                                                                method="post" 
                                                                enctype="multipart/form-data" 
                                                                action="criteria_update?rand=<?= my_rand_str(30) ?>&cd=<?= $criteria['tabs_cri_id'] ?>&catId=<?= $redirect ?>">

                                                            <div class="modal-body">
                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        <div class="form-group">
                                                                            <label>Title</label>
                                                                            <input type="text" class="form-control" name="cri_title" value="<?= $criteria['tabs_cri_title'] ?>" autofocus required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div class="form-group">
                                                                            <label>Min</label>
                                                                            <input type="number" class="form-control" name="cri_min" min="0" step="0.01" value="<?= $criteria['tabs_cri_score_min'] ?>" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div class="form-group">
                                                                            <label>Max</label>
                                                                            <input type="number" class="form-control" name="cri_max" min="0" step="0.01" value="<?= $criteria['tabs_cri_score_max'] ?>" required>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="submit" name="submit_update_criteria" class="btn btn-info">Update</button>
                                                                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
                                                            </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- deactivate -->
                                                <div class="modal fade" id="delete_<?= $criteria['tabs_cri_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-sm" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="ModalLabel"><i class="ti-close"></i> Delete Category</h5>
                                                                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <form 
                                                                method="post" 
                                                                enctype="multipart/form-data" 
                                                                action="criteria_delete?rand=<?= my_rand_str(30) ?>&cd=<?= $criteria['tabs_cri_id']; ?>&catId=<?= $redirect ?>">
                                                            <div class="modal-body">
                                                                <p class="text-center">
                                                                    Trying to delete <br>
                                                                    <span class="text-danger"><?= $criteria['tabs_cri_title']; ?></span>
                                                                </p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="submit"
                                                                name="submit_delete_criteria" class="btn btn-danger">Delete</button>
                                                                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
                                                            </div>

                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>

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


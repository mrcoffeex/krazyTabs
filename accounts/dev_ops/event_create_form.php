<?php  
    require '../../config/includes.php';
    require 'session.php';

    $title = "Create Event";
    $upp_description = 'Create new event';
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
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-body">
                                    <form method="post" enctype="multipart/form-data" action="event_create" onsubmit="validateCreateEvent(this)">
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <label>Title</label>
                                                <input type="text" class="form-control" name="event_title" maxlength="255" autofocus required>
                                            </div>
                                            <div class="form-group">
                                                <label>Description</label>
                                                <textarea class="form-control" name="event_desc" rows="3" maxlength="255" required></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Year</label>
                                                <input type="number" class="form-control" name="event_year" min="2022" max="2050" required>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="checkbox" name="event_eliminate" id="event_eliminate" value="1" checked> Elimation
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Elimation Title</label>
                                                <input type="text" class="form-control" name="event_eliminate_title" id="event_eliminate_title" maxlength="255" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Elimation Candidate Count</label>
                                                <input type="number" class="form-control" name="event_eliminate_num" id="event_eliminate_num" min="1" step="1" max="20" required>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" id="submit_create_event" class="btn btn-success">Create</button>
                                            <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-body">
                                    <h3 class="card-title"><i class="ti-time"></i> Recent Events</h3>
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                                <tr class="table-dark">
                                                    <th>Title</th>
                                                    <th class="text-center">Year</th>
                                                    <th class="text-center">Settings</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php 
                                                    $getRecent=selectEventsRecent();
                                                    while ($recent=$getRecent->fetch(PDO::FETCH_ASSOC)) {
                                                ?>
                                                <tr>
                                                    <td><?= $recent['tabs_event_title'] ?></td>
                                                    <td class="text-center"><?= $recent['tabs_event_year'] ?></td>
                                                    <td class="text-center">
                                                        <?= getEliminate($recent['tabs_event_eliminate'], $recent['tabs_event_eliminate_num'], $recent['tabs_event_eliminate_title']) ?>
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
                
                <?php include '_footer.php'; ?>

                </div>
            </div>
        </div>
    </div>

    <?php include '_scripts.php'; ?>

    <?php include '_alerts.php'; ?>

</body>

</html>

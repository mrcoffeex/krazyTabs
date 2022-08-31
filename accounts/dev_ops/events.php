<?php  
    require '../../config/includes.php';
    require 'session.php';

    $title = "Events";
    $upp_description = '<span class="text-primary">'.countEvents().'</span> results.';
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
                                    <div class="form-group">
                                        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#add-user"><i class="ti-plus"></i> Create Event</button>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                                <tr class="table-dark">
                                                    <th class="text-center">Results</th>
                                                    <th class="text-center">Categories</th>
                                                    <th class="text-center">Candidates</th>    
                                                    <th>Title</th>
                                                    <th>Description</th>
                                                    <th>Year</th>
                                                    <th class="text-center">Edit</th>
                                                    <th class="text-center">Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php 
                                                    $getEvents=selectEvents();
                                                    while ($event=$getEvents->fetch(PDO::FETCH_ASSOC)) {
                                                ?>
                                                <tr>
                                                    <td class="text-center">
                                                        <button 
                                                            type="button" 
                                                            class="btn btn-primary btn-sm" 
                                                            onclick="window.location.href='event_results?rand=<?= my_rand_str(30) ?>&cd=<?= $event['tabs_event_id'] ?>'">
                                                            <i class="ti-bar-chart"></i>
                                                        </button>
                                                    </td>
                                                    <td class="text-center">
                                                        <button 
                                                            type="button" 
                                                            class="btn btn-success btn-sm" 
                                                            onclick="window.location.href='category?rand=<?= my_rand_str(30) ?>&cd=<?= $event['tabs_event_id'] ?>'">
                                                            <i class="ti-list"></i>
                                                        </button>
                                                    </td>
                                                    <td class="text-center">
                                                        <button 
                                                            type="button" 
                                                            class="btn btn-warning btn-sm" 
                                                            onclick="window.location.href='event_candidates?rand=<?= my_rand_str(30) ?>&cd=<?= $event['tabs_event_id'] ?>'">
                                                            <i class="ti-crown"></i>
                                                        </button>
                                                    </td>
                                                    <td><?= $event['tabs_event_title']; ?></td>
                                                    <td><?= $event['tabs_event_desc']; ?></td>
                                                    <td><?= $event['tabs_event_year']; ?></td>
                                                   
                                                    <td class="text-center">
                                                        <button 
                                                            type="button" 
                                                            class="btn btn-info btn-sm" 
                                                            data-bs-toggle="modal" 
                                                            data-bs-target="#edit_<?= $event['tabs_event_id']; ?>">
                                                            <i class="ti-pencil"></i>
                                                        </button>
                                                    </td>
                                                    <td class="text-center">
                                                        <button 
                                                            type="button" 
                                                            class="btn btn-danger btn-sm"
                                                            data-bs-toggle="modal" 
                                                            data-bs-target="#delete_<?= $event['tabs_event_id']; ?>">
                                                            <i class="ti-close"></i>
                                                        </button>
                                                    </td>
                                                </tr>

                                                <!-- edit -->
                                                <div class="modal fade" id="edit_<?= $event['tabs_event_id'] ?>" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="ModalLabel"><i class="ti-pencil"></i> Update Event</h5>
                                                                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <form 
                                                                method="post" 
                                                                enctype="multipart/form-data" 
                                                                action="event_update?rand=<?= my_rand_str(30) ?>&cd=<?= $event['tabs_event_id'] ?>">

                                                            <div class="modal-body">
                                                                <div class="form-group">
                                                                    <label>Title</label>
                                                                    <input type="text" class="form-control" name="event_title" value="<?= $event['tabs_event_title'] ?>" autofocus required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Description</label>
                                                                    <textarea class="form-control" name="event_desc" rows="3" required><?= $event['tabs_event_desc'] ?></textarea>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Year</label>
                                                                    <input type="text" class="form-control" name="event_year" maxlength="4" value="<?= $event['tabs_event_year'] ?>" required>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="submit" id="submit_update_event" class="btn btn-info">Update</button>
                                                                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
                                                            </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- deactivate -->
                                                <div class="modal fade" id="delete_<?= $event['tabs_event_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-sm" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="ModalLabel"><i class="ti-close"></i> Delete Event</h5>
                                                                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <form 
                                                                method="post" 
                                                                enctype="multipart/form-data" 
                                                                action="event_delete?rand=<?= my_rand_str(30) ?>&cd=<?= $event['tabs_event_id']; ?>">
                                                            <div class="modal-body">
                                                                <p class="text-center">
                                                                    Trying to delete <br>
                                                                    <span class="text-danger"><?= $event['tabs_event_title']; ?></span>
                                                                </p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="submit" id="submit_delete_event" 
                                                                name="submit_delete_event" class="btn btn-danger">Delete</button>
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
    
    <!-- modals -->
    <div class="modal fade" id="add-user" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel"><i class="ti-plus"></i> Create Event</h5>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form method="post" enctype="multipart/form-data" action="event_create" onsubmit="validateCreateEvent(this)">
                <div class="modal-body">
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" class="form-control" name="event_title" autofocus required>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" name="event_desc" rows="3" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Year</label>
                        <input type="number" class="form-control" name="event_year" min="2022" max="2050" required>
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

    <?php include '_scripts.php'; ?>

    <?php include '_alerts.php'; ?>

</body>

</html>


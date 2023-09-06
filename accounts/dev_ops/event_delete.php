<?php  
    include '../../config/includes.php';
    include 'session.php';

    $redirect = @$_GET['cd'];

    if (isset($_POST['submit_delete_event'])) {

        $delete_data = deleteEventRecords($redirect);

        if ($delete_data == true) {
            header("location: events?rand=".my_rand_str(30)."&note=event_deleted");
        }else{
            header("location: events?rand=".my_rand_str(30)."&note=error");
        }
    }
?>
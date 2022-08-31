<?php  
    include '../../config/includes.php';
    include 'session.php';

    $redirect = @$_GET['cd'];

    if (isset($_POST['event_title'])) {
        $event_title = clean_string($_POST['event_title']);
        $event_desc = clean_string($_POST['event_desc']);
        $event_year = clean_int($_POST['event_year']);

        $update_data = updateEvent($event_title, $event_desc, $event_year, $redirect);

        if ($update_data == true) {
            header("location: events?rand=".my_rand_str(30)."&note=event_updated");
        }else{
            header("location: events?rand=".my_rand_str(30)."&note=error");
        }
    }
?>
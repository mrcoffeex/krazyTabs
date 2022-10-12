<?php  
    include '../../config/includes.php';
    include 'session.php';

    if (isset($_POST['event_title'])) {
        $event_title = clean_string($_POST['event_title']);
        $event_desc = clean_string($_POST['event_desc']);
        $event_year = clean_int($_POST['event_year']);
        $event_eliminate = clean_int($_POST['event_eliminate']);
        $event_eliminate_title = clean_string($_POST['event_eliminate_title']);
        $event_eliminate_num = clean_int($_POST['event_eliminate_num']);

        $insert_data = createEvent($event_title, $event_desc, $event_year, $event_eliminate, $event_eliminate_title, $event_eliminate_num);

        if ($insert_data == true) {
            header("location: event_create_form?rand=".my_rand_str(30)."&note=event_added");
        }else{
            header("location: event_create_form?rand=".my_rand_str(30)."&note=error");
        }
    }
?>
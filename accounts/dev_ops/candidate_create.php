<?php  
    include '../../config/includes.php';
    include 'session.php';

    if (isset($_POST['name'])) {
        $name = clean_string($_POST['name']);
        $designation = clean_string($_POST['designation']);
        $event = clean_int($_POST['event']);

        $insert_data = createCandidate($name, $designation, $event);

        if ($insert_data == true) {
            header("location: candidates?rand=".my_rand_str(30)."&note=can_added");
        }else{
            header("location: candidates?rand=".my_rand_str(30)."&note=error");
        }
    }
?>
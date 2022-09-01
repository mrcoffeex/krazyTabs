<?php  
    include '../../config/includes.php';
    include 'session.php';

    $redirect = @$_GET['cd'];

    if (isset($_POST['can_number'])) {
        $can_number = clean_int($_POST['can_number']);
        $name = clean_string($_POST['name']);
        $designation = clean_string($_POST['designation']);
        $event = clean_int($_POST['event']);

        $insert_data = updateCandidate($can_number, $name, $designation, $event, $redirect);

        if ($insert_data == true) {
            header("location: candidates?rand=".my_rand_str(30)."&note=can_updated");
        }else{
            header("location: candidates?rand=".my_rand_str(30)."&note=error");
        }
    }
?>
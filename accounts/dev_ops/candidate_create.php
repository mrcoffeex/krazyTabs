<?php  
    include '../../config/includes.php';
    include 'session.php';

    if (isset($_POST['can_number'])) {
        $can_number = clean_int($_POST['can_number']);
        $name = clean_string($_POST['name']);
        $designation = clean_string($_POST['designation']);
        $event = clean_int($_POST['event']);

        if (checkCandidateNumberIfExist($event, $can_number) > 0) {
            header("location: candidates?rand=".my_rand_str(30)."&note=can_duplicate");
        } else {
            $insert_data = createCandidate($can_number, $name, $designation, $event);

            if ($insert_data == true) {
                header("location: candidates?rand=".my_rand_str(30)."&note=can_added");
            }else{
                header("location: candidates?rand=".my_rand_str(30)."&note=error");
            }
        }
    }
?>
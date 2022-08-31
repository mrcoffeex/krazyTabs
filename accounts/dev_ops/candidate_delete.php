<?php  
    include '../../config/includes.php';
    include 'session.php';

    $redirect = @$_GET['cd'];

    if (isset($_POST['submit_delete_can'])) {

        $delete_data = deleteCandidate($redirect);

        if ($delete_data == true) {
            header("location: candidates?rand=".my_rand_str(30)."&note=can_deleted");
        }else{
            header("location: candidates?rand=".my_rand_str(30)."&note=error");
        }
    }
?>
<?php  
    include '../../config/includes.php';
    include 'session.php';

    $redirect = @$_GET['cd'];

    if (isset($_POST['cri_title'])) {
        $cri_title = clean_string($_POST['cri_title']);
        $cri_min = clean_int($_POST['cri_min']);
        $cri_max = clean_int($_POST['cri_max']);
        $cri_percentage = 0;

        $insert_data = createCriteria($cri_title, $cri_min, $cri_max, $cri_percentage, $redirect);

        if ($insert_data == true) {
            header("location: criteria?rand=".my_rand_str(30)."&cd=$redirect&note=cri_added");
        }else{
            header("location: criteria?rand=".my_rand_str(30)."&cd=$redirect&note=error");
        }
    }
?>
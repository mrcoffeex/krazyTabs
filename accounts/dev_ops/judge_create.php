<?php  
    include '../../config/includes.php';
    include 'session.php';

    if (isset($_POST['name'])) {
        $name = clean_string($_POST['name']);
        $username = clean_string($_POST['username']);
        $event = clean_int($_POST['event']);

        $insert_data = createJudge($name, $username, $event);

        if ($insert_data == true) {
            header("location: judges?rand=".my_rand_str(30)."&note=judge_added");
        }else{
            header("location: judges?rand=".my_rand_str(30)."&note=error");
        }
    }
?>
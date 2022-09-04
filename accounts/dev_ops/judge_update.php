<?php  
    include '../../config/includes.php';
    include 'session.php';

    $redirect = @$_GET['cd'];

    if (isset($_POST['name'])) {
        $name = clean_string($_POST['name']);
        $username = clean_string($_POST['username']);
        $password = clean_string(encryptIt($_POST['password']));
        $event = clean_int($_POST['event']);

        if (countUsernameDuplicatesExceptMine($username, $redirect) > 0) {
            header("location: judges?rand=".my_rand_str(30)."&note=username_exists");
        }else{
            $update_data = updateJudge($name, $username, $password, $event, $redirect);
    
            if ($update_data == true) {
                header("location: judges?rand=".my_rand_str(30)."&note=judge_updated");
            }else{
                header("location: judges?rand=".my_rand_str(30)."&note=error");
            }
        }
    }
?>
<?php  
    include '../../config/includes.php';
    include 'session.php';

    if (isset($_POST['name'])) {
        $name = clean_string($_POST['name']);
        $email = clean_email($_POST['email']);
        $role = clean_int($_POST['role']);

        $insert_data = createUser($name, $email, $role);

        if ($insert_data == true) {
            header("location: users?rand=".my_rand_str(30)."&note=user_added");
        }else{
            header("location: users?rand=".my_rand_str(30)."&note=error");
        }
    }
?>
<?php  
    //put alerts here
    $currpage = str_replace('.php', '', basename($_SERVER['PHP_SELF']));

    $note = @$_GET['note'];

    if ($note == "error") {
        echo "
            <script>
                toastr.error('Error');
            </script>
        ";
    }else if ($note == "noexist" && $currpage == "index") {
        echo "
            <script>
                toastr.error('Either username or password is incorrect');
            </script>
        ";
    }else if ($note == "user_added" && $currpage == "users") {
        echo "
            <script>
                toastr.success('User has been added');
            </script>
        ";
    }else{
        echo "";
    }
?>
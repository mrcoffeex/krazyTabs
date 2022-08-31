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
    }else if ($note == "user_updated" && $currpage == "users") {
        echo "
            <script>
                toastr.success('User has been updated');
            </script>
        ";
    }else if ($note == "user_deactivate" && $currpage == "users") {
        echo "
            <script>
                toastr.success('User has been deactivated');
            </script>
        ";
    }else if ($note == "user_activate" && $currpage == "users") {
        echo "
            <script>
                toastr.success('User has been activated');
            </script>
        ";
    }else if ($note == "event_added" && $currpage == "events") {
        echo "
            <script>
                toastr.success('Event has been added');
            </script>
        ";
    }else if ($note == "event_updated" && $currpage == "events") {
        echo "
            <script>
                toastr.success('Event has been updated');
            </script>
        ";
    }else if ($note == "event_deleted" && $currpage == "events") {
        echo "
            <script>
                toastr.success('Event has been deleted');
            </script>
        ";
    }else if ($note == "judge_added" && $currpage == "judges") {
        echo "
            <script>
                toastr.success('Judge has been added');
            </script>
        ";
    }else if ($note == "judge_updated" && $currpage == "judges") {
        echo "
            <script>
                toastr.success('Judge has been updated');
            </script>
        ";
    }else{
        echo "";
    }
?>
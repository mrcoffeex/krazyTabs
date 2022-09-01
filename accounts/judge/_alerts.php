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
    }else if ($note == "score_submit" && $currpage == "rate") {
        echo "
            <script>
                toastr.success('Score has been saved');
            </script>
        ";
    }else{
        echo "";
    }
?>
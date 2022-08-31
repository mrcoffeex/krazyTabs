<?php  
    require 'config/includes.php';

    session_start();

    if (isset($_SESSION['hotkopi_tabs_session_id'])) {

        if($_SESSION['hotkopi_tabs_session_type'] == "0"){
            header("location: accounts/dev_ops/");
        }else if($_SESSION['hotkopi_tabs_session_type'] == "1"){
            header("location: accounts/adm/");
        }else if($_SESSION['hotkopi_tabs_session_type'] == "2"){
            header("location: accounts/cswdo/");
        }else if($_SESSION['hotkopi_tabs_session_type'] == "3"){
            header("location: accounts/bhw/");
        }else if($_SESSION['hotkopi_tabs_session_type'] == "4"){
            header("location: accounts/user/");
        }else{
            session_destroy();
        }
    }

?>
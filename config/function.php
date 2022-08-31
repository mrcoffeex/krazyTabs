<?php

	function encryptIt( $q ) {
	    $cryptKey  = 'Helper4webcall:9997772595';
	    $qEncoded      = base64_encode( mcrypt_encrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), $q, MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ) );
	    return( $qEncoded );

	}

	function decryptIt( $q ) {
	    $cryptKey  = 'Helper4webcall:9997772595';
	    $qDecoded      = rtrim( mcrypt_decrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), base64_decode( $q ), MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ), "\0");
	    return( $qDecoded );
	}

	function clean_string($value){

        include 'conf.php';
		
		if ($value == 0) {
            return $value;
        } else {
            if (!filter_var($value, FILTER_SANITIZE_STRING)) {
                header($input_error."?note=not_real_string");
            } else {
                return $value;
            }
        }
        
	} 

    function clean_email($value){

        include 'conf.php';

        if (!filter_var($value, FILTER_VALIDATE_EMAIL)) {
            header($input_error."?note=not_real_email");
        } else {
            return $value;
        }

    }

    function clean_int($value){

        if ($value == 0) {
            return $value;
        } else {
            if (!filter_var($value, FILTER_VALIDATE_INT)) {
                header($input_error."?note=not_real_int");
            } else {
                return $value;
            }
        }        
    }

	function get_curr_age($birthday){
        //values
        $date_now = strtotime(date("Y-m-d"));
        $value = strtotime($birthday);

        //subtract in seconds
        $date_diff = $date_now-$value;
        //convert in days
        $days = $date_diff / 86400;
        //convert in years
        $years = $days / 365.25;

        $months = $days / 30;

        $weeks = $days / 7;

        if ($days <= 28) {
            $finalset = $weeks;
            $age_ext = " weeks";
        }else if ($days <= 364) {
            $finalset = $months;
            $age_ext = " months";
        }else{
            $finalset = $years;
            $age_ext = " yrs";
        }

        //result
        $result = floor($finalset)." ".$age_ext;

        return $result;
    }

    function get_year_two_param($before, $later){
        //values
        $value_one = strtotime($later);
        $value_two = strtotime($before);

        //subtract in seconds
        $date_diff = $value_one-$value_two;
        //convert in days
        $days = $date_diff / 86400;
        //convert in years
        $years = $days / 365.25;

        //result
        $result = floor($years);

        return $result;
    }

    function get_timeage($basetime, $currenttime){
        $secs = $currenttime - $basetime;
        $days = $secs / 86400;

        if ($days < 1 ) {
            $age = 1;
        }else{
            $age = 1 + $days;
        }

        //classify weather day, month or year
        if ($age < 30.5) {
            $creditage = floor($age)." day(s)";
        }else if ($age >= 30.5 && $age < 365.25) {
            $creditage = floor(($age / 30.5))." month(s)";
        }else{
            $creditage = floor(($age / 265.25))." year(s)";
        }

        return $creditage;
    }

    function my_notify($note_text, $user, $type){

    	$my_notification_full = $note_text." - ".$user;
    	
    	//INSERT to database
    	$statement=dbaselink()->prepare("INSERT Into tabs_notification(
                                tabs_notif_type,
                                tabs_notif_text,
                                tabs_notif_date) 
                                Values(
                                    :mytype,
                                    :mynotification,
                                    NOW() )");
        $statement->execute([
            'mytype' => $type,
            'mynotification' => $my_notification_full
        ]);
    }

    function by_pin_get_user($my_pin, $my_type){

        $my_en_pin = clean_string(encryptIt($my_pin));
        
        //get the user id from 
        $statement=dbaselink()->prepare("SELECT tabs_user_id From tabs_optimum_secure Where 
                            tabs_sec_value = :pin AND 
                            tabs_sec_type = :mytype ");
        $statement->execute([
            'pin' => $my_en_pin,
            'mytype' => $my_type
        ]);
        $res=$statement->fetch(PDO::FETCH_ASSOC);

        return $res['tabs_user_id'];
    }

    function get_days($fromdate, $todate) {
        $fromdate = \DateTime::createFromFormat('Y-m-d', $fromdate);
        $todate = \DateTime::createFromFormat('Y-m-d', $todate);
        return new \DatePeriod(
            $fromdate,
            new \DateInterval('P1D'),
            $todate->modify('+1 day')
        );
    }

    function data_verify($my_ver_data){
        if ($my_ver_data == "") {
            $my_ver_data_value = "No Data";
        }else{
            $my_ver_data_value = $my_ver_data;
        }

        return $my_ver_data_value;
    }

    function my_randoms( $length ) {
        $chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";   

        $str="";
        
        $size = strlen( $chars );
        for( $i = 0; $i < $length; $i++ ) {
            $str .= $chars[ rand( 0, $size - 1 ) ];
        }

        return $str;
    }

    function my_rand_str( $length ) {
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";   

        $str="";
        
        $size = strlen( $chars );
        for( $i = 0; $i < $length; $i++ ) {
            $str .= $chars[ rand( 0, $size - 1 ) ];
        }

        return $str;
    }

    function my_rand_int( $length ) {
        $chars = "0123456789";   

        $str="";
        
        $size = strlen( $chars );
        for( $i = 0; $i < $length; $i++ ) {
            $str .= $chars[ rand( 0, $size - 1 ) ];
        }

        return $str;
    }

    function toAlpha($number){
        
        $alphabet = array('N', 'S', 'T', 'A', 'R', 'G', 'O', 'L', 'D', 'E');

        $count = count($alphabet);
        if ($number == 10){
            $alpha = "SN";
        } else if ($number <= $count) {
            return $alphabet[$number - 0];
        }
        $alpha = '';
        while ($number > 0) {
            $modulo = ($number - 0) % $count;
            $alpha  = $alphabet[$modulo] . $alpha;
            $number = floor((($number - $modulo) / $count));
        }
        return $alpha;
    }

    function latest_code($ltable, $lcolumn, $lfirstcount){

        $statement=dbaselink()->prepare("SELECT :lcolumn FROM :ltable ORDER BY :lcolumn DESC LIMIT 1");
        $statement->execute([
            'lcolumn' => $lcolumn,
            'ltable' => $ltable
        ]);
        $latestrow=$statement->fetch(PDO::FETCH_ASSOC);
        $count=$getlatest->rowCount();

        if ($count == 0) {
            $mylatestcode = $lfirstcount;
        }else{
            $mylatestcode = $latestrow[$lcolumn] + 1;
        }

        return $mylatestcode;
    }

    function compare_update($old_data , $new_data , $type_data){
        if ($old_data != $new_data) {
            $my_data_res = $type_data.": ".$old_data." -> ".$new_data." , ";
        }else{
            $my_data_res = "";
        }

        return $my_data_res;
    }

    function proper_date($datetime){

        if ($datetime == "") {
            $res = "";
        }else{
            $res = date("Md Y", strtotime($datetime));
        }

        return $res;

    }

    function proper_time($datetime){

        if ($datetime == "") {
            $res = "";
        }else{
            $res = date("g:i A", strtotime($datetime));
        }

        return $res;

    }

    function get_date_status($date){

        $thisdate = date("Y-m-d");
        $thistomorrow = date("Y-m-d", strtotime("+1 day"));
        $thisyesterday = date("Y-m-d", strtotime("-1 day"));

        if (date("Y") == date("Y", strtotime($date))) {
            if ($date == $thisdate) {
                $res = "Today";
            }else if ($date == $thistomorrow) {
                $res = "Tomorrow";
            }else if ($date == $thisyesterday) {
                $res = "Yesterday";
            }else{
                $res = date("Md", strtotime($date));
            }
        }else{
            $res = date("Md Y", strtotime($date));
        }

        return $res;

    }

    // methods_system_logs

    function get_system_logs_skin($type){

        if ($type == "auth") {
            $res = "text-tabs-yellow";
        }else if ($type == "insert") {
            $res = "text-success";
        }else if ($type == "delete") {
            $res = "text-warning";
        }else if ($type == "update") {
            $res = "text-info";
        }else if ($type == "attempt") {
            $res = "text-danger";
        }else{
            $res = "text-muted";
        }

        return $res;

    }

    function count_system_logs($date1, $date2){

        $statement=dbaselink()->prepare("SELECT tabs_notif_id From tabs_notification Where date(tabs_notif_date) BETWEEN :date1 AND :date2 ");
        $statement->execute([
            'date1' => $date1,
            'date2' => $date2
        ]);
        $countres=$statement->rowCount();

        return $countres;
    }

    //methods_users

    function selectUsers(){

        $statement=dbaselink()->prepare("SELECT * From tabs_users 
                                        Where
                                        tabs_user_id != :tabs_user_id
                                        Order By tabs_full_name ASC");
        $statement->execute([
            'tabs_user_id' => 1
        ]);

        return $statement;
    }

    function createUser($name, $email, $role){

        $usercode = clean_string(date("YmdHis")."".my_randoms(8));
        $newpassword = clean_string(encryptIt(my_rand_str(8)));

        $statement=dbaselink()->prepare("INSERT INTO tabs_users(
            tabs_user_code, 
            tabs_full_name, 
            tabs_username, 
            tabs_password, 
            tabs_user_type, 
            tabs_user_status, 
            tabs_user_profile_img, 
            tabs_user_created, 
            tabs_user_updated
            ) 
            VALUES (
                :tabs_user_code,
                :tabs_full_name,
                :tabs_username,
                :tabs_password,
                :tabs_user_type,
                :tabs_user_status,
                :tabs_user_profile_img,
                NOW(),
                NOW()
            )");
        $statement->execute([
            tabs_user_code => $usercode, 
            tabs_full_name => $name, 
            tabs_username => $email, 
            tabs_password => $newpassword, 
            tabs_user_type => $role, 
            tabs_user_status => 0, 
            tabs_user_profile_img => ''
        ]);

        if ($statement) {
            return true;
        }else{
            return false;
        }
    }

    function user_type($usertype){
        if ($usertype == 0) {
            $res = "dev";
        }else if ($usertype == 1) {
            $res = "administrator";
        }else if ($usertype == 2) {
            $res = "cswdo";
        }else if ($usertype == 3) {
            $res = "bhw";
        }else if ($usertype == 41) {
            $res = "user";
        }
        return $res;
    }
?>
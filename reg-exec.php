<?php
	//Start session
	session_start();
	
	//Include database connection details
	require_once('dbcon.php');
	
	//Array to store validation errors
	$errmsg_arr = array();
	
	//Validation error flag
	$errflag = false;
	
	//Connect to mysql server
	/*$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);
	if(!$link) {
		die('Failed to connect to server: ' . mysql_error());
	}
	
	//Select database
	$db = mysql_select_db(DB_DATABASE);
	if(!$db) {
		die("Unable to select database");
	}
	*/
	//Function to sanitize values received from the form. Prevents SQL injection
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
	
	//Sanitize the POST values
	$gname = clean($_POST['gname']);
	$name = clean($_POST['name1']);
	$email = clean($_POST['email']);
	$mobile= clean($_POST['mobile']);
	$ins_type= $_POST['ins_type'];
	$password = clean($_POST['passwd']);
	$cpassword = clean($_POST['cpasswd']);
	$ins = clean($_POST['ins1']);
	
	//Input Validations
	if($gname == '') {
		$errmsg_arr[] = 'Your group name missing';
		$errflag = true;
	}
	if($name == '') {
		$errmsg_arr[] = 'Your name missing';
		$errflag = true;
	}
	if($email == '') {
		$errmsg_arr[] = 'Your email id missing';
		$errflag = true;
	}
	if($password == '') {
		$errmsg_arr[] = 'Password missing';
		$errflag = true;
	}
	if($cpassword == '') {
		$errmsg_arr[] = 'Confirm password missing';
		$errflag = true;
	}
	if( strcmp($password, $cpassword) != 0 ) {
		$errmsg_arr[] = 'Passwords do not match';
		$errflag = true;
	}
	if($mobile == ''){
		$errmsg_arr[] = 'Your mobile number missing';
		$errflag = true;
	}
	if(strlen($mobile<10)){
		$errmsg_arr[] = 'Invalid mobile number';
		$errflag = true;
	}
	if($ins == ''){
		$errmsg_arr[] = 'Institute name missing';
		$errflag = true;
	}
	if($ins_type == ''){
		$errmsg_arr[] = 'Select proper institute type.';
		$errflag = true;
	}
	//Check for duplicate login ID
	if($gname != '') {
		$qry = "SELECT * FROM reguser WHERE gname='$gname'";
		$result = mysql_query($qry);
		if($result) {
			if(mysql_num_rows($result) > 0) {
				$errmsg_arr[] = 'This Team name has already been taken. Please choose some another group name.';
				$errflag = true;
			}
			@mysql_free_result($result);
		}
		else {
			die("Query failed");
		}
	}
	
	//If there are input validations, redirect back to the registration form
	if($errflag) {
		$_SESSION['ERRMSG_ARR'] = $errmsg_arr;
		session_write_close();
		header("location: register.php");
		exit();
	}

	//Create INSERT query
	$qry = "INSERT INTO reguser VALUES (NULL, '$gname', '$password', '$name', '$email', '$mobile', '$ins_type', '$ins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);";
	$result = @mysql_query($qry);
	
	/*
	$subject="Registration details for BrainStormer 2012";
	
	$body =     "Dear ".$name."\n\n"
	            ."You have been successfully registered.\n"
				."Your login details:\n"
				."Group Name: " .$gname. "\n"
				."Your password: ".$password.".\n\n";
	
	$message=$body;
	$from = "donotreply@brainstormer.co.in";
	$headers = $headers .= "Content-type: text; charset=iso-8859-1\r\n";
	$headers .= "From: BrainStormer 2012"." / ".$from."\r\n";
	*/			
	
	//Check whether the query was successful or not
	if($result) {
	    //mail($email,$subject,$message, $headers);
		$_SESSION['gname'] = $gname;
		session_write_close();
		header("location: register1.php");
		exit();
	}else {
		die("Query failed");
	}
?>
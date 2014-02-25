<?php
	//Start session
	session_start();
	
	//Include database connection details
	require_once('config.php');
	
	//Array to store validation errors
	$errmsg_arr = array();
	
	//Validation error flag
	$errflag = false;
	
	//Connect to mysql server
	$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);
	if(!$link) {
		die('Failed to connect to server: ' . mysql_error());
	}
	
	//Select database
	$db = mysql_select_db(DB_DATABASE);
	if(!$db) {
		die("Unable to select database");
	}
	
	//Function to sanitize values received from the form. Prevents SQL injection
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
	
	$gname = clean($_POST['gname']);
	$email = clean($_POST['email']);
	$password = clean($_POST['passwd']);
	$cpassword = clean($_POST['cpasswd']);
	
	
	if($gname==''){
	echo "Enter your group name";
	exit();
	}
	if($email==''){
	echo "Enter your email id";
	exit();
	}
	if($password != $cpassword){
	echo "Passwords do not match";
	exit();
	}
	
	
	$qry = "UPDATE members  SET passwd='$password' WHERE gname='$gname'";
	$result = @mysql_query($qry);
	
	
	if($result) {
		header("location: reset.php");
		exit();
	}else {
		die("Query failed");
	}
?>
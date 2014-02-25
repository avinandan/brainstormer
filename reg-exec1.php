<?php
	//Start session
	session_start();
	
	//Include database connection details
	require_once('dbcon.php');
	
	$errmsg_arr = array();
	
	//Validation error flag
	$errflag = false;

	
	/*$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);
	if(!$link) {
		die('Failed to connect to server: ' . mysql_error());
	}
	
	$db = mysql_select_db(DB_DATABASE);
	if(!$db) {
		die("Unable to select database");
	}
	*/
	
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
	
	
	$gname= $_SESSION['gname'];
	$name1 = clean($_POST['name1']);
	$ins = clean($_POST['ins1']);
	$name2 = clean($_POST['name2']);
	$ins2 = clean($_POST['ins2']);
	
	
	if($gname == '') {
		$errmsg_arr[] = 'You forgot to enter you team name';
		$errflag = true;
	}	
	if($name1 == '') {
		$errmsg_arr[] = 'Enter 2nd member of your team else click on Skip';
		$errflag = true;
	}
	
	if($name2 == '') {
		$errmsg_arr[] = 'Enter 3nd member of your team else click on Skip';
		$errflag = true;
	}
	
	
	if($errflag) {
		$_SESSION['ERRMSG_ARR'] = $errmsg_arr;
		session_write_close();
		header("location: register1.php");
		exit();
	}
	
	
	
	
	$qry = "UPDATE reguser SET name2='$name1', institue2='$ins', name3='$name2', institue3='$ins2' WHERE gname='$gname'";
	$result = @mysql_query($qry);
	
	if($result) {
		header("location: regok.php");
		exit();
	}else {
		die("Query failed");
	}
?>
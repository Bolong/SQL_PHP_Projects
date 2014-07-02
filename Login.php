<?php
session_start();

//login
if(!isset($_POST['submit'])){
	exit('Error!');
}
$username = htmlspecialchars($_POST['username']);
$password = sha1($_POST['password']);

//include the database info.
include('conn.php');
//check username and password
//$check_query = mysqli_query($conn,"select uid from user where username='$username' and password='$password' limit 1 ");
$check_query = mysql_query("select uid from user where username='$username' and password='$password' limit 1 ");
//if($result = mysqli_fetch_array($check_query)){
if($result = mysql_fetch_array($check_query)){
	//login successfully
	$_SESSION['username'] = $username;
	$_SESSION['userid'] = $result['uid'];
	include 'header.php';
	echo $username.' Login successfully!';
	exit;
} else {
	exit('Login Failed! Click here <a href="javascript:history.back(-1);">Go back</a> Retry');
}

return;

?>
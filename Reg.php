<?php
if(!isset($_POST['submit'])){
	exit('Error!');
}
$username = $_POST['username'];
$lastname = $_POST['lastname'];
$firstname = $_POST['firstname'];
$password = $_POST['password'];
$email = $_POST['email'];
$phone = $_POST['phone'];
//Check the register info.
if(!preg_match('/^[\w\x80-\xff]{3,15}$/', $username)){
	exit('Error: UserName character unavailable<a href="javascript:history.back(-1);">Return</a>');
}
if(strlen($password) < 6){
	exit('Error: Password lengh unavailable<a href="javascript:history.back(-1);">Return</a>');
}
if(!preg_match('/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/', $email)){
	exit('Error: Email format error e.g example@hotmail.com<a href="javascript:history.back(-1);">Return</a>');
}
//include the database info.
include('conn.php');
//chech if the username has existed
//$check_query = mysqli_query($conn,"select uid from user where username='$username' limit 1");
$check_query = mysql_query("select uid from user where username='$username' limit 1");
//if(mysqli_fetch_array($check_query)){
if(mysql_fetch_array($check_query)){
	echo 'Error: User name: ',$username,' Existed<a href="javascript:history.back(-1);">Return</a>';
	exit;
}
//insert register info.
$password = sha1($password);
$regdate = time();
$sql = "INSERT INTO user(username,lastname,firstname,password,email,phone)VALUES('$username','$lastname','$firstname','$password','$email','$phone')";
//if(mysqli_query($conn,$sql)){
if(mysql_query($sql)){
	exit('User successfully registered! Click here for <a href="index.php">Login</a>');
} else {
	echo 'Sorry! Registered failed: ',mysql_error(),'<br />';
	echo 'Click here for<a href="javascript:history.back(-1);"> Retry</a>';
}
?>

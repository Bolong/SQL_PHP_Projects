<?php
	session_start();
	unset($_SESSION['userid']);
	unset($_SESSION['username']);
	include 'header.php';
echo 'Successfully log out';
?>
<?php
session_start();
$uid = $_SESSION['userid'];
$username = $_SESSION['username'];
include 'header.php';
include ('conn.php');
$book = $_POST['selColor'];
$bookArr;
$count = count($book);
if($uid!="" &&$book != ""){
	for($i=0;$i<$count;$i++){
		$bookArr .= $book[$i].' ';
	}
	$sql = "INSERT INTO bookshelf(uid,title) VALUES ('$uid','$bookArr')";
	//if (mysqli_query($conn, $sql) ){
	if (mysql_query($sql) ){
	print "Order successfully! You have ordered $count book(s): $bookArr<br>";
	}else{
		print "Order failed";
	}
} else {
	echo 'You could not order 0 book or you are not login!<br>';
	echo 'Click here <a href="javascript:history.back(-1);">Go back</a> Retry';
}



	
	


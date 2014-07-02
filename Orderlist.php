<HTML>
<HEAD>
<TITLE>View Your Books</TITLE>
</HEAD>
</HTML>
<?php
	include ('conn.php');
	session_start();
	$username = $_SESSION['username'];
	$uid = $_SESSION['userid'];
	include 'header.php';
	$delId = $_GET[id];
if ($delId>0){
	//mysqli_query($conn,"delete from bookshelf where id = '$delId'");
	mysql_query("delete from bookshelf where id = '$delId'");
}

$sql = "select * from bookshelf where uid='$uid' ";
//$result =  mysqli_query($conn,$sql);
$result =  mysql_query($sql);
echo 'Order List'.'</br>';
echo 'Book     |     Date'.'</br>';
//while ($row = mysqli_fetch_array($result)){
while ($row = mysql_fetch_array($result)){
	echo $row[title].'|'.$row[date].'<a href="orderList.php?id='.$row[id].'"> Delete</a></br>';
}
;
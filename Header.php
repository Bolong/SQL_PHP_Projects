<?php error_reporting(0);

if($username != ""){
	echo '<a href="Info.php">'.$username.'</a>/<a href="exit.php">Log out</a>  |  <a href="orderList.php">My Books</a> |  <a href="reserve.php">Order</a> |  <a href="guestbook.php">Comment</a> <br><br><br>';
} else {
	echo '<a href="index.php">Login</a> |  <a href="index.php">My Books</a> |  <a href="index.php">Order</a> |  <a href="index.php">Comment</a> <br><br><br>';
}
?>
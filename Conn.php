<?php

$conn = mysql_connect("localhost","root","") or die("Fail to connect to database:".mysql_error());
mysql_select_db("comicstore", $conn);

?>
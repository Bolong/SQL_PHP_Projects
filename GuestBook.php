<HTML>
<HEAD>
<TITLE>Post Comment</TITLE>
<script language=JavaScript>
<!--

function InputCheck(Comment)
{
  if (Comment.detail.value == "")
  {
    alert("You didn't write anything!");
    return (false);
  }
}

//-->
</script>
</HEAD>


<?php 
	session_start();
	$username = $_SESSION['username'];
	$userid = ($_SESSION['userid']);
	include 'header.php';
?>
<BODY>
<form name="Comment" method="post" action="guestbook.php" onSubmit="return InputCheck(this)">
<p>
<label class="label">Comment (at most 100 characters): </label>
<input id="detail" name="detail" type="text" class="input" />
<p/>
<input type="submit" name="submit" value="  Submit  " class="left" />
</form>
<?php
if(!isset($_POST['submit'])){
	exit('');
}else{
include 'conn.php';
$detail = addslashes($_POST['detail']);
$sql = "INSERT INTO guestbook(uid,guest) VALUES ('$userid','$detail')";
//if(mysqli_query($conn, $sql)){
if(mysql_query($sql)){
	echo "Comment Posted";
}else{
	echo  "Post failed";
}
}
?>
</BODY>
</HTML>
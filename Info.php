<?php 
	session_start();
	$username = $_SESSION['username'];
	$userid = ($_SESSION['userid']);
	include 'header.php';
?>

<script language='javascript'>
    function InputCheck() {
     if(myform.name.value=='') {
      alert('Enter your username');
      myform.name.focus();
      return false;
      }
     if(myform.pwd.value=='') {
      alert('Enter original password!');
      myform.pwd.focus();
      return false;
      }
     if(myform.npwd.value=='') {
      alert('Enter a new password!');
      myform.name.focus();
      return false;
      }
     if(myform.npwd1.value=='') {
      alert('Confirm the new password!');
      myform.npwd1.focus();
      return false;
      }
}
</script>
<DIV>
<form action='' method='post' name='myform' onsubmit='return InputCheck();'>
<p>Username:             <input type='text' name='username'><p/><br>
<p>Original Password:    <input type='password' name='password'><p><br>
<p>New Password:         <input type='password' name='npwd'><p/><br>
<p>Confirm New Password: <input type='password' name='npwd1'><p/><br>
<input type='Submit' name='submit' value='OK'>
<input type='Reset' name='reset' value='Cancel'><br>
</form>
</DIV>
<?php
include("conn.php");
$username=trim($_POST['username']);
$password=sha1(trim($_POST['password']));
$npwd=sha1(trim($_POST['npwd']));
$npwd1=sha1(trim($_POST['npwd1']));

if($_POST['submit']) {
  
   $sql="select * from user where username='$username' and password='$password'";
   $r=mysql_query($sql);

   if(mysql_num_rows($r)>0) {
  
    if($npwd==$npwd1) {
     $sql1="update user set password='$npwd' where username='$username' and password='$password'";
     mysql_query($sql1);
     echo "Password changed";
     }
    else {
     echo "The new passwords are not the same!";
      }
   }

   else {
    echo "Username or Password is wrong!";
     }
}
?>
<!--
Original Author: Pradeep Khodke
Modified By: Adam Walls
Link: http://www.codingcage.com/2015/01/user-registration-and-login-script-using-php-mysql.html
Description: This file contains a PHP script that is called when a dba changes a standard user
             to a manager role.
-->

<?php
 ob_start();
 session_start();
 require_once 'dbconnect.php';

 // select loggedin users detail
 $res=mysql_query("SELECT * FROM user WHERE UID=".$_SESSION['user']);
 $userRow=mysql_fetch_array($res);
 ?>

<!DOCTYPE html>
<html>
	<body>
		Changing E-Mail: <?php echo $_GET['email']; ?> from user to manager.
		<?php
			$email = $_GET["email"];
			 $res1 = mysql_query("
			 UPDATE User SET userRole = 'manager' WHERE userEmail = '$email';
			 ");
			 if($res1){
				 echo "Success!!!";
			 }
			 else{
				 echo "Something strange happened. Sorry bro.";
			 }
      header("Location: dbaPage.php");
      exit;
		 ?>
	</body>
</html>
<?php ob_end_flush(); ?>

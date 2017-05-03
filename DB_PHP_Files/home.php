<!--
Original Author: Pradeep Khodke
Modified By: Adam Walls
Link: http://www.codingcage.com/2015/01/user-registration-and-login-script-using-php-mysql.html
Description: This page runs a PHP script that checks the user's role,
             and whether they are signed in and then routes them to the appropriate home page.
-->

<?php
 ob_start();
 session_start();
 require_once 'dbconnect.php';

 // if session is not set this will redirect to login page
 if( !isset($_SESSION['user']) ) {
  header("Location: index.php");
  exit;
 }
 // select loggedin users detail
 $res=mysql_query("SELECT * FROM User WHERE UID=".$_SESSION['user']);
 $userRow=mysql_fetch_array($res);
 if($userRow['userRole'] == 'dba'){
   header("Location: dbaPage.php");
 }
 else if($userRow['userRole'] == 'manager'){
   header("Location: managerPage.php");
 }
 else if($userRow['userRole'] == 'user'){
   header("Location: userPage.php");
 }
 else{
   echo $userRow['userRole'] . "</br>";
   echo "That's odd. How'd you do that?";
 }
?>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Welcome -  <?php
								if( $userRow['userRole'] == 'dba'){
									echo "(DBA) - "; echo $userRow['userEmail'];
								}
								else if($userRow['userRole'] == 'manager'){
									echo "(Manager) - "; echo $userRow['userEmail'];
								}
								else if($userRow['userRole'] == 'user'){
									echo "(user) - "; echo $userRow['userEmail'];
								}
								else{
									echo "That's very odd. How'd you do that?";
								}
						  ?>
		</title>
	</head>
	</html>
<?php ob_end_flush(); ?>

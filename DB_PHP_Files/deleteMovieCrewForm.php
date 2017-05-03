<!--
Original Author: Pradeep Khodke
Modified By: Adam M Walls
Link: http://www.codingcage.com/2015/01/user-registration-and-login-script-using-php-mysql.html
Description: This file contains a simple html form used as the home page for a user with the database administrator
role, i.e. the dba role.
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
 ?>

<!DOCTYPE html>
<html>
  <body>
    </br><h2>
      <p style="padding-left: 12cm;"><b>Delete Movie/Crew Page!</b></p>
    </h2></br>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.php">Back to Home home boi/gurl</a></li>
    </ul>
    <b>Delete Crew Member from Movie</b>
    <form action="deleteCrew.php" method = "post">
      First Name: <input type="textbox" name="fname">
      Last Name: <input type="textbox" name="lname">
      Title: <input type="textbox" name="title">
      <input type="submit" name="form" value="Submit">
    </form>
    <br>
    <b>Delete Movie</b>
    <form action="deleteMovie.php" method = "post">
      Title: <input type="textbox" name="title">
      <input type="submit" name="form" value="Submit">
    </form>
  </br>
  <ul class="dropdown-menu">
    <li><a href="logout.php?logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>
  </ul>
  </body>
</html>
<?php ob_end_flush(); ?>

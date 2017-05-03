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

 // if session is not set this will redirect to login page
 if( !isset($_SESSION['user']) ) {
  header("Location: index.php");
  exit;
 }

 // select loggedin users detail
 $res=mysql_query("SELECT * FROM User WHERE uId=".$_SESSION['user']);
 $userRow=mysql_fetch_array($res);
 ?>

<!DOCTYPE html>
<html>
	<body>
    <?php
      $addedGenre = $_POST['addGenre'];
      $toTitle = $_POST['addGenreToTitle'];
      $query = "INSERT INTO Genres(Genre, CATEGORIZED_AS)VALUES (
      '$addedGenre', (SELECT DISTINCT M.MID
                      FROM Movie AS M
                      WHERE M.Title  = '$toTitle'
                    ))";
      $r = mysql_query($query);
      header("Location: home.php");
      exit;
    ?>
  </body>
</html>
<?php ob_end_flush(); ?>

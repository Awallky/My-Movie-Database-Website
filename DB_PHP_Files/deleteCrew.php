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
    <?php
      $title = $_POST['title'];
      echo $title . "</br>";
      $q = "SELECT MID FROM Movie WHERE Title = '$title'";
      echo $q . "</br>";
      $a = mysql_query($q);
      $r = mysql_fetch_array($a);
      if($a){
        echo "Success!!!";
        echo $r['MID'] . "</br>";
      }
      else{
        echo "Fail!!!!" . "</br>";
      }
      $fname = $_POST['fname']; $lname = $_POST['lname']; $title = $_POST['title'];
      $query = "DELETE FROM Crew WHERE F_Name = '$fname' AND L_Name = '$lname' AND MOVIE_MID =" .  $r['MID'] ;
      $res = mysql_query($query);
      if($res){
        echo "Success!";
      }
      else{
        echo "Fail" . "</br>";
        echo $tag . "</br>";
        echo $mid . "</br>";
      }
      header("Location: home.php");
      exit;
    ?>
  </body>
</html>
<?php ob_end_flush(); ?>

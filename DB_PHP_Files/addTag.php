<!--
Original Author: Pradeep Khodke
Modified By: Adam M Walls
Link: http://www.codingcage.com/2015/01/user-registration-and-login-script-using-php-mysql.html
Description:
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
 $res=mysql_query("SELECT * FROM user WHERE UID=".$_SESSION['user']);
 $userRow=mysql_fetch_array($res);
 ?>

 <!DOCTYPE html>
 <html>
  <body>
    <?php
      $tag = $_POST['tag'];
      $mid = $_POST['mid'];
      $query = "INSERT INTO Tags (Tag, TAGGED_AS)VALUES (
                '$tag', $mid)";
      $res = mysql_query($query);
      if($res){
        echo "Success!";
        echo $mid . "</br>";
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

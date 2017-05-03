<!--
Original Author: Pradeep Khodke
Link: http://www.codingcage.com/2015/01/user-registration-and-login-script-using-php-mysql.html
Description: Contains code for localhost connection and database selection
-->

<?php
 session_start();
 if (!isset($_SESSION['user'])) {
  header("Location: login.php");
 } else if(isset($_SESSION['user'])!="") {
  header("Location: home.php");
 }

 if (isset($_GET['logout'])) {
  unset($_SESSION['user']);
  session_unset();
  session_destroy();
  header("Location: index.php");
  exit;
 }

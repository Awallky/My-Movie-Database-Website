<!--
Original Author: Pradeep Khodke
Modified By: Adam Walls
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
 $res=mysql_query("SELECT * FROM User WHERE UID=".$_SESSION['user']);
 $userRow=mysql_fetch_array($res);
 ?>

<!DOCTYPE html>
<html>
	<body>
    <br><h1>
      <p style="padding-left: 10cm;">
        Edit Movie/Crew Member
      </p>
    </h1></br>
      <?php
        $title = $_POST['title']; $summary = $_POST['summary']; $language = $_POST['language'];  $duration = $_POST['duration'];
        $releasedate = $_POST['relDate']; $newtitle = $_POST['newtitle'];
        $gettitle = "(". "SELECT MID FROM Movie WHERE Title = '$title')";
        $r = mysql_query($gettitle);
        if($r){
          echo "Success!</br>";
        }
        else{
          echo "Fail!</br>";
          echo $title . "</br>";
          //header("Location: home.php");
          //exit;
        }
        $a = mysql_fetch_array($r);

        if($newtitle != ""){
          $query = "UPDATE Movie SET Title = '$newtitle' WHERE MID = '" . $r['MID'] . "'";
          $res = mysql_query($query);
          if($res){
            echo "Success!";
          }
          else{
            echo "Fail" . "</br>";
          }
        }
        if($summary != ""){
          $query = "UPDATE Movie SET Summary = '$summary' WHERE MID = '" . $r['MID'] . "'";
          $res = mysql_query($query);
          if($res){
            echo "Success!";
          }
          else{
            echo "Fail" . "</br>";
          }
        }
        if($language != ""){
          $query = "UPDATE Movie SET Language = '$language' WHERE MID = '" . $r['MID'] . "'";
          $res = mysql_query($query);
          if($res){
            echo "Success!";
          }
          else{
            echo "Fail" . "</br>";
          }
        }
        if($duration != ""){
          $query = "UPDATE Movie SET Duration = '$duration' WHERE MID = '" . $r['MID'] . "'";
          $res = mysql_query($query);
          if($res){
            echo "Success!";
          }
          else{
            echo "Fail" . "</br>";
          }
        }
        if($releasedate != ""){
          $query = "UPDATE Movie SET Release_date = '$releasedate' WHERE MID = '" . $r['MID'] . "'";
          $res = mysql_query($query);
          if($res){
            echo "Success!";
          }
          else{
            echo "Fail" . "</br>";
          }
        }
      header("Location: home.php");
      exit;
      ?>
    </body>
</html>
<?php ob_end_flush(); ?>

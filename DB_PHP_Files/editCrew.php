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
      $fname = $_POST['fname']; $lname = $_POST['lname'];  $role = $_POST['role'];
      $newfname = $_POST['newfname']; $newmname = $_POST['newmname']; $newlname = $_POST['newlname'];
      $bio = $_POST['bio']; $gender = $_POST['gender']; $dob = $_POST['dob']; $age = $_POST['age'];
      $birthplace = $_POST['birthplace']; $totitle = $_POST['toTitle'];
      $gettitle = "(". "SELECT MID FROM Movie WHERE Title = '$totitle')";
      $getcid = "SELECT CID FROM Crew WHERE F_Name = '$fname' AND L_Name = '$lname'";
      $r = mysql_query($gettitle);
      if($r){
        echo "Success!</br>";
      }
      $a = mysql_fetch_array($r);
      echo $a['MID'] . "</br>";

      $r = mysql_query($getcid);
      if($r){
        echo "Success1!!</br>";
      }
      $b = mysql_fetch_array($r);
      echo $b['MOVIE_MID'] . "</br>";

      if($newfname != ""){
        echo "Not Null</br>";
        $query = "UPDATE Crew SET F_Name = '$fname' WHERE CID = " . $b['CID'] .  " AND  MOVIE_MID = " .  $a['MID'] ;
        $res = mysql_query($query);
        if($res){
          echo "Successful Query(1)</br>";
        }
        else{
          echo "UnSuccessful Query(1)</br>";
        }
      }
      else{
        echo "Null</br>";
      }
      if($newmname != ""){
        echo "Not Null</br>";
        $query = "UPDATE Crew SET M_Name = '$mname' WHERE  MOVIE_MID = " . $a['MID'] . " AND CID = " . $b['CID'];
        $res = mysql_query($query);
        if($res){
          echo "Successful Query(1)</br>";
        }
        else{
          echo "Successful Query(1)</br>";
        }
      }
      else{
        echo "Null</br>";
      }
      if($newlname != ""){
        echo "Not Null</br>";
        $query = "UPDATE Crew SET L_Name = '$lname' WHERE MOVIE_MID = " . $a['MID'] . " AND CID = " . $b['CID'];
        $res = mysql_query($query);
        if($res){
          echo "Successful Query(2)</br>";
        }
        else{
          echo "Successful Query(2)</br>";
        }
      }
      else{
        echo "Null</br>";
      }
      if($role != ""){
        echo "Not Null</br>";
        $query = "UPDATE Crew SET Role = '$role' WHERE MOVIE_MID = " . $a['MID'] . " AND CID = " . $b['CID'];
        $res = mysql_query($query);
        if($res){
          echo "Successful Query(1)</br>";
        }
        else{
          echo "Successful Query(1)</br>";
        }
      }
      else{
        echo "Null</br>";
      }
      if($bio != ""){
        echo "Not Null</br>";
        $query = "UPDATE Crew SET Bio = '$bio' WHERE MOVIE_MID = " . $a['MID'] . " AND CID = " . $b['CID'];
        $res = mysql_query($query);
        if($res){
          echo "Successful Query(1)</br>";
        }
        else{
          echo "Successful Query(1)</br>";
        }
      }
      else{
        echo "Null</br>";
      }
      if($gender != ""){
        echo "Not Null</br>";
        $query = "UPDATE Crew SET Bio = '$bio' WHERE MOVIE_MID = " . $a['MID'] . " AND CID = " . $b['CID'];
        $res = mysql_query($query);
        if($res){
          echo "Successful Query(1)</br>";
        }
        else{
          echo "Successful Query(1)</br>";
        }
      }
      else{
        echo "Null</br>";
      }
      if($dob != null){
        echo "Not Null</br>";
        $query = "UPDATE Crew SET DOB = '$dob' WHERE MOVIE_MID = " . $a['MID'] . " AND CID = " . $b['CID'];
        $res = mysql_query($query);
        if($res){
          echo "Successful Query(1)</br>";
        }
        else{
          echo "Successful Query(1)</br>";
        }
      }
      else{
        echo "Null</br>";
      }
      if($age != null){
        echo "Not Null</br>";
        $query = "UPDATE Crew SET Age = '$age' WHERE MOVIE_MID = " . $a['MID'] . " AND CID = " . $b['CID'];
        $res = mysql_query($query);
        if($res){
          echo "Successful Query(1)</br>";
        }
        else{
          echo "Successful Query(1)</br>";
        }
      }
      else{
        echo "Null</br>";
      }
      if($birthplace != ""){
        echo "Not Null</br>";
        $query = "UPDATE Crew SET Birthplace = '$birthplace' WHERE MOVIE_MID = " . $a['MID'] . " AND CID = " . $b['CID'];
        $res = mysql_query($query);
        if($res){
          echo "Successful Query(1)</br>";
        }
        else{
          echo "Successful Query(1)</br>";
        }
      }
      else{
        echo "Null</br>";
      }
      header("Location: home.php");
      exit;
    ?>
  </body>
</html>
<?php ob_end_flush(); ?>

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
 $res=mysql_query("SELECT * FROM User WHERE uId=".$_SESSION['user']);
 $userRow=mysql_fetch_array($res);
 ?>

<!DOCTYPE html>
<html>
	<body>
      <?php
        $fname = $_POST['addFName']; $mname = $_POST['addMName']; $lname = $_POST['addLName'];  $role = $_POST['addRole'];
        $bio = $_POST['addBio']; $gender = $_POST['addGender']; $dob = $_POST['addDOB']; $age = $_POST['addAge'];
        $birthplace = $_POST['addBirthplace']; $totitle = $_POST['addToTitle'];
        $gettitle = "(". "SELECT MID FROM Movie WHERE Title = '$totitle')";
        $r = mysql_query($gettitle);
        $a = mysql_fetch_array($r);
        $query = "INSERT INTO Crew (F_Name, M_Name, L_Name, Role, Bio, Gender, DOB, Age, Birthplace, MOVIE_MID)VALUES(
                  '$fname', '$mname', '$lname', '$role', '$bio', '$gender', $dob, $age, '$birthplace'," . $a['MID'] . ")";
        $res = mysql_query($query);
        if($res){
          echo "Success!";
        }
        else{
          echo "Fail" . "</br>";
        }
        echo $fname . "</br>";
        echo $mname . "</br>";
        echo $lname . "</br>";
        echo $role . "</br>";
        echo $bio . "</br>";
        echo $gender . "</br>";
        echo $dob . "</br>";
        echo $age . "</br>";
        echo $a['MID'] . "</br>";
        header("Location: home.php");
        exit;
      ?>
  </body>
</html>
<?php ob_end_flush(); ?>

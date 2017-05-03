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
      $title = $_POST['addTitle']; $summary = $_POST['addSummary']; $language = $_POST['addLanguage'];  $duration = $_POST['addDuration'];
      $releasedate = $_POST['addRelDate'];
      $query = "INSERT INTO Movie (Title, Summary, Language, Duration, Release_date)VALUES (
      '$title', '$summary', '$language', '$duration', $releasedate)";
      $res = mysql_query($query);
      if($res){
        echo "Success!";
      }
      else{
        echo "Fail" . "</br>";
      }
      header("Location: home.php");
      exit;
    ?>
  </body>
</html>
<?php ob_end_flush(); ?>

<!--
<br><h1>
  <p style="padding-left: 10cm;">
    Add/Edit/Delete Movie
  </p>
</h1></br>
<br>
  <form action="addMovie.php" method = "post">
    <u><b><u>Add Movie:</u></b></u></br>
    <br>Title: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addTitle" maxlength="44"></br>
    <br><b>Summary:</b>  <textarea pattern=".{1,}" required title="1 character minimum" name="addSummary" rows="3" cols="99"></textarea></br>
    <br><b>Language:</b> <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addLanguage" maxlength="44"></br>
    <b>Duration:</b> <input type="time" name="addDuration"><br>
    <b>Realease Date:</b> <input type="date" name="addRelDate"> Adventure<br>
    <input type="submit" name="formSubmit" value="Submit">
  </form>
</br>
<br>
  <form action="addCrew.php" method = "post">
    <u><b><u>Add Crew Member:</u></b></u></br>
    <br>First Name: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addFName" maxlength="44"></br>
    <br>Middle Name: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addMName" maxlength="44"></br>
    <br>Last Name: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addLName" maxlength="44"></br>
    <br>Role: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addRole" maxlength="44"></br>
    <br>Bio:</br><textarea pattern=".{1,}" required title="1 character minimum" name="addBio" rows="3" cols="99"></textarea>
    <br>Gender: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addGender" maxlength="7"></br>
    <br>DOB: <input pattern=".{1,}" required title="1 character minimum" type="date" name="addDOB" maxlength="44"></br></br>
    <br>Age: <input pattern=".{1,}" required title="1 character minimum" type="number" name="addAge" maxlength="44"></br></br>
    <br>Birthplace: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addBirthplace" maxlength="44"></br></br>
    <br>Movie Title: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addToTitle" maxlength="44"></br></br>
    <input type="submit" name="formSubmit" value="Submit">
  </form>
</br>
<br>
  <form action="addGenre.php" method = "post">
    <u><b><u>Add Genre:</u></b></u></br>
    <br>Genre Type: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addGenre" maxlength="14"></br>
    <br>Movie Title: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="addMovieGenreTitle" maxlength="44"></br></br>
    <input type="submit" name="formSubmit" value="Submit">
  </form>
-->

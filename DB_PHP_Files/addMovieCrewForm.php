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
    <br><h1>
      <p style="padding-left: 10cm;">
        Add Movie/Crew Member
      </p>
    </h1></br>
    <ul class="nav navbar-nav">
      <li class="active"><a href = "home.php"> Home Page </a></li>
    </ul>
    <br>
      <form action="addMovie.php" method = "post">
        <u><b><u>Add Movie:</u></b></u></br>
        <br>Title: <input required pattern=".{1,}" required title="1 character minimum" type="textbox" name="addTitle" maxlength="44"></br>
        <br><b>Summary:</b>  <textarea required pattern=".{1,}" required title="1 character minimum" name="addSummary" rows="3" cols="99"></textarea></br>
        <br><b>Language:</b> <input required pattern=".{1,}" required title="1 character minimum" type="textbox" name="addLanguage" maxlength="44"></br>
        <b>Duration:</b> <input required pattern=".{1,}" required title="1 character minimum" type="textbox" name="addDuration"></br>
        <b>Realease Date:</b> <input required pattern=".{1,}" required title="1 character minimum" type="number" name="addRelDate"></br>
        <input type="submit" name="formSubmit" value="Submit">
      </form>
    </br>
    <br>
      <form action="addCrew.php" method = "post">
        <u><b><u>Add Crew Member:</u></b></u></br>
        <br>First Name: <input required pattern=".{1,}" required title="1 character minimum" type="textbox" name="addFName" maxlength="44"></br>
        <br>Middle Name: <input type="textbox" name="addMName" maxlength="44"></br>
        <br>Last Name: <input required pattern=".{1,}" required title="1 character minimum" type="textbox" name="addLName" maxlength="44"></br>
        <br>Role: <input required pattern=".{1,}" required title="1 character minimum" type="textbox" name="addRole" maxlength="44"></br>
        <br>Bio:</br><textarea required pattern=".{1,}" required title="1 character minimum" name="addBio" rows="3" cols="99"></textarea>
        <br>Gender: <input required pattern=".{1,}" required title="1 character minimum" type="textbox" name="addGender" maxlength="7"></br>
        <br>DOB(yyyymmdd): <input required pattern=".{1,}" required title="1 character minimum" type="number" name="addDOB" maxlength="44" value="yyyymmdd"></br></br>
        <br>Age: <input required pattern=".{1,}" required title="1 character minimum" type="number" name="addAge" maxlength="44"></br></br>
        <br>Birthplace: <input required pattern=".{1,}" required title="1 character minimum" type="textbox" name="addBirthplace" maxlength="44"></br></br>
        <br>Movie Title: <input required pattern=".{1,}" required title="1 character minimum" type="textbox" name="addToTitle" maxlength="44"></br></br>
        <input type="submit" name="formSubmit" value="Submit">
      </form>
      </br>
    <ul class="dropdown-menu">
      <li><a href="logout.php?logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>
    </ul>
    <br>
  </body>
</html>
<?php ob_end_flush(); ?>

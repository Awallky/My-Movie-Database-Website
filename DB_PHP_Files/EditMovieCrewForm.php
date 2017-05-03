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
    <ul class="nav navbar-nav">
      <li class="active"><a href = "home.php"> Home Page </a></li>
    </ul>
    <br>
      <form action="editMovie.php" method = "post">
        <u><b><u>Edit Movie:</u></b></u></br>
        <br><b>Title:</b> <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="title" maxlength="44"></br>
        <br><b>New Title:</b> <input type="textbox" name="newtitle" maxlength="44"></br>
        <br><b>Summary:</b></br>  <textarea name="summary" rows="3" cols="99"></textarea></br>
        <br><b>Language:</b> <input type="textbox" name="language" maxlength="44"></br>
        <b>Duration:</b> <input type="textbox" name="duration"></br>
        <b>Realease Date:</b> <input type="number" name="relDate"></br>
        <input type="submit" name="formSubmit" value="Submit">
      </form>
    </br>
    <br>
      <form action="editCrew.php" method = "post">
        <u><b><u>Edit Crew Member:</u></b></u></br>
        <br>(Just write to anything you want to change)</br>
        <br>First Name: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="fname" maxlength="44"></br>
        <br>Last Name: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="lname" maxlength="44"></br>
        <br>Movie Title: <input pattern=".{1,}" required title="1 character minimum" type="textbox" name="toTitle" maxlength="44"></br></br>
        <br><b>Changes Made Below</b></br>
        <br>New First Name: <input type="textbox" name="newfname" maxlength="44"></br>
        <br>New Middle Name: <input type="textbox" name="newmname" maxlength="44"></br>
        <br>New Last Name: <input type="textbox" name="newlname" maxlength="44"></br>
        <br>New Role: <input type="textbox" name="role" maxlength="44"></br>
        <br>New Bio:</br><textarea  name="bio" rows="3" cols="99"></textarea>
        <br>New Gender: <input type="textbox" name="gender" maxlength="7"></br>
        <br>New DOB (yyyymmdd): <input type="number" name="dob" maxlength="44" value="yyyymmdd"></br></br>
        <br>New Age: <input type="number" name="age" maxlength="44"></br></br>
        <br>New Birthplace: <input type="textbox" name="birthplace" maxlength="44"></br></br>
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

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
 $res=mysql_query("SELECT * FROM User WHERE UID=".$_SESSION['user']);
 $userRow=mysql_fetch_array($res);
 ?>

<!DOCTYPE html>
<html>
<style>
/* Can put html formatting change objects here */
</style>
  <body>
    <h2>
          <p style="padding-left: 12cm;"><b>Rating/Comment/Tags Page!</b></p>
    </h2>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.php">Back to Home home boi/gurl</a></li>
    </ul>
    <?php
      $mid = $_GET['mid'];
      $res=mysql_query("SELECT * FROM Movie WHERE MID = " . $mid);
      $userRow=mysql_fetch_array($res);
      $N = count($userRow);
      if($N > 0){
        echo "<b>Movie Title:</b> " . $userRow['Title'] . "</br></br>";
      }
    ?>
    <form action="addRate.php" method = "post">
      <u><b>Comment/Rate:</b></u></br>
      <input type="radio" name="rating" value="1"> 1 <br>
      <input type="radio" name="rating" value="2"> 2 <br>
      <input type="radio" name="rating" value="3"> 3 <br>
      <input type="radio" name="rating" value="4"> 4 <br>
      <input type="radio" name="rating" value="5"> 5 <br>
      <?php echo '<input type="hidden" name="mid" value=' . $_GET['mid'] .  '>';  ?>
      <!-- Maximum length in database is 50 characters -->
      <!-- So, this is 25*2 character long textarea -->
      Comments:<br><textarea name="comment" cols="25" rows="2"></textarea> </br>
      <input type="submit" name="formSubmit" value="Submit">
    </form>
    <br><u><b><u>Tags:</u></b></u></br>
    <form action="addTag.php"   method = "post">
      <?php echo '<input type="hidden" name="mid" value=' . $_GET['mid'] .  '>';  ?>
      <textarea name="tag" cols="25" rows="2"></textarea></br>
      <input type="submit" name="formSubmit" value="Submit">
    </form>
    <ul class="dropdown-menu">
      <li><a href="logout.php?logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>
    </ul>
  </body>
</html>
<?php ob_end_flush(); ?>

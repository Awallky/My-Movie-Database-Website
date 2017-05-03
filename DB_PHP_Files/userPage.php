<!--
Original Author: Pradeep Khodke
Modified By: Adam M Walls
Link: http://www.codingcage.com/2015/01/user-registration-and-login-script-using-php-mysql.html
Description: This file contains a simple html form used as the home page for a user with the standard user role.
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
  <head>
    <body>
      <div id="wrapper">
        <div class="container">
          <div class="page-header">
            <h1>
              <p style="padding-left: 10cm;">
              Welcome to the best DB page puny user!
              </p>
            </h1>
          </div>
        </div>
      </div>
      <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
        <div id="navbar" class="navbar-collapse collapse">
        </p>
        <!--      Genre Checkboxes       -->
          <div style="display: inline-block">
            <form action="genreHandler.php" method = "post">
              <u><b>Genres:</b></u></br>
              <input type="checkbox" name="genre[]" value="Action"> Action<br>
              <input type="checkbox" name="genre[]" value="Adventure"> Adventure<br>
              <input type="checkbox" name="genre[]" value="Animation"> Animation<br>
              <input type="checkbox" name="genre[]" value="Biography"> Biography<br>
              <input type="checkbox" name="genre[]" value="Comedy"> Comedy<br>
              <input type="checkbox" name="genre[]" value="Crime/Gangster"> Crime/Gangster<br>
              <input type="checkbox" name="genre[]" value="Drama"> Drama<br>
              <input type="checkbox" name="genre[]" value="Historical"> Historical<br>
              <input type="checkbox" name="genre[]" value="Musical"> Musical<br>
              <input type="checkbox" name="genre[]" value="Horror"> Horror<br>
              <input type="checkbox" name="genre[]" value="Sci-Fi"> Sci-Fi<br>
              <input type="checkbox" name="genre[]" value="Thriller"> Thriller<br>
              <input type="checkbox" name="genre[]" value="War"> War<br>
              <input type="checkbox" name="genre[]" value="Western"> Western<br>
              <input type="submit" name="formSubmit" value="Submit">
            </form>
          </div>
          <div style="display: inline-block">
          </div>
          <div style="display: inline-block">
          </div>
          <div style="display: inline-block">
          </div>
          <div style="display: inline-block">
          </div>
          <div style="display: inline-block">
          </div>
          <div style="display: inline-block">
          </div>
<!--      Search text boxes       -->
          <div style="display: inline-block">
            </br>
            <form action="titleHandler.php" method = "post">
              <u><b>Search By</b></u></br></br>
              Title: <input type="textbox" name="title" value="The Hobbit">
                     <input type="submit" name="formSubmit" value="Submit">
            </form>
            <br/>
            <form action="crewHandler.php" method = "post">
              Crew: <input type="textbox" name="crew" value="Benedict Cucumberpatch">
                    <input type="submit" name="formSubmit" value="Submit">
            </form>
            <br/>
            <form action="tagHandler.php" method = "post">
              Tags: <input type="textbox" name="tag" value="My precious">
              <input type="submit" name="formSubmit" value="Submit">
            </form>
          <br></br><br></br></br></br></br></br></br><br>
        </div>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <span class="glyphicon glyphicon-user"></span>&nbsp;Hi
                <?php
                  if( $userRow['userRole'] == 'dba'){
                    echo "(DBA) - "; echo $userRow['userEmail'];
                  }
                  else if($userRow['userRole'] == 'manager'){
                    echo "(Manager) - "; echo $userRow['userEmail'];
                  }
                  else if($userRow['userRole'] == 'user'){
                    echo "(User) - "; echo $userRow['userEmail'];
                  }
                  else{
                    echo "That's very odd. How'd you do that?";
                  }
                ?>&nbsp;<span class="caret"></span>
              </a>
              <ul class="dropdown-menu">
                <li><a href="logout.php?logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
        </div>
      </nav>

      <div class="row">
        <div class="col-lg-12">
          <h4>I know right?!</h4>
        </div>
          </div>
    </body>
  </head>
</html>

<?php ob_end_flush(); ?>

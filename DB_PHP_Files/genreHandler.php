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
  <body>
  </br><h2>
    <p style="padding-left: 12cm;"><b>Search Result Page!</b></p>
  </h2></br>
  <ul class="nav navbar-nav">
    <li class="active"><a href="home.php">Back to Home home boi/gurl</a></li>
  </ul>
    <?php
      $queryArray = [];
      $aGenre = $_POST['genre'];
      echo "=====================================================================";
      echo "=====================================================================";
      echo "</br></br>";
      if(empty($aGenre)){
        echo("You didn't select any genres.");
      }
      else{
        $N = count($aGenre);
        // Perform a sql query for each genre
        for($i = 0; $i < $N; $i++){
            $res = mysql_query("SELECT * FROM Movie, Genres WHERE Genre = '$aGenre[$i]' AND CATEGORIZED_AS = MID");
            // Iterate through each row returned from query
              while($row = mysql_fetch_array($res)){
                // Get all values from 'MID' primary key column
                $column = array_column($queryArray,   'MID');
                // Check to see if they are in the array already
                // Insert if they are not
                if(array_search($row['MID'], $column, true) === false){
                  array_push($queryArray, $row);
                  echo '<a href="rate.php?mid='. $row['MID'] . '">' . $row['Title'] . '</a>';
                  $r = mysql_query("SELECT AVG(Rating) FROM Ratings WHERE RATED_AS = " . $row['MID']);
                  $avg = mysql_fetch_array($r);
                  if(is_null($avg)){
                      echo " No ratings for this movie.";
                      //$mid = -1;
                  }
                  else{
                    echo " " . "<b>Average Rating:</b> " . $avg["AVG(Rating)"] ;
                    //$mid = $row['MID'];
                  }
                  /*
                  if(is_null($row['Avg_rating'])){
                      echo " No ratings for this movie.";
                      //$mid = -1;
                  }
                  else{
                    echo " " . "<b>Average Rating:</b> " . $row['Avg_rating'];
                    //$mid = $row['MID'];
                  }*/
                  $mid = $row['MID'];
                  echo "</br></br>";
                  echo "<b>Summary:</b> " . $row['Summary'];
                  echo "</br></br>";
                  echo "<b>Language:</b> " . $row['Language'] . "   <b>Duration:</b>   " . $row['Duration'] . "   ";
                  echo "<b>Release Date:</b> " . "   " . $row['Release_date'];
                  echo "</br>";
                  if($mid >= 0){
                      echo "<br><b>Crew:</b></br>";
                      $query = "SELECT * FROM crew WHERE MOVIE_MID = '$mid'";
                      $r = mysql_query($query);
                      if(!is_null($r)){
                        while($qResult = mysql_fetch_array($r)){
                          echo "<br>Name: " . $qResult['F_Name'] . " " . $qResult['L_Name'] . " ";
                          echo "Role: " . $qResult['Role'] . "</br></br>";
                        }
                      }
                      else{
                        echo "No crew found for this movie. Spookie.</br>";
                      }
                  }
                  else{
                    echo "<br>No crew found for this movie.</br>";
                  }
                  if($mid >= 0){
                      echo "<br><b>Comments/Ratings:</b></br>";
                      $query = "SELECT * FROM Ratings WHERE RATED_AS = '$mid'";
                      $r = mysql_query($query);
                      if(!is_null($r)){
                        while($qResult = mysql_fetch_array($r)){
                          echo "<br>Rated: " . $qResult['Rating'] . "/5</br>";
                          echo "<br>Comment: " . $qResult['Comment'] . "</br></br>";
                        }
                      }
                  }
                  echo "=====================================================================";
                  echo "=====================================================================";
                  echo "</br></br>";
                }
              }
        }
      }
    ?>
    <ul class="dropdown-menu">
      <li><a href="logout.php?logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>
    </ul>
  </body>
</html>


 <?php ob_end_flush(); ?>

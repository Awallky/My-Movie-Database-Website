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
    <?php
      $mid = $_POST['mid'];
      $rate = $_POST['rating'];
      $comment = $_POST['comment'];
      $query = "INSERT INTO Ratings (Rating, Comment, RATED_AS)VALUES (
                $rate, '$comment', $mid)";
                $res = mysql_query($query);
    if($res){
      echo "Success!</br>";
      echo $mid . "</br>";
    }
    else{
      echo "Fail" . "</br>";
      echo $rate . "</br>";
      echo $comment . "</br>";
      echo $mid . "</br>";
    }
    header("Location: home.php");
    exit;
    ?>
  </body>
</html>
<?php ob_end_flush(); ?>

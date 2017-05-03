<!--
Original Author: Pradeep Khodke
Modified By: Adam M Walls
Link: http://www.codingcage.com/2015/01/user-registration-and-login-script-using-php-mysql.html
Description: This file contains a simple html form with all the required registration fields.
             Also, includes some php code for registering a new user.
-->

<!DOCTYPE html>
<html>
<body>

<?php
 ob_start();
 session_start();
 if( isset($_SESSION['user'])!="" ){
  header("Location: home.php");
 }
 include_once 'dbconnect.php';
 require_once 'functionDefs.php';

 $error = false;

 if ( isset($_POST['btn-signup']) ) {

  $email = trim($_POST['email']);
  $email = strip_tags($email);
  $email = htmlspecialchars($email);

  $pass = trim($_POST['pass']);
  $pass = strip_tags($pass);
  $pass = htmlspecialchars($pass);

  //basic email validation
  if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
   $error = true;
   $emailError = "Please enter valid email address.";
  } else {
   // check email exist or not
   $query = "SELECT userEmail FROM User WHERE userEmail='$email'";
   $result = mysql_query($query);
   $count = mysql_num_rows($result);
   if($count!=0){
    $error = true;
    $emailError = "Provided Email is already in use.";
   }
  }

  // password validation
  if (empty($pass)){
   $error = true;
   $passError = "Please enter password.";
  } else if(strlen($pass) < 6) {
   $error = true;
   $passError = "Password must have at least 6 characters.";
  }

  // password encrypt using SHA256();
  $password = hash('sha256', $pass);

  // if there's no error, continue to signup
  // will automatically set new user to user role
  if( !$error ) {

   $query = "INSERT INTO User(userRole, userEmail,userPass) VALUES('user','$email','$password')";
   $res = mysql_query($query);

   if ($res) {
    $errTyp = "success";
    $errMSG = "Successfully registered, you may login now.";
    unset($role);
    unset($email);
    unset($pass);
   } else {
    $errTyp = "danger";
    $errMSG = "Something went wrong, try again later...";
   }
  }
 }
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AMW's AMAZING Login & Registration System</title>
</head>
<body>
	<div class="container">
		<div id="login-form">
			<form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="on">
				<div class="col-md-12">
					<div class="form-group">
						<h2 class="">Sign Up.</h2>
					</div>
					<div class="form-group">
						<hr />
					</div>

					<?php
						if ( isset($errMSG) ) {
					?>
						<div class="form-group">
							<div class="alert alert-<?php echo ($errTyp=="success") ? "success" : $errTyp; ?>">
								<span class="glyphicon glyphicon-info-sign"></span> <?php echo $errMSG; ?>
							</div>
						 </div>
					<?php
						}
					?>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
							<input type="email" name="email" class="form-control" placeholder="Enter Your Email" maxlength="40" value="<?php echo $email ?>" />
						</div>
							<span class="text-danger"><?php echo $emailError; ?></span>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
							<input type="password" name="pass" class="form-control" placeholder="Enter Password" maxlength="15" />
						</div>
						<span class="text-danger"><?php echo $passError; ?></span>
					</div>

					<div class="form-group">
						 <hr />
					</div>

					<div class="form-group">
						 <button type="submit" class="btn btn-block btn-primary" name="btn-signup">Sign Up</button>
					</div>

					<div class="form-group">
						 <hr />
					</div>

					<div class="form-group">
						 <a href="home.php">Sign in Here...</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
<?php ob_end_flush(); ?>

 </body>
 </html>

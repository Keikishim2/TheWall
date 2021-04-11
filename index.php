<?php 
session_start();
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<div class="header">
		<h1>CodingDojo Wall</h1>
	</div>
	<form class="index" action="process.php" method="post">
		<h2 class="index">Register</h1>
<?php 	if(!empty($_SESSION['regErr'])) {
			foreach($_SESSION['regErr'] as $message) {
				echo '<p class="red">- ' . $message . ' -</p>';
			}
		} ?>
		<input class="index" type="text" name="first_name" placeholder="First Name">
		<input class="index" type="text" name="last_name" placeholder="Last Name">
		<input class="index" type="text" name="email" placeholder="Email Address">
		<input class="index" type="password" name="password" placeholder="Password">
		<input class="index" type="password" name="password2" placeholder="Confirm Password">
		<input type="hidden" name="action" value="register">
		<input class="button" type="submit" name="submit" value="Register Me!">
	</form>
	<form class="index" action="process.php" method="post">
		<h2 class="index">Login</h1>
<?php 	if(!empty($_SESSION['logErr'])) {
			foreach($_SESSION['logErr'] as $message) {
				echo '<p class="red">- ' . $message . ' -</p>';
			}
		} ?>
		<input class="index" type="text" name="email" placeholder="Email Address">
		<input class="index" type="password" name="password" placeholder="Password">
		<input type="hidden" name="action" value="login">
		<input class="button" type="submit" name="submit" value="Log In!">
	</form>
</body>
</html>
<?php session_destroy(); ?>
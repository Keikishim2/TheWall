<?php 
session_start();
require('connection.php');
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>The Wall</title>
	<link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
	<div class="header">
		<h1>The Wall!</h1>	
<?php 	if(isset($_SESSION['first_name']) && isset($_SESSION['user_id'])){ ?>
		<p class="headerText">Welcome, <?= $_SESSION['first_name'] ?>!</p>
		<a href="process.php?logout=y">Logout</a>
	</div>
	<form class="message" action="process.php" method="post">
		<h2>Post a message</h2>
		<textarea name="mess"></textarea>
		<input type="hidden" name="action" value="message">
		<input class="button posts" type="submit" name="message" value="Post a message">
	</form>
<?php 	} else { ?>
		<p class="headerText">Login to be able to post messages and comment</p>
		<a href="index.php">Login!</a>
	</div>
<?php	}
		$query = "SELECT CONCAT_WS(' ', first_name, last_name) AS name,
				message, messages.created_at AS dc, 
				messages.id AS message_id , messages.user_id AS uid FROM messages 
				LEFT JOIN users 
				ON messages.user_id = users.id
				ORDER BY messages.created_at DESC";
		$results = fetch_all($query);
		foreach($results as $result) { 
			$mid = $result['message_id']; ?>
	<div class="message">
<?php	if(isset($_SESSION['first_name']) && isset($_SESSION['user_id'])){
		if($_SESSION['user_id'] == $result['uid']) {
				$delete = '<a class="delete" href="process.php?mid='.$mid.'">Delete Post</a>';
			} 
		} ?>
		<h3><?= $result['name']." - ".date('F jS Y', strtotime($result['dc'])) ?></h3>
<?php	if(isset($_SESSION['first_name']) && isset($_SESSION['user_id'])){
			if($_SESSION['user_id'] == $result['uid']) {
				$time = strtotime($result['dc']);
				$curtime = time();
				if(($curtime-$time)>1800) {
					echo '<a class="delete" href="process.php?mid='.$mid.'">Delete Post</a>'; 
				}
			}
		} ?>
		<p><?= $result['message'] ?></p>
<?php		$query2 = "SELECT CONCAT_WS(' ', first_name, last_name) AS cName, 
				DATE_FORMAT(comments.created_at, '%b %D %Y') AS cdc, comment FROM comments
				LEFT JOIN users
				ON comments.user_id = users.id
				WHERE message_id='".$result['message_id']."'";
			$results2 = fetch_all($query2);
			foreach($results2 as $row2) { ?>
		<div class="comment">
			<h4><?= $row2['cName'].' - '.$row2['cdc'] ?></h4>
			<p><?= $row2['comment'] ?></p>
		</div>
<?php		}
			if(isset($_SESSION['first_name']) && isset($_SESSION['user_id'])) { ?>
		<form class="wall" action="process.php" method="post">
			<textarea class="commentText" name="comment"></textarea>
			<input type="hidden" name="mid" value="<?= $result['message_id'] ?>">
			<input type="hidden" name="action" value="comment">
			<input class="button posts" type="submit" name="submit" value="Add Comment!">
		</form>
<?php 		} ?>
	</div>
<?php 	} ?>
</body>
</html>
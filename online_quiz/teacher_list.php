<?php
session_start();
	if (!isset($_SESSION["admin"])) {
		header('Location: index.php');
		exit;
		}
	include "mysql_conn.php";

?>

<html>
<head>
	<title>Admin Panel || Online Quiz Test</title>
	<style>
		table {
			border-collapse: collapse;
			border: 1px solid #000;
			text-align: left;
		}
		th, td {
			padding: 10px;
		}
	</style>
</head>
<body>
<center>
	<h1> Teacher List </h1>
	<hr/>
	<table border='1'>
	<tr><th>Name</th><th>Email</th><th>Phone</th></tr>
		
		<?php

			$sql = "SELECT t2.* FROM `users` as t1 INNER JOIN `user_info` as t2 on t1.user_id = t2.user_id WHERE `role`= 'Teacher' and `active`=1";
			$result = mysql_query($sql);
			if ($result) {
				while($row = mysql_fetch_assoc($result)) {
					echo "<tr> <td>". $row["full_name"]."</td> <td>" . $row["email"]. "</td> <td>" . $row["phone"]."</td> </tr>";
				}
			}else {
				echo "Theacher not found..!!";
			}
		?>
	</table>
</center>
<hr/><br>
<a href="admin.php">Go To Your Dashboard</a>
<br>
<a href="logout.php">Logout</a>
</body>
</html>

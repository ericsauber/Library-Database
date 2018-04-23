<html>
	<head>
		<title>Database updated</title>
	</head>
	<link rel="stylesheet" type="text/css" href="css/stylesheet.css">

	<body>
		
		<?php
			$servername = "localhost";
			$username = "root";
			$password = "root";
			$dbname = "Library";

			 $id  = $_POST['id'];
			 $firstname  = $_POST['firstname'];
			 $lastname = $_POST['lastname'];
			 $email  = $_POST['email'];
			 
			

			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);

			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			} 


			// SQL statement
			$sql = "DELETE FROM items 
					WHERE Item_ID = '$id'";


			echo "Item:".$id." - Record deleted<br>";


			if ($conn->query($sql) !== TRUE) {
	    		echo "Error: " . $sql . "<br>" . $conn->error;
			}
		
			echo "<a style='color:black' href='http://localhost:8888/Library-Database/'>Home</a>";

			$conn->close();			
		?>
		
	</body>
</html>
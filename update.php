<html>
	<head>
		<title>Database updated</title>
	</head>
	
	<body>
		
		<?php
			$servername = "localhost";
			$username = "root";
			$password = "root";
			$dbname = "my_database";
			$name = $_POST['username'];

			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);

			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			} 

			echo "Record added<br>";
			echo "Name: <strong>" . $name . "</strong><br><br>";

			// SQL statement
			$sql = "INSERT INTO data (name)
			VALUES ('" . $name . "')";

			if ($conn->query($sql) !== TRUE) {
	    		echo "Error: " . $sql . "<br>" . $conn->error;
			}
		
			echo "<a href='http://localhost:8888/project3330/'>Back</a>";

			$conn->close();			
		?>
		
	</body>
</html>
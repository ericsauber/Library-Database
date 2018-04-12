<!DOCTYPE html>
<html>
	<head>
		<title>Show database</title>
	</head>
	
	<body>

		<?php
			$servername = "localhost";
			$username = "root";
			$password = "root";
			$dbname = "my_database";

			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);

			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			} 

			// SQL statement
			$sql = "SELECT id, name FROM data";
			$result = $conn->query($sql);

			// output data of each row
			if ($result->num_rows > 0) {
	    		while($row = $result->fetch_assoc()) {
	        		echo "id: " . $row["id"]. " - Name: " . $row["name"].  "<br>";
	    		}
			} else {
	   			 echo "0 results";
			}	

			echo "<br>";
			echo "<a href='http://localhost:8888/project3330/'>Back</a>";
	 
			$conn->close();
		?>

	</body>
</html>
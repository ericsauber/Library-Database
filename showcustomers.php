<!DOCTYPE html>
<html>
	<head>
		<title>Show database</title>
	</head>
	
	<body>
		 <h1 style="text-align:left">Customer List</h1>

		<?php
			$servername = "localhost";
			$username = "root";
			$password = "root";
			$dbname = "Library";

			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);

			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			} 

			// SQL statement
			$sql = "SELECT Customer_ID, First_Name, Last_Name, Email FROM customer";
			$result = $conn->query($sql);

			// output data of each row
			if ($result->num_rows > 0) {
	    		while($row = $result->fetch_assoc()) {
	        		echo "Customer ID: " . $row["Customer_ID"]. " -- " . "Name: " . $row["First_Name"] . " " . $row["Last_Name"] . " -- " . "email: " . $row["Email"] . "<br>";
	    		}
			} else {
	   			 echo "0 results";
			}	

			echo "<br>";
			echo "<a href='http://localhost:8888/Library-Database/'>Back</a>";
	 
			$conn->close();
		?>

	</body>
</html>
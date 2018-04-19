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
			$dbname = "Library";

			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);

			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			} 

			// SQL statement
			$sql = "SELECT Order_Entry_ID,Item_ID,Customer_ID,Payment_ID FROM order_entries";
			$result = $conn->query($sql);

			// output data of each row
			if ($result->num_rows > 0) {
	    		while($row = $result->fetch_assoc()) {
	        		echo "Order_Entry_ID: " . $row["Order_Entry_ID"]. ", Item_ID: " . $row["Item_ID"] . ", Customer_ID: " . $row["Customer_ID"] . " , Payment_ID: " . $row["Payment_ID"] . "<br>";
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
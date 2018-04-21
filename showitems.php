<!DOCTYPE html>
<html>
	<head>
		<title>Show Items</title>
	</head>
		<link rel="stylesheet" type="text/css" href="css/stylesheet.css">

	<body>
		 <h1 style="text-align:left">Item List</h1>

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
			$sql = "SELECT Item_ID, Type_No, Subtype_No, Media_No, Format_No, Subject_No, Item_Price FROM items";
			$result = $conn->query($sql);

			// output data of each row
			if ($result->num_rows > 0) {
	    		while($row = $result->fetch_assoc()) {
	        		echo "Item ID: " . $row["Item_ID"] . " Type: " . $row["Type_No"] . " Subtype: " . $row["Subtype_No"] . " Media: " . $row["Media_No"] . " Format: " . $row["Format_No"] . " Subject: " . $row["Subject_No"] ." Price: " . $row["Item_Price"] . "<br>";
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
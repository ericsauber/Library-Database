<!DOCTYPE html>
<html>
	<head>
		<title>Show database</title>
	</head>
	<link rel="stylesheet" type="text/css" href="css/stylesheet.css">
	<h1 style="text-align:left">Order List</h1>

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
			$sql = "SELECT Order_Entry_ID,Order_Date,Item_ID,Customer_ID,Payment_ID FROM order_entries";
			$result = $conn->query($sql);
					 
			// output data of each row
			if ($result->num_rows > 0) {
                        echo '<table cellspacing="0" cellpadding="2" width="90%">';
			echo '<tr><th>Order Entry ID</th><th>Date Ordered</th><th>Item ID</th><th>Customer ID</th><th>Payment ID</th><th>Payment Amount</th><th>Payment Method</th><th>Payment Service</th><th>Payment Servicer</th></tr>';
	    		
			while($row = $result->fetch_assoc()) {
	        		echo '<tr><td>'.$row["Order_Entry_ID"].'</td><td>'.$row["Order_Date"].'</td><td>'.$row["Item_ID"].'</td><td>'.$row["Customer_ID"].'</td><td>'.$row["Payment_ID"].'</td><td>'.$row["Payment_Amt"].'</td><td>'.$row["Payment_Type"].'</td><td>'.$row["Srvcr_Type"].'</td><td>'.$row["Srvcr_Name"].'</td><td>';
			}

			echo "</table>";
			} else {
	   			 echo "0 results";
			}	

			// Close the table
    		


			echo "<br>";
			echo "<a style='color:black' href='http://localhost:8888/Library-Database/'>Home</a>";
	 
			$conn->close();
		?>

	</body>
</html>
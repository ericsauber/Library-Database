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

						 echo '<table cellspacing="0" cellpadding="2" width="90%">';

			// output data of each row
			if ($result->num_rows > 0) {
				 // Output a row
			        echo "<tr>";
			        echo '<td align="center"><b>Order ID</b></td><td align="center"><b>Item</b></td><td align="center"><b>Customer ID</b></td><td align="center"><b>Payment ID</b></td><td align="center"><b>Date Ordered</b></td>';
			        echo "</tr>";
	    		while($row = $result->fetch_assoc()) {

	    			 // Output a row
			        echo "<tr>";
			        echo '<td align="center">'.$row["Order_Entry_ID"]. '</td><td align="left">' . $row["Item_ID"] . '</td><td align="left">' . $row["Customer_ID"] . '</td><td align="left">' . $row["Payment_ID"] . '</td><td align="left">' . $row["Order_Date"] . '</td>';
			        echo "</tr>";

	    		}
			} else {
	   			 echo "0 results";
			}	

			// Close the table
    		echo "</table>";


			echo "<br>";
			echo "<a style='color:black' href='http://localhost:8888/Library-Database/'>Home</a>";
	 
			$conn->close();
		?>

	</body>
</html>
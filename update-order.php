<html>
	<head>
		<title>Database updated</title>
	</head>
	
	<body>
		
		<?php
			$servername = "localhost";
			$username = "root";
			$password = "root";
			$dbname = "Library";

			 $orderid = $_POST['orderid'];
			 $itemid = $_POST['itemid'];
			 $customerid = $_POST['customerid'];
			 $paymentid = $_POST['paymentid'];
			 
			

			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);

			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			} 


			// SQL statement
			$sql = "INSERT INTO order_entries (Order_Entry_ID,Item_ID,Customer_ID,Payment_ID)
			VALUES ('" . $orderid . "', '" . $itemid . "','" . $customerid . "','" . $paymentid . "')";

			echo "Order added<br>";


			if ($conn->query($sql) !== TRUE) {
	    		echo "Error: " . $sql . "<br>" . $conn->error;
			}
		
			echo "<a href='http://localhost:8888/Library-Database/'>Back</a>";

			$conn->close();			
		?>
		
	</body>
</html>
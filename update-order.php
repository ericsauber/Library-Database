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

			 //$orderid = $_POST['orderid'];
			 $itemid = $_POST['itemid'];
			 $customerid = $_POST['customerid'];
			// $paymentid = $_POST['paymentid']; 
			 

			 if($itemid==NULL || $customerid==NULL || !is_numeric($customerid) || !ctype_alnum($itemid)){
			 	echo "Bad input. Request failed. Please try again.<br><br>";

			 	echo "<a style='color:black' href='http://localhost:8888/Library-Database/neworder.html'>Back</a>";
			 } 
			 else{

				// Create connection
				$conn = new mysqli($servername, $username, $password, $dbname);

				// Check connection
				if ($conn->connect_error) {
				    die("Connection failed: " . $conn->connect_error);
				} 

				//Date
				date_default_timezone_set('America/Chicago');
				$today = date("F j, Y, g:ia T"); 
				$payID = date("mdy-His");

				// SQL statement
				$sql = "INSERT INTO order_entries (Item_ID,Customer_ID, Payment_ID, Order_Date)
				VALUES ('" . $itemid . "','" . $customerid . "', '". $payID ."','". $today ."')";

				echo "Order added<br>";


				if ($conn->query($sql) !== TRUE) {
		    		echo "Error: " . $sql . "<br>" . $conn->error;
				}
			
				echo "<a style='color:black' href='http://localhost:8888/Library-Database/'>Home</a>";

				$conn->close();		
			}	
		?>
		
	</body>
</html>
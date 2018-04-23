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

			 //$customerid = $_POST['customerid']; //auto-incremented
			 $firstname  = $_POST['firstname'];
			 $lastname = $_POST['lastname'];
			 $email  = $_POST['email'];
			 
			
			 if($firstname==NULL || $lastname==NULL || $email==NULL || !ctype_alnum($email) || !ctype_alpha($firstname) || !ctype_alpha($lastname)){
			 	echo "Bad input. Request failed. Please try again.<br><br>";

			 	echo "<a style='color:black' href='http://localhost:8888/Library-Database/newcustomer.html'>Back</a>";
			 }

			 else{
				// Create connection
				$conn = new mysqli($servername, $username, $password, $dbname);

				// Check connection
				if ($conn->connect_error) {
				    die("Connection failed: " . $conn->connect_error);
				} 



				// SQL statement
				$sql = "INSERT INTO customer (First_Name,Last_Name,Email)
				VALUES ('" . $firstname . "','" . $lastname . "','" . $email . "')";

				echo "Record added<br>";


				if ($conn->query($sql) !== TRUE) {
		    		echo "Error: " . $sql . "<br>" . $conn->error;
				}
			
		
			echo "<a style='color:black' href='http://localhost:8888/Library-Database/'>Home</a>";
			}
			$conn->close();			
		?>
		
	</body>
</html>
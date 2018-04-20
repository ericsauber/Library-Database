<!DOCTYPE html>

<html>
	<head>
		<title>Loading Sample Data</title>
	</head>

	<body>
		<?php
			$servername = "localhost";
			$username = "root";
			$password = "root";
			$dbname = "Library";
			date_default_timezone_set('UTC');

			 // $customerid = $_POST['customerid'];
			 // $firstname  = $_POST['firstname'];
			 // $lastname = $_POST['lastname'];
			 // $email  = $_POST['email'];
			
			date_default_timezone_set('America/Chicago');
			date("Current date and time: F j, Y, g:ia T"); 



			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);

			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			} else{
			//	echo "connection success!!!";
			}


			// SQL statement -Add inital data- NOT WORKING 
		
			 $sql = "INSERT INTO customer(First_Name,Last_Name,Email) VALUES('Johnny', 'Pham','johnny.pham2@mavs.uta.edu')";
			  $sql = "INSERT INTO customer(First_Name,Last_Name,Email) VALUES('Eric', 'Sauber','eric.sauber@mavs.uta.edu')";
			   $sql = "INSERT INTO customer(First_Name,Last_Name,Email) VALUES('Michael', 'Fry','michael.fry@mavs.uta.edu')";


			echo "working";
			

			echo "Record added<br>";


			if ($conn->query($sql) != TRUE) {
	    		echo "SQL Error: " . $sql . "<br>" . $conn->error;
			}
		
			echo "<a href='http://localhost:8888/Library-Database/'>Back</a>";

			$conn->close();			
		?>
	</body>
</html>
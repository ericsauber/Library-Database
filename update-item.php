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

			$Item_ID = $_POST['Item_ID'];
			$Type_No = $_POST['Type_No'];
			$Subtype_No = $_POST['Subtype_No'];
			$Media_No = $_POST['Media_No'];
			$Format_No = $_POST['Format_No'];
			$Subject_No = $_POST['Subject_No'];
			$Item_Price = $_POST['Item_Price'];

			if($Item_ID==NULL || $Item_Price==NULL){
			 	echo "Field cannot be NULL. Request failed. Please try again.<br><br>";

			 	echo "<a style='color:black' href='http://localhost:8888/Library-Database/newitem.php'>Back</a>";
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

				// SQL statement 
				$sql = "INSERT INTO items (Item_ID, Type_No, Subtype_No, Media_No, Format_No, Subject_No, Item_Price )
				VALUES ('" . $Item_ID . "','" . $Type_No . "','" . $Subtype_No . "', '". $Media_No ."', '" . $Format_No . "', '" . $Subject_No . "', '" . $Item_Price . "')";

				echo "Item added<br>";


				if ($conn->query($sql) !== TRUE) {
		    		echo "Error: " . $sql . "<br>" . $conn->error;
				}
			
				echo "<a style='color:black' href='http://localhost:8888/Library-Database/'>Home</a>";

				$conn->close();		
			}	
		?>
		
	</body>
</html>
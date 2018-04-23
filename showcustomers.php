<!DOCTYPE html>
<html>
	<head>
		<title>Show database</title>
	</head>
    <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
	<h1 style="text-align:left">Customer List</h1>

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
			$sql = "SELECT Customer_ID, First_Name, Last_Name, Email FROM customer";
			$result = $conn->query($sql);

			 echo '<table border="1" width="60%" cellspacing="0" cellpadding="3">';

			// output data of each row
			if ($result->num_rows > 0) {
				 // Output a row
			        echo "<tr>";
			        echo '<td align="center"><b>CID#</b></td><td align="center"><b>First Name</b></td><td align="center"><b>Last Name</b></td><td width="50%" align="center"><b>E-mail</b></td>';
			        echo "</tr>";
	    		while($row = $result->fetch_assoc()) {

	    			 // Output a row
			        echo "<tr>";
			        echo '<td align="center">'.$row["Customer_ID"]. '</td><td align="left">' . $row["First_Name"] . '</td><td align="left">' . $row["Last_Name"] . '</td><td width="50%" align="left">' . $row["Email"] . '</td>';
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
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
			$sql = "SELECT Item_Name,Item_ID, Type_No, Subtype_No, Media_No, Format_No, Subject_No, Item_Price FROM items";
			$result = $conn->query($sql);

			 echo '<table border="1" width="85%" cellspacing="0" cellpadding="3">';

			// output data of each row
			if ($result->num_rows > 0) {
				 // Output a row
			        echo "<tr>";
			        echo '<td width="40%" align="center"><b>ITEM</b></td><td align="center"><b>ID</b></td><td align="center"><b>TYPE</b></td><td align="center"><b>SUBTYPE</b></td><td align="center"><b>MEDIA</b></td><td align="center"><b>FORMAT</b></td><td align="center"><b>SUBJECT</b></td> <td align="center"><b>PRICE</b></td>';
			        echo "</tr>";
	    		while($row = $result->fetch_assoc()) {

	    			 // Output a row
			        echo "<tr>";
			        echo '<td width="30%" align="left">'.$row["Item_Name"]. '</td><td width="15%" align="center">' . $row["Item_ID"] .'</td><td width="5%" align="center">' . $row["Type_No"] . '</td><td width="5%" align="center">' . $row["Subtype_No"] . '</td><td width="5%" align="center">' . $row["Media_No"] . '</td><td width="5%" align="center">' . $row["Format_No"] . '</td><td width="5%" align="center">' . $row["Subject_No"] .'</td><td width="15%" align="right">$' . $row["Item_Price"] . '</td>';
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
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
			$sql = "select * from (((((items left join item_formats on items.format_no=item_formats.format_no) left join item_media on items.Media_No=item_media.Media_No) left join item_subject on items.Subject_No=item_subject.Subject_No) left join item_subtypes on items.Subtype_No=item_subtypes.Subtype_No) left join item_types on items.Type_No=item_types.Type_No)";
			$result = $conn->query($sql);

			// output data of each row
			if ($result->num_rows > 0) {
			 echo '<table border="1" width="85%" cellspacing="0" cellpadding="3">';
                         echo '<tr><th>Item_ID</th><th>Item_Name</th><th>Type</th><th>Subtype</th><th>Media</th><th>Format</th><th>Subject</th><th>Item_Price</th></tr>';
	    		
                        while($row = $result->fetch_assoc()) {
	        		echo "<tr><td>".$row["Item_ID"]."</td><td>".$row["Item_Name"]."</td><td>".$row["Type"]."</td><td>".$row["Subtype"]."</td><td>".$row["Media_Type"]."</td><td>".$row["Format_Type"]."</td><td>".$row["Subject"]."</td><td>".$row["Item_Price"]."</td></tr>";
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
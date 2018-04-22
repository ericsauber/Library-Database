<?php

 function dbconnect(){
  $servername = "localhost";
  $dbusername = "root";
  $dbpassword = "root";
  $dbname = "library";
  // Create connection
  $conn = new mysqli($servername, $dbusername, $dbpassword, $dbname);
  // Check connection
  if ($conn->connect_error) {
   $error=$conn->connect_error;
   die("Connection failed: " . $conn->connect_error);
  }
  else{
   return $conn;
  }
 }

 function makelistelement($inctable,$incfieldname,$incvaluefield,$curfieldvalue){
  $lconn = dbconnect();
  $listsql="SELECT $incfieldname,$incvaluefield FROM $inctable";
  $listdata = mysqli_query($lconn,$listsql);
  if($listdata->num_rows>0){
   echo '<select name="'.$incfieldname.'" id="'.$incfieldname.'">';
   while($listrow = $listdata->fetch_assoc()){
    if(!($curfieldvalue=='') && ($curfieldvalue==$listrow[$incvaluefield] || $curfieldvalue==$listrow[$incfieldname])) $selected='selected="selected"';
    echo '<option value="'.$listrow[$incfieldname].'" '.$selected.' >'.$listrow[$incvaluefield].'</option>';
   }
   echo '</select>';
  }
  $lconn->close();
 } 

?>
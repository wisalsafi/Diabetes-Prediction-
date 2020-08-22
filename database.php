<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "diabeties";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql="INSERT INTO patient(id,patient_name,preg,plas,pres,skin,insu,mass,age,class)
 VALUES('1','Muhammad Waseem','0','0','12','0','0','1','1','33')";

if (mysqli_query($conn, $sql)) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>
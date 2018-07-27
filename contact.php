<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "codexworld";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
 // Check connection
 if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO contacts (name, mobile , email , query)
 
 VALUES ('john', '999', 'gg','ffv')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?> 
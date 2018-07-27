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
$sql = "SELECT id, customer_id, total_price, created, modified, status FROM orders";
$result = $conn->query($sql);
 
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		echo "id: " . $row["id"].   "     customer_id: " . $row["customer_id"]. "created" . $row["created"]. "modified " . $row["modified"]. "status " . $row["status"]. "<br><br>" ;
    }	
} else {
    echo "0 results";
}
$conn->close();
?>
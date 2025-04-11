
<?php
/*php code to establish and verify a connection to database. In an industry application the host, username, 
and password values would differ for security purposes */

$host = "localhost"; 
 $username = "root"; // Default XAMPP user
$password = "";

$database = "st_alphonsus"; // Database name

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: ".$conn->connect_error);
}

echo "Connected successfully";
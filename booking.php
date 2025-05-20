<?php
// Database connection parameters
$servername = "localhost:3306";
$username = "root";
$password = "";
$dbname = "travel";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get form data
$first_name = $_POST['ffirst'];
$last_name = $_POST['flast'];
$email = $_POST['femail'];
$city = $_POST['city'];
$phone = $_POST['fphone'];
$check_in_date = $_POST['checkInDate'];
$end_date= $_POST['checkOutDate'];

// Prepare and bind
$stmt = $conn->prepare("INSERT INTO tbooking (first_name, last_name, email, city, phone, check_in_date,end_date) VALUES (?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("sssssss", $first_name, $last_name, $email, $city, $phone, $check_in_date, $end_date);

// Execute the statement
if ($stmt->execute()) {
    header("Location: success.html"); // Redirect to success page after successful booking
} else {
    echo "Error: " . $stmt->error;
}

// Close the connection
$stmt->close();
$conn->close();
?>

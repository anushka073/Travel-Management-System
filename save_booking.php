<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Database configuration
$servername = "localhost:3306";  // Change this to your database server
$username = "root";         // Change this to your database username
$password = "";             // Change this to your database password
$dbname = "travel";  // Change this to your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form was submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $destination = $_POST['destination'];
    $hotelName = $_POST['hotelName'];
    $numberOfRooms = $_POST['numberOfRooms'];
    $numberOfAdults = $_POST['numberOfAdults'];
    $numberOfChildren = $_POST['numberOfChildren'];
    $checkInDate = $_POST['checkInDate'];
    $checkOutDate = $_POST['checkOutDate'];
    $amountPerNight = $_POST['amountPerNight'];
    $totalPrice = $_POST['totalPrice'];

    // Insert booking into database
    $sql = "INSERT INTO bookings (destination, hotel_name, number_of_rooms, number_of_adults, number_of_children, check_in_date, check_out_date, amount_per_night, total_price)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssiiissdd", $destination, $hotelName, $numberOfRooms, $numberOfAdults, $numberOfChildren, $checkInDate, $checkOutDate, $amountPerNight, $totalPrice);

    if ($stmt->execute()) {
        // Redirect to success page
        header("Location: success.html");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $stmt->close();
}

$conn->close();

?>

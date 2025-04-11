<?php
include("db_connect.php");

$error = "";
$success = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $parentName = $_POST['parentName'];
    $parentAddress = $_POST['parentAddress'];
    $parentEmail = $_POST['parentEmail'];
    $parentPhone = $_POST['parentPhone'];
    $pupilID = $_POST['pupilID'];

    $stmt = $conn->prepare("INSERT INTO parents (parentName, parentAddress, parentEmail, parentPhone, pupil_ID) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssii", $parentName, $parentAddress, $parentEmail, $parentPhone, $pupilID);
    if ($stmt->execute()) {
        $success = "Parent added successfully!";
    } else {
        $error = "Error adding parent!";
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Add Parent</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <h1>Add New Parent</h1>
    <form method="POST" action="">
        <label for="parentName">Parent Name:</label><br>
        <input type="text" id="parentName" name="parentName" required><br><br>

        <label for="parentAddress">Parent Address:</label><br>
        <input type="text" id="parentAddress" name="parentAddress" required><br><br>

        <label for="parentEmail">Parent Email:</label><br>
        <input type="email" id="parentEmail" name="parentEmail" required><br><br>

        <label for="parentPhone">Parent Phone Number:</label><br>
        <input type="tel" id="parentPhone" name="parentPhone" required><br><br>

        <label for="pupilID">Pupil ID:</label><br>
        <input type="number" id="pupilID" name="pupilID" required><br><br>

        <input type="submit" value="Add Parent">
    </form>

    <?php
    if ($error) {
        echo "<p style='color:red;'>$error</p>";
    }

    if ($success) {
        echo "<p style='color:green;'>$success</p>";
    }
    ?>
</body>
</html>

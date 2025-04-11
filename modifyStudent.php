<?php
include("db_connect.php");

$error = "";
$success = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $studentID = $_POST['studentID'];
    $newName = $_POST['newName'];
    $newAge = $_POST['newAge'];
    $newAddress = $_POST['newAddress'];

    $stmt = $conn->prepare("UPDATE pupils SET pupil_fName = ?, pupilAge = ?, pupilAddress = ? WHERE pupil_ID = ?");
    $stmt->bind_param("sisi", $newName, $newAge, $newAddress, $studentID);
    if ($stmt->execute()) {
        $success = "Student information updated successfully!";
    } else {
        $error = "Error updating student information!";
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Modify Student</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <h1>Modify Student Information</h1>
    <form method="POST" action="">
        <label for="studentID">Student ID:</label><br>
        <input type="number" id="studentID" name="studentID" required><br><br>

        <label for="newName">New Name:</label><br>
        <input type="text" id="newName" name="newName" required><br><br>

        <label for="newAge">New Age:</label><br>
        <input type="number" id="newAge" name="newAge" required><br><br>

        <label for="newAddress">New Address:</label><br>
        <input type="text" id="newAddress" name="newAddress" required><br><br>

        <input type="submit" value="Update Student">
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

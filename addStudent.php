<?php
include("db_connect.php");

$error = "";
$success = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $studentName = $_POST['studentName'];
    $studentAge = $_POST['studentAge'];
    $studentAddress = $_POST['studentAddress'];
    $className = $_POST['className'];

    $stmt = $conn->prepare("INSERT INTO pupils (pupil_fName, pupilAge, pupilAddress, className) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("siss", $studentName, $studentAge, $studentAddress, $className);
    if ($stmt->execute()) {
        $success = "Student added successfully!";
    } else {
        $error = "Error adding student!";
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <h1>Add New Student</h1>
    <form method="POST" action="">
        <label for="studentName">Student Name:</label><br>
        <input type="text" id="studentName" name="studentName" required><br><br>

        <label for="studentAge">Student Age:</label><br>
        <input type="number" id="studentAge" name="studentAge" required><br><br>

        <label for="studentAddress">Student Address:</label><br>
        <input type="text" id="studentAddress" name="studentAddress" required><br><br>

        <label for="className">Class Name:</label><br>
        <input type="text" id="className" name="className" required><br><br>

        <input type="submit" value="Add Student">
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

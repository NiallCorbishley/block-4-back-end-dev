<?php
include("db_connect.php");

$error = "";
$success = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $studentID = $_POST['studentID'];

    $stmt = $conn->prepare("DELETE FROM pupils WHERE pupil_ID = ?");
    $stmt->bind_param("i", $studentID);
    if ($stmt->execute()) {
        $success = "Student removed successfully!";
    } else {
        $error = "Error removing student!";
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Remove Student</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <h1>Remove Student</h1>
    <form method="POST" action="">
        <label for="studentID">Student ID:</label><br>
        <input type="number" id="studentID" name="studentID" required><br><br>

        <input type="submit" value="Remove Student">
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

<?php
include("db_connect.php");

$error = "";
$success = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $parentName = $_POST['parentName'];

    $stmt = $conn->prepare("DELETE FROM parents WHERE parentName = ?");
    $stmt->bind_param("s", $parentName);
    if ($stmt->execute()) {
        $success = "Parent removed successfully!";
    } else {
        $error = "Error removing parent!";
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Remove Parent</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <h1>Remove Parent</h1>
    <form method="POST" action="">
        <label for="parentName">Parent Name:</label><br>
        <input type="text" id="parentName" name="parentName" required><br><br>

        <input type="submit" value="Remove Parent">
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

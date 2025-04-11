<?php
include("db_connect.php");

$error = "";
$success = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $parentName = $_POST['parentName'];
    $newAddress = $_POST['newAddress'];
    $newEmail = $_POST['newEmail'];
    $newPhone = $_POST['newPhone'];

    $stmt = $conn->prepare("UPDATE parents SET parentAddress = ?, parentEmail = ?, parentPhone = ? WHERE parentName = ?");
    $stmt->bind_param("ssis", $newAddress, $newEmail, $newPhone, $parentName);
    if ($stmt->execute()) {
        $success = "Parent information updated successfully!";
    } else {
        $error = "Error updating parent information!";
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Modify Parent</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <h1>Modify Parent Information</h1>
    <form method="POST" action="">
        <label for="parentName">Parent Name:</label><br>
        <input type="text" id="parentName" name="parentName" required><br><br>

        <label for="newAddress">New Address:</label><br>
        <input type="text" id="newAddress" name="newAddress" required><br><br>

        <label for="newEmail">New Email:</label><br>
        <input type="email" id="newEmail" name="newEmail" required><br><br>

        <label for="newPhone">New Phone Number:</label><br>
        <input type="tel" id="newPhone" name="newPhone" required><br><br>

        <input type="submit" value="Update Parent">
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

<?php
include("db_connect.php");

$error = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $teacherID = $_POST['teacherID'];
    $password = $_POST['password'];
    $hashed_password = hash('sha256', $password);

    $stmt = $conn->prepare("SELECT teacherID FROM login WHERE teacherID = ? AND Tpassword = ?");
    $stmt->bind_param("is", $teacherID, $hashed_password);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        header("Location: school_dashboard.php");
        exit();
    } else {
        $error = "Invalid ID or password. Please try again.";
    }

    $stmt->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Login - St Alphonsus</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <h2>Teacher Login</h2>
    <form method="POST" action="">
        <label for="teacherID">Teacher ID:</label><br>
        <input type="number" id="teacherID" name="teacherID" required><br><br>

        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="Login">
    </form>
    <p style="color:red;"><?php echo $error; ?></p>
</body>
</html>

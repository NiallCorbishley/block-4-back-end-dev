<?php
include("db_connect.php");

$className = "";
$students = [];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the selected class from the form
    $className = $_POST['className'];

    // Prepare SQL query to fetch students in the selected class
    $sql = "SELECT pupil_fName, pupil_sName, pupilAge, pupilAddress FROM pupils WHERE className = ?";
    
    // Prepare the statement
    if ($stmt = $conn->prepare($sql)) {
        // Bind parameters and execute the statement
        $stmt->bind_param("s", $className);
        $stmt->execute();
        
        // Store the result
        $stmt->store_result();
        
        // Bind the result variables
        $stmt->bind_result($firstName, $lastName, $age, $address);

        // Fetch all students in the selected class
        while ($stmt->fetch()) {
            $students[] = [
                "firstName" => $firstName,
                "lastName" => $lastName,
                "age" => $age,
                "address" => $address
            ];
        }

        // Close the statement
        $stmt->close();
    } else {
        echo "Error preparing query.";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>View Students</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <h1>View Students by Class</h1>
    <form method="POST" action="">
        <label for="className">Select Class:</label>
        <select name="className" id="className" required>
            <option value="reception">Reception</option>
            <option value="year 1">Year 1</option>
            <option value="year 2">Year 2</option>
            <option value="year 3">Year 3</option>
            <option value="year 4">Year 4</option>
            <option value="year 5">Year 5</option>
            <option value="year 6">Year 6</option>
        </select><br><br>
        <input type="submit" value="View Students">
    </form>

    <?php if (!empty($students)): ?>
        <h2>Students in <?php echo ucfirst($className); ?>:</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Age</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($students as $student): ?>
                    <tr>
                        <td><?php echo $student['firstName']; ?></td>
                        <td><?php echo $student['lastName']; ?></td>
                        <td><?php echo $student['age']; ?></td>
                        <td><?php echo $student['address']; ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php elseif ($_SERVER["REQUEST_METHOD"] == "POST"): ?>
        <p>No students found for the selected class.</p>
    <?php endif; ?>
</body>
</html>

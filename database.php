<?php
include 'config/db.php';
include 'config/names.php';

$sql = "INSERT INTO ".$dbname." (category, info, fact, advice, description, score, severity)
VALUES ('$category', '$info', '$fact','$advice', '$description', '$score','$severity')";

if ($conn->query($sql) === TRUE) {
    echo "<br><br><font color=green> New record created successfully</font><br>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
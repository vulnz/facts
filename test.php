<?php
include 'templ/templ.tpl';
include 'config/db.php';

$sql_info = "SELECT info FROM .$dbname.";
$result_info = $conn->query($sql_info);

	
if ($result_info->num_rows > 0) {
     while($row = $result_info->fetch_assoc()) {
		$searchfor = $row["info"];
		$i=1;
		$i++;
		echo $i;
		echo $row["info"];
		echo "<br>";

	 }

}
?>
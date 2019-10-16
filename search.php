<?php
include 'templ/templ.tpl';
include 'config/db.php';

$sql = "SELECT fact FROM .$dbname.";
$result = $conn->query($sql);

	
if ($result->num_rows > 0) {
     while($row = $result->fetch_assoc()) {
		$searchfor = $row["fact"];
		$file = 'file/to_be_parsed.txt';
		


		
$contents = file_get_contents($file);
$pattern = preg_quote($searchfor, '/');
$pattern = "/^.*$pattern.*\$/m";
if(preg_match_all($pattern, $contents, $matches)){

echo "<table><tr>";
echo " <tr>
    <td> ";
	  
	  
  echo "$searchfor exists <br> :\n";
	echo implode("", $matches[0]);
   	echo " </td>
  </tr>";
    
  echo "  . ";
  
  
  echo "<table><tr>";
echo " <tr>
    <td> ";
   echo "<br>";
   echo "Score :\n <br> ";
  // echo implode("\n", $matches[0]);
   
   
      	echo " </td>
  </tr>";
  
    echo "<table><tr>";
echo " <tr>
    <td> ";
	
	
   echo "Severity :\n <br>";
  
     
      	echo " </td>
  </tr>";

}
else{
   echo " ";
   
   
}

    }
} else {
    echo "0 results";
}



?>



 





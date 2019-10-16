
<?php
include 'templ/templ.tpl';
include 'config/db.php';
 ini_set('memory_limit', '-1'); 
$file = 'file/output.txt';
$fp = fopen('file/output.txt', 'w');
$counter=NULL;
$score_counter=NULL;


set_time_limit(0);


$sql = "SELECT fact FROM sca";
$result = $conn->query($sql);

echo $file ;
if ($result->num_rows > 0) {
     while($row = $result->fetch_assoc()) {
		$searchfor = $row["fact"];
		$file = 'file/to_be_parsed.txt';

				
$contents = file_get_contents($file);
$pattern = preg_quote($searchfor, '/');
$pattern = "/^.*$pattern.*\$/m";
if(preg_match_all($pattern, $contents, $matches)){
	


	
	
$sql2 = "SELECT fact FROM ".$dbname." WHERE fact = '$searchfor'";
$result2 = $conn->query($sql2);

if ($result2->num_rows > 0) {

    while($row = $result2->fetch_assoc()) {

		fwrite($fp, '[');
		fwrite($fp,  json_encode($row["fact"]));
		fwrite($fp, ']');
    }


echo "<table><tr>";
echo " <tr>
    <td> ";
	  	  

	echo "<br><b>Attack Details:</b>  <details close><br>";
	echo implode("<br>", $matches[0]);
   	echo " </td> </tr>  <table><tr><td><br></details>";
$sql2 = "SELECT info FROM ".$dbname." WHERE fact = '$searchfor'";

$result2 = $conn->query($sql2);

if ($result2->num_rows > 0) {

    while($row = $result2->fetch_assoc()) {
        echo " <b>Reason:</b> <br> <br>" . $row["info"] ."<br> <br><details close> <br>";

		fwrite($fp,  json_encode($row["info"]));
		fwrite($fp,  $row["info"]);
		fwrite($fp, ']');


    }
} else {
    echo "0 results";
}

   
   ///////////////////////////////////////////////////////////////////////////
   $sql2 = "SELECT severity FROM ".$dbname." WHERE fact = '$searchfor'";
//echo $sql2;
$result2 = $conn->query($sql2);

if ($result2->num_rows > 0) {
    // output data of each row
    while($row = $result2->fetch_assoc()) {
		
        echo "<br>  <b>Severity:</b>  <br>" . $row["severity"]. "<br>";
		fwrite($fp, '[');
		fwrite($fp,  json_encode($row["severity"]));
		fwrite($fp, ']');
    }
} else {
    echo "0 results";
}

///////////////////////////////////////////////////////////////////////////  

   $sql2 = "SELECT category FROM ".$dbname." WHERE fact = '$searchfor'";
//echo $sql2;
$result2 = $conn->query($sql2);

if ($result2->num_rows > 0) {
    // output data of each row
    while($row = $result2->fetch_assoc()) {
		
        echo "<br>  <b>Category:</b>  <br>" . $row["category"]. "<br>";
		fwrite($fp, '[');
		fwrite($fp,  json_encode($row["category"]));
		fwrite($fp, ']');
    }
} else {
    echo "0 results";
}


///////////////////////////////////////////////////////////////////////////  
  
   $sql2 = "SELECT description FROM ".$dbname." WHERE fact = '$searchfor'";
//echo $sql2;
$result2 = $conn->query($sql2);

if ($result2->num_rows > 0) {
    // output data of each row
    while($row = $result2->fetch_assoc()) {
		
        echo "<br>  <b>Description:</b>  <br>" . $row["description"]. "<br>";
		
		fwrite($fp, '[');
		fwrite($fp,  json_encode($row["description"]));
		fwrite($fp, ']');
    }
} else {
    echo "0 results";
}



  
   $sql2 = "SELECT advice FROM ".$dbname." WHERE fact = '$searchfor'";
//echo $sql2;
$result2 = $conn->query($sql2);

if ($result2->num_rows > 0) {
    // output data of each row
    while($row = $result2->fetch_assoc()) {
		
        echo "<br> <b> Severity:  </b> <br>" . $row["advice"]. "<br>";
		
		fwrite($fp, '[');
		fwrite($fp,  json_encode($row["advice"]));
		fwrite($fp, ']');
    }
} else {
    echo "0 results";
}

  
   $sql2 = "SELECT score FROM sca WHERE fact = '$searchfor'";
//echo $sql2;
$result2 = $conn->query($sql2);

if ($result2->num_rows > 0) {
    // output data of each row
    while($row = $result2->fetch_assoc()) {
		
        echo "<br>  <b>Score: </b>  <br>" . $row["score"]. "<br>";
		$counter++;
		fwrite($fp, '[');
		fwrite($fp,  json_encode($row["score"]));
		fwrite($fp, ']');
		fwrite($fp, PHP_EOL);
		
		
	
    }


} else {
    echo "0 results";
}

  

} else {
    echo "0 results";
}
echo " </td></tr><table><tr><tr><td></td></tr>";

}
else{
   echo " ";
   
   
}

    }
	
	
} else {
    echo "0 results";
}
	
	
 
$fp ="file/output.txt";
$category_counter1 = substr_count(file_get_contents($fp), "Apache");
$category_counter2 = substr_count(file_get_contents($fp), "Nginx");
$category_counter3 = substr_count(file_get_contents($fp), "Admin Panel enumiration");
$category_counter4 = substr_count(file_get_contents($fp), "Scanners");
$category_counter5 = substr_count(file_get_contents($fp), "Bruteforce");


// Counter for Graph

$fp ="file/output.txt";
$counter_red = substr_count(file_get_contents($fp), "Red");
$counter_green = substr_count(file_get_contents($fp), "Green");
$counter_yellow = substr_count(file_get_contents($fp), "Yellow");
$counter_orange = substr_count(file_get_contents($fp), "Orange");
$counter_purple = substr_count(file_get_contents($fp), "Purple");

$problemsum=$category_counter1+$category_counter2+$category_counter3+$category_counter4+$category_counter5;
echo "<h1>Amount of problems: ".$problemsum. "</h1>.";
echo "Apache Attacks:".$category_counter1."<br>";
echo "Nginx Attacks:".$category_counter2."<br>";
echo "Admin attack:".$category_counter3."<br>";
echo "Exploit:".$category_counter4."<br>";
echo "Bruteforce:".$category_counter5."<br> <br>";


include 'vulnerability_table.php';	

?>


<?php
include 'templ/templ.tpl';

	
?>

<!DOCTYPE html>
<html>
<head>
  <title>Upload your files</title>
</head>
<body>
  <form enctype="multipart/form-data" action="upload.php" method="POST">
    <p>Upload your file</p><br>
    <input type="file" name="uploaded_file"></input><br /><br>
    <input type="submit" value="Upload"></input>
  </form>
</body>
</html>
<?PHP

  if(!empty($_FILES['uploaded_file']))
  {
    $path = "file/";
	$name ="123";
    $path = $path . basename( $_FILES['uploaded_file']['name']);

	  
    if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $path)) {
      echo "The file was uploaded, you can <br><a href=./analyze.php>Start analysis now</a>" ;
     // " has been uploaded";
	  $uploadedfile =basename( $_FILES['uploaded_file']['name']);
	 // echo $ap;
	  echo exec("cd file && erase to_be_parsed.txt");
	  echo exec("cd file && ren ".$uploadedfile." to_be_parsed.txt");
	  
    } else{
        echo "There was an error uploading the file, please try again!";
    }
  }
?>

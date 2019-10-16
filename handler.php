
<?php 
include 'templ/templ.tpl';
include 'config/db.php';
include 'config/names.php';
include 'database.php';

//hander.php handes requests from admin panel and adds to database

echo "<table><tr>";
echo " <tr>
    <td> <br> <b>Category of info:</b><br> ";
echo $_GET["category"]; 

echo " </td>
  </tr> <tr>
    <td><br> <br> <b>You added that if we get:</b> <br>";
echo $_GET["info"]; 


echo "</td>
  </tr><tr>
    <td><br><br> <b>We fact it to</b><br>";
echo $_GET["fact"]; 


echo "</td>
  </tr><tr>
    <td><br><br><b>Advice:<br></b>";
echo $_GET["advice"]; 

echo "</td>
  </tr><tr>
    <td> <br><br> <b>Description:<br></b>";
echo $_GET["description"]; 


echo "</td>
  </tr><tr>
    <td> <br> <br><b>Score it to:</b> <br>";
echo $_GET["score"]; 


echo "</td>
  </tr><tr>
    <td> <br><b> Severity level: </b><br>";
echo $_GET["severity"]; 
echo " <br>";
echo "  </tr></table>";

?>



<?php
// Подключаемые библиотеки:
// Работа с базой данных
// админ панель по замене и определению фактов/
//функционал по распарсиванию данных
//api по передаче данных в формате json обратно.
//Система фактов и определений

include 'templ/templ.tpl';
?>








<div class="form-title"><h2>Add Facts</h2></div>
<form action="handler.php" class="form-container" method="get">
<br> Attack pattern: <br> <input class="form-field" type="text" name="fact"  value ="../../etc" ><br>
<br> LFI attck was detected: <br> <input class="form-field" type="text" name="info"  value ="You have FTPD and this is Good" ><br>
<br> Advice: <br> <input class="form-field" type="text" name="advice"  value ="Please Do this!" ><br>
<br> Description: <br> <input class="form-field" type="text" name="description"  value ="This info is very important" ><br>
<br> Score:
  <select name="score">
    <option value="1">1</option>
	    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
	<option value="5">5</option>
	
	
	    <option value="-1">-1</option>
	    <option value="-2">-2</option>
    <option value="-3">-3</option>
    <option value="-4">-4</option>
	<option value="-5">-5</option>
	
  </select>
<br>

<br> Select Severity level:
  <select name="severity">
    <option value="Green">Green</option>
	    <option value="Purple">Purple</option>
    <option value="Yellow">Yellow</option>
    <option value="Orange">Orange</option>
	<option value="Red">Red</option>
  </select>
<br>

<br> Select category:
  <select name="category">
    <option value="Apache">Apache</option>
    <option value="Nginx">Nginx</option>
    <option value="Admin">Admin</option>
	<option value="Scanners">Scanners</option>
  </select>
<br><br>
<div class="submit-container">

<center><input type="submit"  class='button'></center>
</div>
</form> <br>
</body>
</html>
</center>

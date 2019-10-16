**Log Fact Gatherer.**
Tool aims in finding attacks in log files, or any other files which have clear text(strings) by patterns with
ability to add them ad update database.

![enter image description here](https://github.com/vulnz/facts/blob/master/img/logo.png?raw=true)

**Installation**
1)Please add your database credentials to this file config\db.php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sca"; 

2)Import database Database.sql file from /assets/ folder to your database folder to desired database. type: InnoDB	and encoding: utf8_general_ci 

3)Edit line 24 in \templ\templ.tpl file in order to put your custom path to web db client 

4) Make sure to know your database wait limits and increase them. 

**Steps to start**
1) Check for file you upload: " nginx, apache, php, jboss, iis" logs file

2) Use this form to Upload file.Big files take more time to analyse 

3) Go to Analyze in order to see the results, it make take some time 

4) See the results in format: attack pattern and attack information 

5) Use Add pattern in order to add to database your custom pattern

6) Check for Updates, it will be new patterns updates on request

**Screenshots:**

Results:

![enter image description here](https://github.com/vulnz/facts/blob/master/screenshot/screenshot_1.png?raw=true)



Analysis:


![enter image description here](https://github.com/vulnz/facts/blob/master/screenshot/screenshot_2.PNG?raw=true)

Descriptions:

![enter image description here](https://github.com/vulnz/facts/blob/master/screenshot/screenshot_3.PNG?raw=true)

Add patterns:

![enter image description here](https://github.com/vulnz/facts/blob/master/screenshot/screenshot_4.PNG?raw=true)
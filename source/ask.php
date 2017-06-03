<!-- Anastasia Kassari 3130088 -->

<?php

	session_start();
	
	#Hold session information: start time and 
	# numbers of the correct answers for each question
	$_SESSION['start'] = microtime(true);
	$_SESSION['correct'] = [];
	
	#Database variables
	$host = 'localhost'; 
	$user = 'quiz_user';
	$password = 'quizdb';
	$db_name = 'quizdb';
	
	#Establish connection using mysqli
	$db = new mysqli($host, $user, $password, $db_name)
		or die ('Connection error: '.$db->connect_errno.$db->connect_error); #in case of error

	#Get 6 random rows from the database table
	$result = $db->query("SELECT * FROM questions ORDER BY RAND() LIMIT 6");
	
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>

	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		
		<title> The Quiz - Questions</title>
		
		<link rel="stylesheet" type="text/css" href="style.css">	
		
	</head>
	
	<body>
	
		<div>
			<form action="submit.php" method="post">
			
			<?php
				for ($i = 0; $i < $result->num_rows; $i++) {
					
					$array = $result->fetch_row(); #For each row -> an array for every element
					array_push($_SESSION['correct'], $array[8]); #store the number of the correct answer for question $i
					
					echo('<div align="center"  id="q_a">');
					echo('<h2> Question No.'.($i+1).'</h2>');
					echo('<table align="center">');
					echo('<img src="'.$array[9].'" ');
					echo('<br>');
					echo('<th>'.$array[1].'</th>');
					echo('<br>');
					echo('<td>');
					echo('<input type="radio" name="'.$i.'" value="1" />');
					echo($array[2]);
					echo('<br>');
					echo('<input type="radio" name="'.$i.'" value="2" />');
					echo($array[3]);
					echo('<br>');
					echo('<input type="radio" name="'.$i.'" value="3" />');
					echo($array[4]);
					echo('<br>');
					echo('<input type="radio" name="'.$i.'" value="4" />');
					echo($array[5]);
					echo('<br>');
					echo('<input type="radio" name="'.$i.'" value="5" />');
					echo($array[6]);
					echo('<br>');
					echo('<input type="radio" name="'.$i.'" value="6" />');
					echo($array[7]);
					echo('<br>');
					echo('</td>');
					echo('</table>');
					echo('</div>');
					
				}
			?>
			
			<div id="button" align="center">
				<button type="submit">Submit</button>
			</div>
			
			</form>
			
		</div>
		
	</body>
	
</html>
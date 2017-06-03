<!-- Anastasia Kassari 3130088 -->

<?php

	session_start();
	$end = microtime(true);
	$correct = $_SESSION['correct'];
	$time = $end - $_SESSION['start'];
	$num = 0;
	for ($i = 0; $i < count($correct); $i++) {
		if (isset($_POST[$i])) {
			if ($_POST[$i] === $correct[$i]) {
				$num++;
			}
		}
	}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>

	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		
		<title> The Quiz - Result</title>
		
		<link rel="stylesheet" type="text/css" href="style.css">	
		
	</head>
	
	<body>
	
		<div>
			<img id="logo" src="images/quiz.jpg" alt="Quiz">
		</div>
		
		<div align="center" id="result">
		
			<?php
				if ($num >= 3)
					echo('<h1> Congratulations! </h1>');
				else
					echo('<h1> Oh no! </h1>');	
			?>
		
			<h3> You got <?= $num ?> out of 6 questions right.  </h3>
			
			<h4>Time <?= gmdate("i:s", $time) ?> seconds. </h4>
			
		</div>
		
		<div id="end">
			<a href="index.php">
				<button> Take the quiz again! </button>
			</a>
		</div>
		
	</body>
	
</html>
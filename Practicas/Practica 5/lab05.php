<?php
	header('Content-Type: text/html; charset=ISO-8859-1');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Funciones en PHP</title>
	<meta charset="UTF-8" />
	<link rel="stylesheet" href="php.css">
</head>
<body>
	<section id="seccion">
		<h1><i>Alumno: Alessander Jesus Carazas Quispe</i></h1>
		<h1>Tabla de 100 numeros Naturales</h1>
		<h2>Numeros primos en rojo</h2>
		<?php
		function esPrimo($n){
			if($n<2){
				return false;
			}
			for($i=2; $i<$n; $i++){
				if (($n%$i)==0){
					return false;
				}
			}
			return true;
		}
		echo "<table class='tabla'>";
		echo "<tbody>";
		echo "<tr>";
		$a=1;
		for($i=0; $i<100; $i++){
			if(esPrimo($i)){
				echo "<td class='primo'>" . $i . "</td>";
			}	else{
				echo "<td>" . $i . "</td>";
			}
			if ($a%10==0){
				echo "</tr>";
				$a=0;
			}
			$a=$a+1;
		}
		echo "</tbody>";
		echo "</table>";
		?>
	</section>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Formulario Registro Clientes</title>
	<link rel="stylesheet" href="php_form.css">
</head>
<body>
	<div class="contenedor">
		<h2>Mostar Cliente</h2>
		<?php
		$nombre = $_GET["nombre"];
		$apellido = $_GET["apellido"];
		$email = $_GET["email"];
		$sexo = $_GET["sexo"];
		$profesion= $_GET["profesion"];
		echo "<p>";
		echo "<b>Bienvenido: </b>" . $nombre . " " . $apellido ."<br>";
		echo "<br>";
		echo "<b>Su e-mail es: </b>" . $email."<br>";
		echo "<br>";
		echo "<b>Sexo: </b>". $sexo."<br>";
		echo "<br>";
		echo "<b>Pasatiempos: </b>";
		foreach($_GET["pasatiempo"] as $value){
			echo "$value <br>";
		}
		echo "<br>";
		echo "<b>Y su profesion es: </b>" . $profesion;
		echo "<p>";
		?>
	</div>
</body>
</html>


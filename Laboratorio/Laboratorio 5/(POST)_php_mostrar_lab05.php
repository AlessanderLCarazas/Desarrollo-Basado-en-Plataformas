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
		$nombre = $_POST["nombre"];
		$apellido = $_POST["apellido"];
		$email = $_POST["email"];
		$estadocivil = $_POST["estadocivil"];
		$nacionalidad= $_POST["nacionalidad"];
		echo "<p>";
		echo "<b>Bienvenido: </b>" . $nombre . " " . $apellido ."<br>";
		echo "<br>";
		echo "<b>Su e-mail es: </b>" . $email."<br>";
		echo "<br>";
		echo "<b>Estado Civil: </b>". $estadocivil."<br>";
		echo "<br>";
		echo "<b>Colores Favoritos: </b>";
		foreach($_POST["colores"] as $value){
			echo "$value <br>";
		}
		echo "<br>";
		echo "<b>Y su nacionalidad es: </b>" . $nacionalidad;
		echo "<p>";
		?>
	</div>
</body>
</html>


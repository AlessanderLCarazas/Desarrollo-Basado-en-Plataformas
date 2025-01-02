<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Nuevo Usuario (Lab. 07)</title>
	<link rel="stylesheet" href="portal.css">
</head>
<body>
	<div class="login-page">
		<div class="form">
			<?php
			include("base_datos.php");
			$usua = $_POST["usuario"];
			$clav = $_POST["clave"];
			$dir = "fotos/";
			$file= $_FILES["foto"];
			$path= $_FILES['foto']['name'];
			$ext = pathinfo($path, PATHINFO_EXTENSION);
			if(!move_uploaded_file($file["tmp_name"], "$dir/". $usua . "." . $ext)){
				echo "<p class='message'><a href='portal.php'>Regresar a Login</a></p>";
				echo "<h1>No se puede subir la foto del usuario</h1>";
				return;
			}
		
			$BaseDatos = new base_datos("localhost", "root","","dbp_lab_06_cqal");
			$BaseDatos ->conectar();
			
			if($BaseDatos->insUsuario($usua, $clav)){
				echo "<h1>El usuario se registro correctamente</h1>";
			}
			else
			{
				echo "<h1>Hubo un error al Registrar Usuario</h1>";
			}
			echo "<p class='message'><a href='portal.php'>Regresar a Login</a></p>";
			$BaseDatos ->cerrar();
			?>
		</div>
	</div>
</body>
</html>
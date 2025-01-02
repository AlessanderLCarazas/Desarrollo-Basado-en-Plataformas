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
			<form action="registrar_usuario.php" method="POST" enctype="multipart/form-data" class="login-form">
				<h2 style="text-align:center;">REGISTRAR NUEVO USUARIO: </h2>
				<div class="column">
				<input class="cuadro" id="usuario" name="usuario" type="text" placeholder="Usuario..."/>
				</div>
				<div class="column">
				<input class="cuadro" id="clave" name="clave" type="password" placeholder="Clave..."/>
				</div>
				<label>Seleccione una foto: </label>
				<input class="cuadro" id="foto" name="foto" type="file"/>
				<button id="btnRegistrar" class="btn" type="submit">Registrar</button>
				<p class="message"><a href="portal.php">Regresar a Login</a></p>
			</form>
		</div>
	</div>
</body>
</html>
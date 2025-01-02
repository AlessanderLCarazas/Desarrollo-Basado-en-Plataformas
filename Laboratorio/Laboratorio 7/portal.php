<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Lab. 07</title>
	<link rel="stylesheet" href="portal.css">
	<script type="text/javascript" src="portal.js"></script>
</head>
<body>
	<div class="login-page">
		<div class="form">
			<form class="login-form">
				<h2 style="text-align:center;">INGRESAR A FORMULARIO: </h2>
				<div class="column">
					<input class="cuadro" id="usuario" name="usuario" type="text" placeholder="Usuario..."/>
              			</div>
				<div class="column">
					<input class="cuadro" id="clave" name="clave" type="password" placeholder="Clave..."/>
				</div>
				<button id="btnAcceder" class="btn" type="button">Acceder</button>
				<p class="message">¿No registrado?<a href="nuevo_usuario.php">Registrarse</a></p>
			</form>
			<p class="message_error" id="mensaje" name="mensaje"></p>
		</div>
	</div>
</body>
</html>
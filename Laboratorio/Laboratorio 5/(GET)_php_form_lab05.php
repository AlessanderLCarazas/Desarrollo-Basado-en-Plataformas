<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Formulario Registro Clientes GET</title>
	<link rel="stylesheet" href="php_form.css">
</head>
<body>
	<div class="contenedor">
		<h2>Formulario de Registro de Clientes (GET)</h2>
		<form action="(GET)_php_mostrar_lab05.php" method="get">
			<div class="relleno">
				<h4>Datos: </h4>
				<div class="col_50">
					<input class="campos" id="nombre" name="nombre" type="text" placeholder="Nombre...">
				</div>
				<div class="col_50">
					<input class="campos" id="apellido" name="apellido" type="text" placeholder="Apellido...">
				</div>
				<div class="col_50">
					<input class="campos" id="email" name="email" type="text" placeholder="E-mail...">
				</div>
				<div class="col_50">
					<h4>Sexo: </h4>
					<input type="radio" name="sexo" value="Masculino">Masculino
					<input type="radio" name="sexo" value="Femenino">Femenino
					<input type="radio" name="sexo" value="Otro">Otro
				</div>
				<div class="col_50">
					<h4>Pasatiempos: </h4>
					<input type="checkbox" name="pasatiempo[]" value="Deporte">Deporte<br>
					<input type="checkbox" name="pasatiempo[]" value="Pintar">Pintar<br>
					<input type="checkbox" name="pasatiempo[]" value="Tocar Instumento">Tocar Instumento<br>
					<input type="checkbox" name="pasatiempo[]" value="Bailar">Bailar<br>
					<input type="checkbox" name="pasatiempo[]" value="Leer">Leer<br>
					<input type="checkbox" name="pasatiempo[]" value="Estudiar">Estudiar<br>
					<input type="checkbox" name="pasatiempo[]" value="Cocinar">Cocinar<br>
					<input type="checkbox" name="pasatiempo[]" value="Politica">Politica
				</div>
				<div class="col_50">
					<h4>Profesion: </h4>
					<select name="profesion">
						<option value="">Seleccione su Profesion</option>
						<option>Abogado(a)</option>
						<option>Ingeniero(a)</option>
						<option>Biólogo(a)</option>
						<option>Matemático(a)</option>
						<option>Profesor(a)</option>
						<option>Físico(a)</option>
						<option>Químico(a)</option>
						<option>Electricista</option>
						<option>Arquitecto(a)</option>
					</select>
				</div>
				<button id="btnAgregar" class="btn" type="submit">Enviar</button>
			</div>
		</form>
	</div>
</body>
</html>


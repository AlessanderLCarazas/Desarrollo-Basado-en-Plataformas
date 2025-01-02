<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Formulario Registro Clientes POST</title>
	<link rel="stylesheet" href="php_form.css">
</head>
<body>
	<div class="contenedor">
		<h2>Formulario de Registro de Clientes (POST)</h2>
		<form action="(POST)_php_mostrar_lab05.php" method="post">
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
					<h4>Estado Civil: </h4>
					<input type="radio" name="estadocivil" value="Casado(a)">Casado(a)
					<input type="radio" name="estadocivil" value="Soltero(a)">Soltero(a)
					<input type="radio" name="estadocivil" value="Viudo(a)">Viudo(a)
					<input type="radio" name="estadocivil" value="Conviviente">Conviviente
				</div>
				<div class="col_50">
					<h4>Colores Favoritos: </h4>
					<input type="checkbox" name="colores[]" value="Negro">Negro<br>
					<input type="checkbox" name="colores[]" value="Cafe">Cafe<br>
					<input type="checkbox" name="colores[]" value="Verde Claro">Verde Claro<br>
					<input type="checkbox" name="colores[]" value="Verde Oscuro">Verde Oscuro<br>
					<input type="checkbox" name="colores[]" value="Celeste">Celeste<br>
					<input type="checkbox" name="colores[]" value="Azul">Azul<br>
					<input type="checkbox" name="colores[]" value="Morado">Morado<br>
					<input type="checkbox" name="colores[]" value="Rosa">Rosa<br>
					<input type="checkbox" name="colores[]" value="Piel">Piel<br>
					<input type="checkbox" name="colores[]" value="Rojo">Rojo<br>
					<input type="checkbox" name="colores[]" value="Anaranjado">Anaranjado<br>
					<input type="checkbox" name="colores[]" value="Amarillo">Amarillo<br>
					<input type="checkbox" name="colores[]" value="Blanco">Blanco
				</div>
				<div class="col_50">
					<h4>Nacionalidad: </h4>
					<select name="nacionalidad">
						<option value="">Seleccione su Nacionalidad</option>
						<option>Peruano(a)</option>
						<option>Boliviano(a)</option>
						<option>Chileno(a)</option>
						<option>Argentino(a)</option>
						<option>Uruguayo(a)</option>
						<option>Paraguayo(a)</option>
						<option>Brasileño(a)</option>
						<option>Ecuatoriano(a)</option>
						<option>Venezolano(a)</option>
						<option>Colombiano(a)</option>
						<option>Surinames</option>
					</select>
				</div>
				<button id="btnAgregar" class="btn" type="submit">Enviar</button>
			</div>
		</form>
	</div>
</body>
</html>


<html lang="en">
<head>
	<meta charset="UTF-8"/>
	<title>Formulario de Registro de Clientes (Lab.06)</title>
	<link rel="stylesheet" href="disen_for_BD.css">
	<script type="text/javascript" src="formu_js_BD.js">
	</script>
</head>
<body>
	<div>
		<h2 style="text-align:center;">Formulario de Registro (Lab.06)</h2>
		<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
			<div class="relleno">
				<div class="col_50">
					<input class="campos" id="dni" name="dni" type="text" placeholder="DNI...">
				</div>
				<div class="col_50">
					<input class="campos" id="nombre" name="nombres" type="text" placeholder="Nombres...">
				</div>
				<div class="col_50">
					<input class="campos" id="apellido" name="apellidos" type="text" placeholder="Apellidos...">
				</div>
				<div class="col_50">
					<input class="campos" id="email" name="email" type="text" placeholder="E-mail...">
				</div>
				<div class="col_100">
					<input class="campos" id="telefono" name="telefono" type="text" placeholder="Teléfono...">
				</div>
				<button id="btnAgregar" class="btn" type="button">Agregar</button>
			</div>
		</form>
	</div>
	<h2 style="text-align:center;">Clientes Registrados</h2>
	<table id="tablaUsuarios" class="tabla">
		<thead>
			<tr>
				<th>DNI</th>
				<th>Nombres</th>
				<th>Apellidos</th>
				<th>E-mail</th>
				<th>Teléfono</th>
			</tr>
		</thead>
		<tbody>
		<?php
		include("base_datos.php");
		$BaseDatos = new base_datos("localhost","root","","dbp_lab_06_cqal");
		$BaseDatos->conectar();
	
		if ($_SERVER["REQUEST_METHOD"]=="POST"){
			$dni = $_POST["dni"];
			$nom = $_POST["nombres"];
			$apel = $_POST["apellidos"];
			$ema = $_POST["email"];
			$tel = $_POST["telefono"];

			$BaseDatos ->insCliente($dni, $nom, $apel, $ema, $tel);
		}
		$clientes = $BaseDatos->getClientes();
		if (!is_null($clientes)){
			while ($row=mysqli_fetch_assoc($clientes)){
				echo "<tr>";
				echo "<td>" . $row["dni"] . "</td>";
				echo "<td>" . $row["nombres"] . "</td>";
				echo "<td>" . $row["apellidos"] . "</td>";
				echo "<td>" . $row["email"] . "</td>";
				echo "<td>" . $row["telefono"] . "</td>";
				echo "</tr>";	
			}
		}
		$BaseDatos -> cerrar();
		?>
		</tbody>
	</table>
</body>
</html>
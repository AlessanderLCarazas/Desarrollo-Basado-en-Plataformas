<?php 
session_start();

if(!isset($_SESSION["usuario"])){
	header("Location: portal.php");
	exit();
}
include("base_datos.php");
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Formulario Registro de Clientes (Lab. 07)</title>
	<link rel="stylesheet" href="disen_for_BD.css">
	<script type="text/javascript" src="formu_js_BD.js"></script>
</head>
<body>
	<div class="contenedor">
		<h2 style="text-align:center;">Bienvenido: <?php echo $_SESSION["usuario"] ?></h2>
		<center>
		<img width='100' height='130' src='fotos\<?php echo $_SESSION["usuario"] ?>.jpg'>
		<br><a href="logout.php">Cerrar Sesion</a>
		</center>
		<h2 style="text-align:center;">Formulario de Registro</h2>
		<form>
			<div class="relleno">
				<div class="col_50">
					<input class="campos" id="dni" type="text" placeholder="DNI...">
				</div>
				<div class="col_50">
					<input class="campos" id="nombre" type="text" placeholder="Nombres...">
				</div>
				<div class="col_50">
					<input class="campos" id="apellido" type="text" placeholder="Apellidos...">
				</div>
				<div class="col_50">
					<input class="campos" id="email" type="text" placeholder="E-mail...">
				</div>
				<div class="col_100">
					<input class="campos" id="telefono" type="text" placeholder="Teléfono...">
				</div>
				<button id="btnAgregar" class="btn" type="button"<?php if ($_SESSION["usuario"]!="acarazas") {echo "disabled";} ?>>Agregar</button>
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
		<tbody id="contenido">
		<?php
		$BaseDatos = new base_datos("localhost","root","","dbp_lab_06_cqal");
		$BaseDatos->conectar();
	
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


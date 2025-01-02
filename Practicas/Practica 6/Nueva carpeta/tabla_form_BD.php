<?php
include("base_datos.php");

if(isset($_COOKIE["colorFondo"])){
	$color = $_COOKIE["colorFondo"];
} else{
	$color = "white";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Formulario de Registro de Clientes (Práctica.06)</title>
	<link rel="stylesheet" href="disen_for_BD.css">
	<script type="text/javascript" src="formu_js_BD_cookie.js"></script>
</head>
<body style="background: <?php echo $color; ?>">
	<div>
		<h2 style="text-align:center;">Formulario de Registro (Prática.06)</h2>
		<select class="boton_color" name="bg_color" id="bg_color" onchange="cambiar_fondo()">
			<option value="white" <?php if($color =="white"){ echo "selected"; }?>>Blanco</option>
			<option value="red" <?php if($color =="red"){ echo "selected"; }?>>Rojo</option>
			<option value="blue" <?php if($color =="blue"){ echo "selected"; }?>>Azul</option>
			<option value="yellow" <?php if($color =="yellow"){ echo "selected"; }?>>Amarillo</option>
			<option value="green" <?php if($color =="green"){ echo "selected"; }?>>Verde</option>
		</select>
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
		<tbody id="contenido">
		<?php
		$BaseDatos = new base_datos("localhost","root","","dbp_prac_06_cqal");
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
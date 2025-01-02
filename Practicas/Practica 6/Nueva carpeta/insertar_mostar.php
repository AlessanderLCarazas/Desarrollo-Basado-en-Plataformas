<?php
include("base_datos.php");
$BaseDatos = new base_datos("localhost","root","","dbp_prac_06_cqal");
$BaseDatos->conectar();

$dni = $_POST["dni"];
$nom = $_POST["nombres"];
$apel = $_POST["apellidos"];
$ema = $_POST["email"];
$tel = $_POST["telefono"];

$BaseDatos ->insCliente($dni, $nom, $apel, $ema, $tel);
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


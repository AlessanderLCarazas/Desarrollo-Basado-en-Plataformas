<?php
include("base_datos.php");
$BaseDatos=new base_datos("localhost","root","","dbp_lab_07_cqal");
$BaseDatos->conectar();

$dni=$_POST["dni"];
$nomb=$_POST["nombres"];
$apel=$_POST["apellidos"];

$BaseDatos->insCliente($dni,$nomb,$apel);

$clientes=$BaseDatos->getClientes();
if(!is_null($clientes)){
    while ($row=mysqli_fetch_assoc($clientes)){
        echo "<tr>";
        echo "<td>".$row["dni"]."</td>";
        echo "<td>".$row["nombre"]."</td>";
        echo "<td>".$row["apellidos"]."</td>";
        echo "</tr>";        
    }
}
$BaseDatos->cerrar();
?>
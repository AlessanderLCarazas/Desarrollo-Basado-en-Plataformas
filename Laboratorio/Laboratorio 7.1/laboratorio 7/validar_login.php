<?php
include("base_datos2.php");
session_start();
$BaseDatos= new base_datos2("localhost","root","","curso_dbp");
$BaseDatos->conectar();

$usua= $_POST["usuario"];
$clav= $_POST["clave"];

$usuarios=$BaseDatos->getUsuarios();
if(!is_null($usuarios)){
    while ($row=mysqli_fetch_assoc($usuarios)){
        if($row["usuario"]==$usua&&$row["clave"]==$clav){
            $_SESSION["usuario"]=$usua;
            $BaseDatos->cerrar();
            echo "OK";
            return;

        }
    }
}
session_unset();
session_destroy();
echo "Usuario no registrado";
$BaseDatos->cerrar();
?>
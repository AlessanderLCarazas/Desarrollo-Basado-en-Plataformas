<?php
session_start();
if(!isset($_SESSION["usuario"])){
    header("Location: portal.php");
    exit();
}
include("base_datos.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario registro de clientes</title>
    <link rel="stylesheet" href="estilo.css">
    <script type="text/javascript"src="codigo.js"> </script>

</head>
<body >
    <div class="contenedor">
        <h2 style="text-align:center;">Bienvenido<br><?php echo $_SESSION["usuario"]?></h2>
        <center>
            <img width='80' height='100' src='foto<?php echo $_SESSION["usuario"]?>.jpg'>
        </center>
        <center>
        <a href="logout.php">Cerrar Sesion</a>
        </center>
        <h2 style="text-align:center;">Formulario de Registro</h2>
        <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
            <div class="relleno">
                <div class="col_50">
                    <input class="campos"type="text" id="dni" name="dni"placeholder="DNI...">
                </div>   
                <div class="col_50">
                    <input class="campos"type="text" id="nombre" name="nombre"placeholder="Nombre...">
                </div>  
                <div class="col_100">
                    <input class="campos"type="text" id="apellidos"name="apellidos" placeholder="Apellidos...">
                </div>   
                <button id="btnAgregar" class="btn" type="button"<?php if($_SESSION["usuario"]!="princce"){echo "disabled";}?>>Agregar</button>
        </div>
    </form> 
    </div>
    <h2 style="text-align: center;">Clientes Registrados</h2>
    <table id="tablaUsuarios" class="tabla">
        <thead>
            <tr>
                <th>DNI</th>
                <th>Nombres</th>
                <th>Apellidos</th>
            </tr> 
        </thead>
        <tbody id="contenido">
        <?php
        $BaseDatos= new base_datos("localhost","root","","dbp_lab_07_cqal");
        $BaseDatos->conectar();
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $dni=$_POST["dni"];
            $nomb=$_POST["nombres"];
            $apel=$_POST["apellidos"];
        
            $BaseDatos->insCliente($dni ,$nomb ,$apel);
        }
        
        $clientes=$BaseDatos->getClientes();
        if(!is_null($clientes)){
            while($row=mysqli_fetch_assoc($clientes)){
                echo "<tr>";
                echo "<td>".$row["dni"]."</td>";
                echo "<td>".$row["nombre"]."</td>";
                echo "<td>".$row["apellidos"]."</td>";
                echo "</tr>";

            }
        }
        $BaseDatos->cerrar();
        ?>
        </tbody>
    </table>
</body>
</html>
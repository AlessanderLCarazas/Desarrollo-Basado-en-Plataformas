<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Usuario</title>
    <link rel="stylesheet" href="estiloregistro.css">

</head>
<body class="body2">
    <div class="login-page">
        <div class="form">
            <?php
            include("base_datos2.php");
            $usua=$_POST["usuario"];
            $clav=$_POST["clave"];
            $dir="foto";
            $file=$_FILES["foto"];
            $path=$_FILES['foto']['name'];
            $ext=pathinfo($path, PATHINFO_EXTENSION);
            if(!move_uploaded_file($file["tmp_name"],"$dir".$usua.".".$ext)){
                echo "<p class='message'><a href='portal.php'>Regresar a Login</a></p>";
                echo "<h1>No se pudo subir la foto del usuario</h1>";
                return;
            }
            $BaseDatos=new base_datos2("localhost","root","","dbp_lab_07_cqal");
            $BaseDatos->conectar();
            if($BaseDatos->insUsuario($usua,$clav)){
                echo "<h1>El usuario se registro correctamente</h1>";

            }else{
                echo "<h1>Hubo un error al registrar al usuario</h1>";

            }
            echo "<p class='message'><a href='portal.php'>Regresar a Login</a></p>";
            $BaseDatos->cerrar();
            ?> 
</body>

</html>
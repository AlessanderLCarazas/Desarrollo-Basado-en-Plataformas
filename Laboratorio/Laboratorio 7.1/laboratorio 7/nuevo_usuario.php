<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estiloregistro.css">
    <title>Nuevo Usuario</title>
    
</head>
<body>
    <div class="login-page">
        <div class="form">
            <form action ="registrar_usuario.php" method="POST" enctype="multipart/form-data" class="login-form">
                <h2 style="text.align:center;">Registro</h2>
                <div class="div">
                <input class="input"id="usuario" name="usuario"type="text" placeholder="usuario"/>
                </div>
                <div class="div">
                <input class="input"id="clave" name="clave"type="password" placeholder="clave"/>
                </div>
                <label>Seleccione una foto:</label>
                <div class="div">
                <input class="input"id="foto" name="foto"type="file"/>
                </div>
                <button id="btnRegistrar" class="btn" type="submit">Registrar</button>
                <p class="message"><a href="portal.php">Regresar a login</a></p>
            </form>
        </div>    
    </div>
    
</body>
</html>
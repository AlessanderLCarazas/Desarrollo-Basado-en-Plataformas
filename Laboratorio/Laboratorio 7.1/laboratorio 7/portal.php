
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilologin.css">
    <script type="text/javascript" src="portal.js"></script>
    <title>Logeo</title>

</head>
<body>
    <div class="login-page">
        <div class="form">
            <form class="login-form">
                <h2 style="text-align:center;">Login</h2>
                <div class="div">
                <input class="input"type="text" id="usuario"name="usuario" placeholder="usuario"/>
                </div>
                <div class="div">
                <input class="input"type="password" id="clave"name="clave" placeholder="clave"/>
                </div>
                <button id="btnAcceder" class="btn" type="button">Acceder</button>
                <p class="message">A¿No Registrado?<a href="nuevo_usuario.php">Registrarse</a></p>
                <br>
                <p class="message_error" id="mensaje" name="mensaje"></p>
            </form>   
            
        </div>
    </div>
                                
    
</body>
</html>
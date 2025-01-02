<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LOGIN Práctica(09)</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>
        <h1>LOGIN Práctica(09)</h1>
        <div class="form">
            <form class="login-form" action="login" method="post">
                <div class="column">
                    Nombre Nombre:<input class="cuadro" type="text" name="primerNombre"><br>
                    Segundo Nombre:<input class="cuadro" type="text" name="segundoNombre"><br>
                    Primer Apellido:<input class="cuadro" type="text" name="primerApellido"><br>
                    Segundo Apellido:<input class="cuadro" type="text" name="segundoApellido"><br>
                    <input class="btn" type="submit" value="Validar">
                </div>
            </form>
        </div>
    </body>
</html>

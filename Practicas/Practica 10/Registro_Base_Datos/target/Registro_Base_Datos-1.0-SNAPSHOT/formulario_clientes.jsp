<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Formulario de Registro de Clientes (Práctica.10)</title>
        <link rel="stylesheet" href="css/disen_for_BD.css">
        <script type="text/javascript" src="js/formu_js_BD.js"></script>
    </head>
    <body>
        <div class="contenedor">
            <h2 style="text-align:center;">Formulario de Registro (Prática.10)</h2>
            <select class="boton_color" name="bg_color" id="bg_color" onchange="cambiar_fondo()">
                <option value="white" <?php if($color =="white"){ echo "selected"; }?>Blanco</option>
                <option value="red" <?php if($color =="red"){ echo "selected"; }?>Rojo</option>
                <option value="blue" <?php if($color =="blue"){ echo "selected"; }?>Azul</option>
                <option value="yellow" <?php if($color =="yellow"){ echo "selected"; }?>Amarillo</option>
                <option value="green" <?php if($color =="green"){ echo "selected"; }?>Verde</option>
            </select>
            <form>
                <div class="relleno">
                    <div class="col_50">
                        <input class="campos" id="dni" name="dni" type="text" placeholder="DNI...">
                    </div>
                    <div class="col_50">
                        <input class="campos" id="nombres" name="nombres" type="text" placeholder="Nombres...">
                    </div>
                    <div class="col_50">
                        <input class="campos" id="apellidos" name="apellidos" type="text" placeholder="Apellidos...">
                    </div>
                    <div class="col_50">
                        <input class="campos" id="email" name="email" type="text" placeholder="E-mail...">
                    </div>
                    <div class="col_100">
                        <input class="campos" id="telefono" name="telefono" type="text" placeholder="Teléfono...">
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
                <c:forEach items="${clientes}" var="cliente" varStatus="status">
                    <tr>
                        <td>${cliente.dni}</td>
                        <td>${cliente.nombres}</td>
                        <td>${cliente.apellidos}</td>
                        <td>${cliente.email}</td>
                        <td>${cliente.telefono}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>

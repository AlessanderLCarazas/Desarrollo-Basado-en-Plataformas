<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("usuario") == null) {
        session.invalidate();
        response.sendRedirect("index.html");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Inicial Lab.10</title>
        <link rel="stylesheet" href="css/formulario_clientes.css">
    </head>
    <body>
        <div class="contenedor">
            <h2>Bienvenido <%=session.getAttribute("usuario")%></h2>
            <img width='100' height='130' src='<%=request.getServletContext().getContextPath() + File.separator+ "fotos" + File.separator+ 
                    session.getAttribute("usuario") + ".jpg" %>'></br>
            <a href="cerrarsesion">Cerrar Sesion</a>
        </div>
    </body>
</html>

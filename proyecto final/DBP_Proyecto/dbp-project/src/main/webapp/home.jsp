<%-- 
    Document   : home
    Created on : 20 ago. 2022, 08:52:20
    Author     : fhuaquisto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Models.Account"%>
<%@page import="Models.Transaction"%>


<%
    if ((int)session.getAttribute("id") == 0) {
         session.invalidate();
         response.sendRedirect("/dbp-project");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="./css/reset.css"/>
        <link href="//db.onlinewebfonts.com/c/51ba22ae06790efd464bde752a2cd9d1?family=Flexo" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="./css/font.css"/>
        <link rel="stylesheet" href="./css/home.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home | ViaBCP</title>
        <meta name="title" content="Banco de Crédito del Perú | ViaBCP">
        <link rel="shortcut icon" href="img/favicon.png">
    </head>
    <body>
        <header>
            <nav>
                <div class="logo">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" id="Capa_1" width="143px" xml:space="preserve" height="36px" viewBox="0 0 143 36" baseProfile="tiny" version="1.1" y="0px" x="0px">
                        <path fill="#fff" d="m40.04 6.81c0.61-0.09 2.05-0.18 3.43-0.18 3.01 0 5.13 1.03 5.07 3.42-0.08 2.9-3.07 4.55-7.4 4.55h-1.68c-1.22 0-0.86-1.38-0.86-1.38l1.44-6.41zm14.58 17.54c0-4.95-3.56-7.11-6.45-7.32 3.64-0.6 8.45-3.23 8.45-8.07 0-5.17-5.28-7.93-13.25-7.93-3.62 0-7.15 0.3-10.29 0.8l-5.71 24.89s-1.98 6.43 3.64 7.77c1.57 0.38 2.64 0.52 4.39 0.62 14.91 0.81 19.22-5.77 19.22-10.76zm-19.46 3.74l1.89-8.25h2.59c3.68 0 6.73 1 6.65 4.33-0.09 3.76-4.01 5.29-8.3 5.29-0.67 0-1.31 0-1.91-0.02-1.19-0.1-0.92-1.35-0.92-1.35z" fill-rule="evenodd"/>
                        <path fill="#fff" d="m101.32 7.05c0.66-0.09 1.8-0.16 3.31-0.16 2.97 0 5.43 0.86 5.43 4.36 0 3.56-2.75 7-8.12 7.04-0.36 0-0.68-0.01-0.97-0.02-2.4 0-1.73-1.97-1.73-1.97l2.08-9.25zm-10.26 28.15c1.21 0 3.49-0.47 4.27-3.88l1.66-7.33c0.81 0.05 1.94 0.19 3.25 0.19 12.77 0 17.21-8.06 17.21-13.53 0-5.98-4.24-9.41-13.47-9.45-3.78-0.03-7.05 0.11-10.15 0.81l-7.5 33.19h4.73z" fill-rule="evenodd"/>
                        <path d="m67.6 20.54c0-5.41 3.57-13.47 11.74-13.47 2.13 0 5.97 0.54 8.17 2.48 0 0 0.83-2.75 1.07-3.89 0.23-1.12-0.2-2.98-3.7-4.09-2.27-0.72-4.04-1.07-6.55-1.07-12.79 0-19.41 10.32-19.41 20.48 0 10.86 7.39 14.52 14.96 14.52 2.72 0 4.52-0.29 6.22-0.91 2.09-0.72 2.44-2.57 2.44-2.57l1.27-5.58c-3.23 2.32-5.62 2.68-7.8 2.68-5.31 0-8.41-3.35-8.41-8.58z" fill="#fff"/>
                        <path d="m13.59 16.2c1.98-4.74 1.66-11.15-1.5-12.55-2.89-1.34-6.18 2.46-6.34 2.66 0 0-1.08 1.3-1.91 3.12 0.57 0.31 1.65 0.84 1.65 0.84 2.23 1.04 5.24 2.89 8.1 5.93z" fill="#fff"/>
                        <path d="m22.9 12.55c0.26 0.34 3.31 4.08 0.5 8.5-3.08 4.83-11.49 10.35-13.87 11.17-4.63 1.91-7.77-1.62-8.04-1.99-0.86-1.1-1.07-1.33-1.49-2.13 18.88-8.38 15.67-22.8 12.09-24.45 1.15 0.57 3.86 2.1 6.31 4.24 2.44 2.03 4.55 4.69 4.5 4.66z" fill="#F26E27"/>
                        <path d="m131.01 16.2c1.98-4.74 1.66-11.15-1.5-12.55-2.89-1.34-6.18 2.46-6.34 2.66 0 0-1.08 1.3-1.91 3.12 0.57 0.31 1.65 0.84 1.65 0.84 2.23 1.04 5.24 2.89 8.1 5.93z" fill="#fff"/>
                        <path d="m140.32 12.55c0.25 0.34 3.31 4.08 0.5 8.5-3.08 4.83-11.49 10.35-13.87 11.17-4.64 1.91-7.77-1.62-8.04-1.99-0.86-1.1-1.07-1.33-1.49-2.13 18.88-8.38 15.67-22.8 12.09-24.45 1.15 0.57 3.86 2.1 6.3 4.24 2.44 2.03 4.55 4.69 4.51 4.66z" fill="#F26E27"/>
                    </svg>
                </div>
                <div class="menu">
                    <div class="menu_item">
                        <a href="./home">
                            <span>Inicio</span>
                        </a>
                    </div>
                    <div class="menu_item">
                        <a href="./transferencias">
                            <span>Transferencias</span>
                        </a>
                    </div>
                    <div class="menu_item"></div>
                </div>
            </nav>
            <div class="info_user">
                <div class="info_user_title">
                    <h1>Banca por Internet</h1>
                    <h3>Último acceso</h3>
                </div>
                <div class="info_user_data">
                    <p>Hola, <%=session.getAttribute("nombre")%></p>
                    <p>20 de agosto de 2022 - 09:41 am</p>
                </div>
            </div>
        </header>
        <section>
            <div class="box">
                <div class="info">
                    <div class="info_account">
                        <div class="header">
                            <div class="title">
                                <h2>Cuentas</h2>                                
                            </div>
                            <div class="settings">
                                <h2>Ajustes</h2>                                
                            </div>
                            <div class="separate"></div>
                        </div>
                        <div class="body">
                            <%List<Account> std = 
                                (List<Account>)request.getAttribute("cuentas");
                            for(Account s:std){%>
                            <a class="item" href="./cuenta?id=<%=s.getId()%>">
                                <div class="data">
                                    <h3><%=((String)s.getTipo()).substring(0, 1).toUpperCase() + ((String)s.getTipo()).substring(1) %> en soles</h3>
                                    <span>S/ <%=s.getSaldo()%></span>
                                </div>
                                <div class="title">
                                    <span><%=s.getNumero()%></span>
                                    <span>Saldo disponible</span>
                                </div>
                            </a>
                            <%}%>
                        </div>
                    </div>
                </div>
                <div class="methods">
                    <div class="transactions">
                        <div class="header">
                            <div class="title">
                                <h2>Historial</h2>                                
                            </div>
                            <div class="settings">
                                <h2>Ajustes</h2>                                
                            </div>
                            <div class="separate"></div>
                        </div>
                        <div class="body">
                            <%List<Transaction> transactions = 
                                (List<Transaction>)request.getAttribute("transacciones");
                            for(Transaction s: transactions){%>
                            <a class="item" href="#">
                                <span class="fecha"><%=s.getFecha() %></span>
                                <span class="monto"><%=s.getMonto() %></span>
                            </a>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>

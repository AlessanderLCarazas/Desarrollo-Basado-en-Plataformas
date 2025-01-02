<%-- 
    Document   : bcp_pacifico
    Created on : 20/08/2022, 09:59:42 PM
    Author     : Princce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos_vida.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/codigo_vida.js"></script>
        <title>JSP Page</title>
    </head>
    <body>

        <div class="contenedor">
            <img src="img/Onco_Banner_Tablet.png" width="1518" height="350" />
            <div class="texto-encima"><b>Seguro Onco Respaldo<br> Digital</b></div>
            <div class="centrado"> ¡Te protegemos contra el cáncer con un clic! </div>
            <div class="botin">
               
                    <button onclick="javascript:cambia_de_pagina3();">Solicitalo aqui</button>
                
            </div>
            <div id="modal2" class="modal-container">    
                    <div class="modal-content2">
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        
                        <button class="button3b"onclick="javascript:cierra_pagina2();">X</button>
                        <br>
                        <br>
                        <img style="display: inline;"src="img/ONCO_MOBILE.svg" align="right" width="250" height="150" />
                        
                        <p  class="pformu2"><b>Protégete contra el</b></p>
                        &nbsp;&nbsp;
                        <p style="font-size: 20px;"><b>&nbsp;cáncer por solo S/12.99</b></p>
                        <br>
                        
                        <p  style="font-size: 13px;color: gray;">Seguro Onco Respaldo Digital&nbsp;&nbsp;</p>
                        <p  style="font-size: 13px;color: gray;s">PAGO MENSUAL S/12.99 &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</p>
                        <br>
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; Te cubrimos: </p>
                         
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&#10004; Indemnización por Cáncer (Hasta S/30,000)</p>
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&#10004; Telemedicina y consejería gratuita </p>
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&#10004; Asesoría permanente 24/7 </p>
                        <br>
                        <form class="contenedorDni2" >
                            <input align="left" class="inputDni2" type="number" maxlength="8" placeholder="Ingresa tu numero de dni"/>
                            &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                            &nbsp;&nbsp;  
                            <br>
                            <p ><input class="inputcheck"type="checkbox"  value="second_checkbox">Declaro no haber tenido cáncer antes &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</p>
                        </form>
                        <br>
                        <p style="font-size: 10px;color: grey;text-align: left;"> &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;El click en "Contrátalo aquí" confirma la solicitud, el envío de la póliza vía electrónica, la<br>  &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;aceptación Términos y condiciones y el débito en la cuenta de ahorros. Límite de edad: 18 a más.<br>  &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Si cuenta con un Seguro de Protección de Tarjetas antiguo, la compra de este nuevo seguro <br> &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;se efectúa en la renovación.</p>
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button class="button2b"onclick="javascript:cierra_pagina2();">No Gracias</button>
                        <button onclick="javascript:cambia_de_pagina();">Contratelo aqui</button>
                    </div>
                    
                </div>
        </div>
        <div id="header">
                <nav>
			<ul class="nav">
				<p><a href="">Inicio &nbsp;></a></p>
				<p><a href="seguros.jsp">Seguros &nbsp;></a></p>
                               
                                <p><a href="seguro_tarjetas.jsp">Proteccion de tarjeta plus </a></p>    
                </nav>                
        </div>
        <div class="letra">
            <hr>
            <h1 style="text-align: left;">&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;Conoce las Coberturas que tenemos para ti </br></h1>
            
            <img class="Img" src="img/imagenonco.jpg" width="1450" height="550">
            <div class="botinB">
                <button onclick="javascript:cambia_de_pagina2();">Ver Documento</button>
            </div>
             
                   
               
            </div>
        <div>
            <img class="Img" src="img/poliza.jpg" width="1450" height="300">
        </div>s
            
            <div class="padre3">
               <div class="hija3">
                   
                   
               </div>
            </div>
        </div>
        <br><br>
        
            
         
        <h1></h1>
    </body>
</html>
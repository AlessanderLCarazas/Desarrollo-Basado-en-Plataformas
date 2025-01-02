<%-- 
    Document   : seguros
    Created on : 20/08/2022, 10:48:14 PM
    Author     : Princce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Seguros | ViaBCP</title>
        <meta name="title" content="Banco de Crédito del Perú | ViaBCP">
        <link rel="shortcut icon" href="img/favicon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos_seguros.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/codigo_seguros.js"></script>
    </head>
    <body>
        <div class="contenedor2">
            <img src="img/fondo_seguros.png" width="1530" height="350" />
            <div class="texto-encima2"><b>Protegemos tu vida, tus <br>finanzas, tu auto, tu <br>familia y tus planes</b></div>
            
        </div>
        <div id="header2">
                <nav>
			<ul class="nav">
				<p><a href="Index.html">Inicio &nbsp;></a></p>
                                <p><a href="">Seguros &nbsp;</a></p></ul>   
                </nav>                
        </div>
        <div class="letra2">
            <hr>
            <br>
            <h1>Tenemos el Seguro perfecto para ti</h1>
            <br>
            <p>Escoge el que más se acomode a tus planes</p>
            <br>
            <div class="papi">
               <div class="hij">
                    <img class="Img" src="img/imagen_seguroDuo.jpg" width="600" height="420">  
                    
               </div>
               <div class="hij">
                   <img class="Img"src="img/imagen_seguroDuo2.jpg" width="600" height="420"> 
                   <a href="seguro_tarjetas.jsp"><p class="texto-encima-parrafo">Ver más</p></a>
                   <a href="bcp_pacifico.jsp"><p class="texto-encima-parrafo2">Ver más</p></a>
                   <a href="seguro_vida.jsp"><p class="texto-encima-parrafo3">Ver más</p></a>
                   
                </div>
                
                <div class="botin4b">
                    <button onclick="javascript:cambia_de_pagina();">Solicitalo aqui</button>
                    
                </div>
                <div class="botin4b2">
                    <button onclick="javascript:cambia_de_pagina2();">Solicitalo aqui</button>
                </div>
                <div class="botin4b3">
                    <button onclick="javascript:cambia_de_pagina3();">Solicitalo aqui</button>
                </div>
                <div class="botin4b4">
                    <button onclick="javascript:cambia_de_pagina4();">Solicitalo aqui</button>
                </div>
       
            </div>
            <div id="modal" class="modal-container">
                
                    <div class="modal-content">
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        
                        <button class="button3"onclick="javascript:cierra_pagina();">X</button>
                        <br>
                        
                        <img style="display: inline;"src="img/imagen_formu.svg" align="right" width="250" height="150" />
                        
                        <p  class="pformu"><b>Todas tus tarjetas BCP <br>protegidas por solo <br>S/12.99&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</b></p>
                        <br>
                        
                        <p  style="font-size: 13px;color: gray;">&nbsp;Seguro Protección Tarjetas Plus&nbsp;&nbsp;</p>
                        <p  style="font-size: 13px;color: gray;s">PAGO MENSUAL S/12.99 &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</p>
                        <br>
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; Te cubrimos: </p>
                         
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&#10004; En fraude por internet </p>
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&#10004; Transferencias no reconocidas </p>
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&#10004; Robo en retiros de cajeros y agentes </p>
                        <br>
                        <form class="contenedorDni" >
                            <input align="left" class="inputDni" type="number" maxlength="8" placeholder="Ingresa tu numero de dni"/>
                            &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                            &nbsp;&nbsp;   
                        </form>
                        <br>
                        <p style="font-size: 10px;color: grey;text-align: left;"> &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;El click en "Contrátalo aquí" confirma la solicitud, el envío de la póliza vía electrónica, la<br>  &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;aceptación Términos y condiciones y el débito en la cuenta de ahorros. Límite de edad: 18 a más.<br>  &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Si cuenta con un Seguro de Protección de Tarjetas antiguo, la compra de este nuevo seguro <br> &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;se efectúa en la renovación.</p>
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button class="button2"onclick="javascript:cierra_pagina();">No Gracias</button>
                        <button onclick="javascript:cambia_de_pagina();">Contratelo aqui</button>
                    </div>
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
            <div id="modal3" class="modal-container">    
                    <div class="modal-content3">
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        
                        <button class="button3ba"onclick="javascript:cierra_pagina3();">X</button>
                        <br>
                        <br>
                        <img style="display: inline;"src="img/SRV_DESKTOP.svg" align="right" width="250" height="150" />
                        
                        <p  class="pformu3"><b>¡Una tranquilidad más <br>para tu familia por <br>S/0.40 al día!</b></p>
                        
                        <br>
                        
                        <p  style="font-size: 13px;color: gray;">Seguro Respaldo Vida&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                        <p  style="font-size: 13px;color: gray;s">PAGO MENSUAL S/12.99 &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</p>
                        <br>
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; Te cubrimos: </p>
                         
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&#10004; En caso de fallecimiento (S/20,000)</p>
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&#10004; Indemnización por Cáncer (S/8,000) </p>
                        <p  style="font-size: 13px;color: gray;text-align: left;">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&#10004; sRenta hospitalaria (S/50 diarios)</p>
                        <br>
                        <form class="contenedorDni3" >
                            <input align="left" class="inputDni3" type="number" maxlength="8" placeholder="Ingresa tu numero de dni"/>
                            &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                            &nbsp;&nbsp;  
                            <br>
                            
                        </form>
                        <br>
                        <p style="font-size: 10px;color: grey;text-align: left;"> &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;El click en "Contrátalo aquí" confirma la solicitud, el envío de la póliza vía electrónica, la<br>  &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;aceptación Términos y condiciones y el débito en la cuenta de ahorros. Límite de edad: 18 a más.<br>  &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Si cuenta con un Seguro de Protección de Tarjetas antiguo, la compra de este nuevo seguro <br> &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;se efectúa en la renovación.</p>
                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button class="button2ba"onclick="javascript:cierra_pagina3();">No Gracias</button>
                        <button onclick="javascript:cambia_de_pagina();">Contratelo aqui</button>
                    </div>
                    
                </div>
        <h1></h1>
    </body>
</html>

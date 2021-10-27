<%-- 
    Document   : home1
    Created on : 29/05/2019, 02:33:46 PM
    Author     : Usuario
--%>


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.TimeZone"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Bibliotecas</title>
        <link rel="stylesheet" href="<%=ct.urlx%>css/home.css" type="text/css">

    </head>
    <body>
        <div class="tab">
            <%@include file="/tab.jsp"%>
        </div>
        
        <div class="conthome">
            <div class="textsaludo">
                <h3 id="x">Bienvenido, administrador.</h3>
            </div>
            
            <div class="tabla">
                    
                <a><img id="fondo" src="icons/0_PORTADA.jpg"></a>
                    
                    
                       
            </div>
        </div>
    </body>
</html>

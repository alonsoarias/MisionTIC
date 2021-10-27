

<%@page import="conexion.ct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>SGBE</title>
        <link rel="stylesheet" type="text/css" href="<%=ct.urlx%>css/login.css">
        <script src="<%=ct.urlx%>js/main.js"></script>
    </head>
    <body class="body1">  
        <%
        String msg=(String)request.getAttribute("msg");
        %>
        <section id="sec1">
            <header class="head1">Sistema de Gestión de Bibliotecas Escolares - SGBE</header>
            <div class="div1">
                <h6 id="idh6"><strong id="st1">Bienvenido. </strong>¡Inicia sesión para comenzar!</h6>
                <form name="formlogin" action="iniciosesion" method="post">
                    <input type="text" class="text1" placeholder="Usuario" id="un" name="un">
                    <input type="password" class="text1" placeholder="Contraseña" id="pw" name="pw">
                    <input class="btninciar" id="btniniciar" type="submit" value="Iniciar Sesión">
                </form>
               
            </div>
        </section> 
    </body>
</html>

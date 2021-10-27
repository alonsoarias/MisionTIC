<%-- 
    Document   : autorvista
    Created on : 31/05/2019, 10:58:09 AM
    Author     : Brandon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Bibliotecas</title>
        <link type="text/css" rel="stylesheet" href="<%=ct.urlx%>css/autor/autorvista.css">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
    </head>
    <script type="text/javascript" >
     function anular(e) {
          tecla = (document.all) ? e.keyCode : e.which;
          return (tecla != 13);
     }
</script>
    <body>
         <div class="tab">
            <%@include file="/tab.jsp"%>
        </div>
        <div class="divautor">
        <section class="main-contenido">

                <!-- contenedor/content-wrapper -->
                <div class="contenedor">
                    <div class="fila mg-b">
                        <div class="col-xs-6"> 
                            <h3 class="no-margen">Añadir autor</h3>
                        </div>
                    </div>             

                    <div class="col-lg-6">
                    
                                            <section class="panel">
                                                <header class="panel-encabezado">Añadir autor</header>
                                                <div class="panel-body">

                                                    <form action="../../AddAutor" class="form-horizontal" role="form" method="post" onkeypress="return anular(event)">
                                                        <div class="form-grupo">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Autor </label>
                                                            	<div class="col-sm-10">
                                                               	<input type="text" class="form-control" name="autor_name" data-parsley-required="true" data-parsley-trigger="change" placeholder="Autor ">
                                                               </div> 
                                                        </div>                          
                                                        
                                                       <div class="form-grupo"> 
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Descripción</label>
                                                            <div class="col-sm-10"> 
                                                            
                                                            	<textarea rows="5" class="form-control" id="txtareaga" placeholder="Descripción" name="perfil"></textarea>
                                                            </div> 
                                                        </div>
                                                        
                                                        <div class="form-grupo">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Fecha</label>
                                                            	<div class="col-sm-10">
                                                               	<input type="date" class="form-control" name="added_on" data-parsley-required="true" data-parsley-trigger="change" placeholder="dd/mm/aa">
                                                               </div> 
                                                        </div> 
                                                        
                                                     <hr> 
                                                      <div class="form-grupo">  
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                                <input type="submit" value="Añadir" class="btn btn-defecto">
                                                            </div>
                                                        </div>
                                                     
                             
                                                        </form></div>
                                                       
                                                </section></div> 
                    <div class="col-lg-6">
                                            <section class="panel">
                                                <header class="panel-encabezado">Buscar autor</header>
                                                <div class="panel-body">

                                                    <form action="../../Lautor" class="form-horizontal" method="get" onkeypress="return anular(event)">
                                                        <div class="form-grupo">
                                                            <label class="col-sm-2 control-label">Autor</label>
                                                            	<div class="col-sm-10">
                                                               	 <input class="form-control" id="boxbusq" placeholder="Nombre" type="text" name="nombre" >
                                                                 
                                                               </div> 
                                                        </div> 
                                                     <hr> 
                                                        </form></div>
                                                        <div class="form-grupo">   
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                              
                                                            </div>
                                                        </div>
                                                </section></div> 
					<div class="fila">
                        <div class="col-lg-12">
                            <section class="panel">
                                <div class="panel-body">
                                
                                    <div class="col-lg-12">
                                            <section class="panel panel-primario">
                                <div class="panel-encabezado">Autores 
                                    
                                </div>
                              
                                
                                
                                	 <table class="tabla tabla-hover no-margen" id="kl">
                         
                    <tr >
                        
                    </tr>
      
                                   </table>
                             
                            </section> 
                                        </div> 
                                </div>
                            </section>
                        </div>
                    </div>
                </div></section>
        </div>
        
      
        
    </body>
      <script>
$(document).ready(function() {
                $('#boxbusq').keyup(function(event) {
          
      var nombreVar2 = $('#boxbusq').val();

                        try {
                             $.get('../../Lautor', {
                                nombre : nombreVar2
                        }, function(a) {
 
                                $('#kl').html(a);
                        });
    
} catch (e) {
    alert(e);
}
          
                });
        });</script>
</html>

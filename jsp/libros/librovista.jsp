
<%--<%@page import="dao.LibroDAO"%>--%>
<%--<%@page import="bean.Libro"%>--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Bibliotecas</title>
        <link rel="stylesheet" href="<%=ct.urlx%>css/libros/libvista.css" type="text/css">
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
        <div class="libvista">
            <div id="barup">
                <div id="busqh3"><h3 id="bqlibh3">Búsqueda de Libros</h3></div>
                <a id="addAbook" href="<%=ct.urlx%>jsp/libros/addlibro.jsp">Añadir Libro</a>
            </div>
            
            <div class="busq">
                <section class="panelbusq">
                    <header class="panelhbus">Buscar por nombre</header>
                   
                    <div class="paneling">
                        <form action="../../ListarLibro" method="post" class="formbook1" onkeypress="return anular(event)">
                            <div class="formbook1div">
                                <label class="librolabel">Libro</label>
                                <div class="barbusq">
                                    <input class="boxbusq" id="boxbusq" placeholder="Nombre" type="text" name="nombre">
                                </div>
                            </div>
                            
                        <div class="divbtnbusq">
                            
                            
               
                            </div>
                            
                            </form>
                    </div>
                </section>
            </div>
            
             <div class="busq">
                <section class="panelbusq">
                    <header class="panelhbus">Buscar por nombre de Autor</header>
                   
                    <div class="paneling">
                        <form action="../../BLXAutor" method="post" class="formbook1" onkeypress="return anular(event)">
                            <div class="formbook1div">
                                <label class="librolabel">Nombre de Autor</label>
                                <div class="barbusq">
                                    <input class="boxbusq" id="boxbusq2" placeholder="Nombre" type="text" name="nombre2" >
                                </div>
                            </div>
                            
                        <div class="divbtnbusq">
                           
                            </div>
                            
                            </form>
                    </div>
                </section>
            </div>
            
          
          
            <div id="tablibros">

                    <div class="tabdiv2">
                        <section class="sectiontabbook">
                            <div class="tabdiv3"><a id="verlib">Ver Libros</a>
                            </div>
                            <div >
                                <table class="tbbook"  id="tabofi">
                                   
                                </table>
                                 <table class="tbbook"  id="tabofi2">
                                   
                                </table>
                            </div>
                                
                            
                        </section> 
                    </div>

            </div>
        </div>
      
    </body>
                     <script>
$(document).ready(function() {
		$('#boxbusq').keyup(function(event) {
                 
      var nombreVar = $('#boxbusq').val();
			try {
                             $.post('../../ListarLibro', {
				nombre : nombreVar
			}, function(responseText) {
				$('#tabofi').html(responseText);
			});
    
} catch (e) {
    alert(e);
}
          
		});
	});
</script>   

                     <script>
$(document).ready(function() {
		$('#boxbusq2').keyup(function(event) {
                 
      var nombreVar2 = $('#boxbusq2').val();
			try {
                             $.post('../../BLXAutor', {
				nombre2 : nombreVar2
			}, function(responseText) {
				$('#tabofi').html(responseText);
			});
    
} catch (e) {
    alert(e);
}
          
		});
	});
</script>  



</html>

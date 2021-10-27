

<%@page import="dao.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Bibliotecas</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <link type="text/css" rel="stylesheet" href="<%=ct.urlx%>css/categoria/catvista.css">
          <script type="text/javascript" >
     function anular(e) {
          tecla = (document.all) ? e.keyCode : e.which;
          return (tecla != 13);
     }
</script>
    </head>
    <body>
        <div class="tab">
            <%@include file="/tab.jsp"%>
        </div>
        <div class="divcategoria">
            <section class="main-contenido">
                <div class="contenedor">
                    <div class="row mg-b">
                        <div class="col-xs-6"> 
                            <h3 class="no-margen">Añadir Categoría</h3>
                        </div>
                    </div>             
                    <div class="col-lg-6">
                        <section class="panel">
                            <header class="panel-encabezado">Añadir</header>
                            <div class="panel-body">

                                <form action="../../AddCategoria" class="form-horizontal" role="form" method="post" onkeypress="return anular(event)">
                                    <div class="form-grupo">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Categoría</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="category_name" data-parsley-required="true" data-parsley-trigger="change" placeholder="Categoría">
                                        </div> 
                                    </div> 
                                    <div class="form-grupo">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Descripción</label>
                                        <div class="col-sm-10"> 
                                            <textarea rows="5" class="form-control" id="txtareaga2" placeholder="Descripción" name="profile"></textarea>     
                                        </div> 
                                    </div>
                                    <div class="form-grupo">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Fecha</label>
                                        <div class="col-sm-10">
                                            <input type="date" class="form-control" name="added_on" data-parsley-required="true" data-parsley-trigger="change" placeholder="Fecha">
                                        </div> 
                                    </div> 
                                    <hr> 
                                    <div class="form-grupo">  
                                        <div class="col-sm-offset-2 col-sm-15">
                                            <button type="submit" class="btn btn-default">Añadir</button>
                                        </div>
                                    </div>
                                </form></div>

                        </section></div> 	
                    <form action="../../ListaCat" method="post">
                    
                    
                    <div class="col-lg-6">
                        <section class="panel">
                            <header class="panel-encabezado">Buscar Categoría</header>
                            <div class="panel-body">

                               
                                    <div class="form-grupo">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Categoría</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="nombre" id="boxbusq" placeholder="Categoría">
                                        </div> 
                                    </div> 
                                </div>

                        </section></div> 
                    
                    </form>
                   
                    
                    <div class="row">



                        <div class="col-lg-12">

                            <section class="panel">
                                <div class="panel-body">
                                    <div class="col-lg-12">

                                        <section class="panel panel-primario">
                                            <div class="panel-encabezado">Categorías
                                            </div>

                                            <table class="tabla tabla-hover no-margen" id="tabofi">
                                                
                                            </table>

                                        </section> 
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
    <script>
        $(document).ready(function () {
            $('#boxbusq').keyup(function (event) {

                var nombreVar = $('#boxbusq').val();
                try {
                    $.post('../../ListaCat', {
                        nombre: nombreVar
                    }, function (responseText) {
                        $('#tabofi').html(responseText);
                    });

                } catch (e) {
                    alert(e);
                }

            });
        });
    </script>  
</html>

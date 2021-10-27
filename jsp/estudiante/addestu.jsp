<%-- 
    Document   : añadirest
    Created on : 30/06/2019, 02:01:15 AM
    Author     : Grismer
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="bean.Libro"%>
<%@page import="dao.LibroDAO2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Bibliotecas</title>
        <link type="text/css" rel="stylesheet" href="<%=ct.urlx%>css/estudiante/addestu.css">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        
        
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
        <div class="div_añadir_estudiante">
            <div class="contenedor">

                <div class="fila mg-b">
                    <div class="col-xs-6"> 
                        <h3 class="no-margen">Añadir estudiante</h3>

                    </div>


                </div>

                <div class="col-lg-8">
                    <section class="panel">
                        <div class="panel-body">

                            <form action="../../AddEstudiante" class="form-horizontal" method="post" onkeypress="return anular(event)">


                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Nombre</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="Nombre" name="student_name">
                                    </div>
                                </div>

                                <hr> 
                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Apellidos</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="Apellidos" name="student_app">
                                    </div>
                                </div>

                                <hr> 


                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Nivel</label>
                                    <div class="col-sm-10">
                                        <select class="form-control2" name="seccion">
                                            <option>Primaria</option>
                                            <option>Secundaria</option>
                                        </select>
                                    </div>
                                </div>

                                <hr> 

                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Grado</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="Grado" name="grade">
                                    </div>
                                </div>

                                <hr> 

                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Sección</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="Sección" name="section">
                                    </div>
                                </div>


                                <hr> 

                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Titulo del Libro</label>
                                    <div class="col-sm-10">

                                       

                                        <select class="form-control2" name="book_name" data-parsley-required="true" data-parsley-trigger="change">
                                            
                                             <%  
                                            LibroDAO2 dao = new LibroDAO2();
                                            List<Libro> list = dao.listar();
                                            Iterator<Libro> iter = list.iterator();
                                            Libro lir = null;

                                            while (iter.hasNext()){
                                                lir=iter.next();
                                            
                                            
                                        %>
                                            
                                            <option><%=lir.getLibro_titulo()%><%}%></option>
                                            
                                        </select>
                                            
                                    </div>
                                </div>

                                <hr>

                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Tiempo de Préstamo</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="Tiempo de prestamo" name="tprest">
                                    </div>
                                </div>

                                <hr>
                                
                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Estado</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="estado">
                                            <option>Pendiente</option>
                                            <option>Retornado</option>
                                            
                                        </select>
                                      
                                    </div>
                                </div>

                                <hr>



                                <div class="form-grupo">  
                                    <div class="col-sm-offset-2 col-sm-15">
                                        <button type="submit" class="btn btn-defecto">Añadir estudiante</button>
                                    </div>
                                </div>
                            </form></div>


                    </section></div>

            </div>
        </div>
    </body>


    <script>
        $(document).ready(function () {
            $('#bqbook').keyup(function (event) {

                var nombreVar = $('#bqbook').val();
                try {
                    $.post('../../ListarLibro', {
                        book_name: nombreVar
                    }, function (responseText) {
                        $('#bqbook').html(responseText);
                    });

                } catch (e) {
                    alert(e);
                }

            });
        });
    </script>

</html>

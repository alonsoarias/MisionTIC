


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.Conexion"%>
<%@page import="bean.Estudiante"%>
<%@page import="dao.EstudianteDAO"%>
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
                        <h3 class="no-margen">Editar estudiante</h3>

                    </div>


                </div>

                <div class="col-lg-8">
                    <section class="panel">
                        <div class="panel-body">

                            <%
                                //CONECTANOD A LA BASE DE DATOS:
                                Connection con;
                                String url = "jdbc:mysql://localhost/sgbe";
                                String Driver = "com.mysql.jdbc.Driver";
                                String user = "root";
                                String clave = "12345678";
                                Class.forName(Driver);
                                con = DriverManager.getConnection(url, user, clave);
                                //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
                                PreparedStatement ps;
                                ResultSet rs;
                                String cod = request.getParameter("cod");
                                ps = con.prepareStatement("select * from estudiantes where student_id=" + cod);
                                rs = ps.executeQuery();
                                while (rs.next()) {
                            %>




                            <form action="" class="form-horizontal" method="post" onkeypress="return anular(event)">



                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="<%=rs.getString("student_id")%>" readonly="readonly">
                                    </div>
                                </div>
                                <hr> 

                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Nombre</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="<%=rs.getString("student_name")%>" readonly="readonly" name="student_name">
                                    </div>
                                </div>

                                <hr> 
                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Apellidos</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="<%=rs.getString("student_app")%>" readonly="readonly" name="student_app">
                                    </div>
                                </div>

                                <hr> 


                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Nivel</label>
                                    <div class="col-sm-10">
                                        <select class="form-control2"  name="seccion">
                                            <option><%=rs.getString("nivel")%></option>

                                        </select>
                                    </div>
                                </div>

                                <hr> 

                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Grado</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" readonly="readonly" placeholder="<%=rs.getString("grado")%>" name="grade">
                                    </div>
                                </div>

                                <hr> 

                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Sección</label>
                                    <div class="col-sm-10">
                                        <input type="text" readonly="readonly" class="form-control" placeholder="<%=rs.getString("seccion")%>" name="section">
                                    </div> 
                                </div>


                                <hr> 

                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Titulo del Libro</label>
                                    <div class="col-sm-10">



                                        <select class="form-control2" name="book_name" data-parsley-required="true" data-parsley-trigger="change">



                                            <option><%=rs.getString("book_name")%></option>

                                        </select>

                                    </div>
                                </div>

                                <hr>

                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Tiempo de Préstamo</label>
                                    <div class="col-sm-10">
                                        <input type="text" readonly="readonly" class="form-control" placeholder="<%=rs.getString("tprest")%>" name="tprest">
                                    </div>
                                </div>

                                <hr>

                                <div class="form-grupo">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Estado</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="estado">
                                            <option><%=rs.getString("estado")%></option>
                                            <option>Retornado</option>
                                            <option>Pendiente</option>


                                        </select>

                                    </div>
                                </div>

                                <hr>



                                <div class="form-grupo">  
                                    <div class="col-sm-offset-2 col-sm-15">
                                        <input type="submit" class="btn btn-defecto" name="btngrabar" value="Editar">
                                    </div>
                                </div>
                            </form>
                            <%}%>               
                        </div>


                    </section></div>

            </div>
        </div>
    </body>

    <%
        String estado;

        estado = request.getParameter("estado");
        if (estado != null) {
            ps = con.prepareStatement("update estudiantes set estado='" + estado + "'where student_id=" + cod);
            ps.executeUpdate();
            response.sendRedirect("registro.jsp");
        }


    %>


</html>

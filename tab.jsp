<%-- 
    Document   : tab
    Created on : 29/05/2019, 09:20:26 PM
    Author     : Brandon
--%>

<%@page import="java.util.Iterator"%>
<%@page import="bean.AdminBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.AdminDAO"%>
<%@page import="conexion.hora"%>
<%@page import="conexion.ct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%=ct.urlx%>css/tab.css" type="text/css" rel="stylesheet">
    </head>
    <body>

        <header class="header1">

            <div id="biblioverde">
                <a href="<%=ct.urlx%>jsp/libros/librovista.jsp" class="a1"></a>
                <a href="<%=ct.urlx%>jsp/libros/librovista.jsp" id="letras1">
                    <i id="ibiblio"></i> 
                    <span>
                        <b>Biblioteca Escolar</b>
                    </span>
                </a>
            </div>


            <div class="hora">
                <ul class="horaul">
                    <li>
                        <a  class="adere">
                            <%
                                hora hr = new hora();
                            %>
                            <span><%=hr.horax()%></span>
                        </a>
                    </li>
                </ul>
            </div>
            <%
                AdminDAO dao2 = new AdminDAO();
                List<AdminBean> list2 = dao2.listar();
                Iterator<AdminBean> iter2 = list2.iterator();
                AdminBean lir2 = null;

                while (iter2.hasNext()) {
                    lir2 = iter2.next();


            %>
            <div class="parteder"> 
                <ul class="adminul">
                    <li id="adminli">
                        <a href="#" class="adere2">
                            <%=lir2.getUser()%><%}%>
                        </a>
                    </li>
                </ul>
                <ul class="cerrarnul">
                    <li id="cerrarli">
                        <a href="<%=ct.urlx%>login.jsp" class="adere3">
                            <i>Cerrar sesión</i>
                        </a>
                    </li>
                </ul>
            </div>
        </header>

        <div class="menubar">
            <section class="layout">
                <!-- sidebar menu -->
                <aside class="aside1">
                    <nav class="nav1">
                        <ul>
                            <li>
                                <a href="<%=ct.urlx%>jsp/autor/autorvista.jsp">
                                    <img class="icono" src="<%=ct.urlx%>icons/autor.png">
                                    <span>Autor</span>  
                                </a>
                            </li>
                            <li>
                                <a href="<%=ct.urlx%>jsp/libros/librovista.jsp">
                                    <img class="icono" src="<%=ct.urlx%>icons/book.png">
                                    <span>Libros</span> 
                                </a>
                            </li>

                            <li>
                                <a href="<%=ct.urlx%>jsp/categoria/catvista.jsp">
                                    <img class="icono" src="<%=ct.urlx%>icons/category.png">
                                    <span>Categoría</span> 
                                </a>
                            </li>

                            


                            <li>
                                <a href="<%=ct.urlx%>jsp/registro/registro.jsp">
                                    <img class="icono" src="<%=ct.urlx%>icons/regist.png">
                                    <span>Registros</span>  
                                </a>
                            </li>
                        </ul>
                    </nav>
                </aside>

            </section>
        </div>        
    </body>
</html>

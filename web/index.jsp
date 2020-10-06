<%@page import="com.emergentes.modelo.RECTANGULO" %>

<%
if (session.getAttribute("listas")== null){
        ArrayList<RECTANGULO> items = new ArrayList<RECTANGULO>();      
        session.setAttribute("listas", items);
}
ArrayList<RECTANGULO> lista = (ArrayList<RECTANGULO>) session.getAttribute("listas");
%>

<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <p>Nombre :    Univ. DAVID CARANI QUISPE</p>
        <p>C.I.   :    6001668 L.P.</p>
        <h1>PARTICIPACION CLASE MVC</h1>
        <ul>
            <li><a href="MVC_Rectangulo.jsp">MVC_Rectangulo</a> </li>
            <li><a href="MVC_Encuesta.jsp">MVC_Encuesta</a> </li>
            <li><a href="MVC_Personas.jsp">MVC_Personas</a> </li>
            <li><a href="MVC_Biblioteca.jsp">MVC_Biblioteca</a></li>        
            
    </body>
</html>

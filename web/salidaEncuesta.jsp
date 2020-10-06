<%@page import="com.emergentes.modelo.encuesta" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% encuesta encu = (encuesta) request.getAttribute("miEncu"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h2>Gracias por participar</h2>
        <p>Su nombre es : <%= encu.getNombre() %> </p>
        <p>Los lenguajes de su preferencia: </p>
        <ul>
            <% 
            String[] lenguajes = encu.getLenguaje();
            if (lenguajes != null){
                for (int i = 0; i < lenguajes.length; i++){
            %>
            <li><%= lenguajes[i] %></li>
            <%
                }
            }
            %>
        </ul>
        <a href="index.jsp">Volver</a>
    </body>
</html>

<%@page import="com.emergentes.modelo.RECTANGULO" %>
<%
RECTANGULO miobj = (RECTANGULO) request.getAttribute("miobj");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>AREA DEL RECTANGULO</h1>
        <p>Altura : <%=miobj.getAltura()%></p>
        <p>Base : <%=miobj.getBase()%></p>
        <p>El area del rectangulo es : <%=miobj.getArea()%></p>
        <a href="index.jsp">Volver</a>
    </body>
</html>
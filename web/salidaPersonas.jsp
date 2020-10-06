<%@page import="com.emergentes.modelo.Persona" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        Persona item = (Persona) request.getAttribute("miPersona");
        boolean nuevo = true;
        if (item.getId() > 0) {
            nuevo = false;
        }
        %>
        
        <h3>Registro de personas</h3>
        <form action="ServletPersona" method="post">
            <table>
                <tr>
                    <td>ID : </td> 
                    <td><input type="text" name="id" value="<%= item.getId()%>" /></td>
                </tr>
                <tr>
                    <td>Nombre : </td>
                    <td><input type="text" name="nombre" value="<%= item.getNombre()%>" /></td>
                </tr>
                <tr>
                    <td>Apellidos : </td>
                    <td><input type="text" name="apellidos" value="<%= item.getApellidos()%>" /></td>
                </tr>
                <tr>
                    <td>Edad : </td>
                    <td><input type="text" name="edad" value="<%= item.getEdad()%>" /></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="op" value="4" />
                        <input type="hidden" name="nuevo" value="<%=nuevo%>" /></td>
                    <td><input type="submit" value="Enviar" ></td>
                </tr>
                
            </table>            
        </form>
                    <a href="index.jsp">Volver</a>
    </body>
</html>

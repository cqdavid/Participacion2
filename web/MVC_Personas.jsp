<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.emergentes.modelo.Persona" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        if(session.getAttribute("listaest") == null){
            ArrayList<Persona> listaux = new ArrayList<Persona>();
            session.setAttribute("listaest", listaux);
        }
        ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaest");
        %>
                
        <h3>Lista de personas</h3>
        <a href="ServletPersona?op=1">Nuevo</a>
            <table border="1">
                <tr>
                    <th>ID</th> 
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Edad</th>
                    <th></th>
                    <th></th>
                </tr>
             <%
             if(lista != null){
                 for(Persona item : lista){
              %>       
             
              <tr>
                  <td><%= item.getId()%></td>
                    <td><%= item.getNombre()%></td>
                    <td><%= item.getApellidos()%></td>
                    <td><%= item.getEdad()%></td>
                    <td><a href="ServletPersona?op=2&id=<%=item.getId()%>">Modificar</a></td>
                    <td><a href="ServletPersona?op=3&id=<%=item.getId()%>" onclick='return confirm("Esta seguro de eliminar el registro..?");' >Eliminar</a></td>
                </tr>
            <%
                }
              }  
             %>
            </table>  
    </body>
</html>

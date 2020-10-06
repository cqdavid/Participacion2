<%@page import="com.emergentes.modelo.RECTANGULO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>AREA DE UN RECTANGULO</h1>
        <form action="ServletRectangulo" method="post">
            <table>
                <tr>
                    <td>BASE: </td>
                    <td><input type="text" name="base" value="0" size="2"></td>
                </tr>
                <tr>
                    <td>ALTURA: </td>
                    <td><input type="text" name="altura" value="0" size="2"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Procesar"></td>
                </tr>
            </table>            
        </form>
        
    </body>
</html>

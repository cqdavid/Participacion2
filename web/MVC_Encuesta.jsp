
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h2>ENCUESTA PARA DESARROLLADORES</h2>
        <p>Escriba su nombre y seleccione el lenguaje de su preferencia:</p>
        <form action="ServletEncuesta" method="POST">
            <table>
                <tr>
                    <td>Nombre: </td> <td><input type="text" name="nombre" value="" /></td>
                </tr>
                <tr>
                    <td>PHP</td> <td><input type="checkbox" name="lenguaje" value="PHP" /></td>
                </tr>
                <tr>
                    <td>Java</td> <td><input type="checkbox" name="lenguaje" value="Java" /></td>
                </tr>
                <tr>
                    <td>Python</td> <td><input type="checkbox" name="lenguaje" value="Python" /></td>
                </tr>
                <tr>
                    <td>C#</td> <td><input type="checkbox" name="lenguaje" value="Csharp" /></td>
                </tr>
            </table>
            
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>

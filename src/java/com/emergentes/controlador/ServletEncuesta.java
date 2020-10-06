package com.emergentes.controlador;

import com.emergentes.modelo.encuesta;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletEncuesta", urlPatterns = {"/ServletEncuesta"})
public class ServletEncuesta extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String nombre = request.getParameter("nombre");
       String[] lenguaje = request.getParameterValues("lenguaje");
       
       encuesta obj1 = new encuesta();
       
       obj1.setNombre(nombre);
       obj1.setLenguaje(lenguaje);
       
       request.setAttribute("miEncu", obj1);
       request.getRequestDispatcher("salidaEncuesta.jsp").forward(request, response);
    }
}

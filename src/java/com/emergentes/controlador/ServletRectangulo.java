package com.emergentes.controlador;

import com.emergentes.modelo.RECTANGULO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletRectangulo", urlPatterns = {"/ServletRectangulo"})
public class ServletRectangulo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int base = Integer.parseInt(request.getParameter("base"));
       int altura = Integer.parseInt(request.getParameter("altura"));
       
       RECTANGULO obj = new RECTANGULO();
       
       obj.setBase(base);
       obj.setAltura(altura);
       
       request.setAttribute("miobj", obj);
       
       request.getRequestDispatcher("salidaRectangulo.jsp").forward(request, response);
    }
}

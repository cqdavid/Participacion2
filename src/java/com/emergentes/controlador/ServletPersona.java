package com.emergentes.controlador;

import com.emergentes.modelo.Persona;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletPersona", urlPatterns = {"/ServletPersona"})
public class ServletPersona extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        ArrayList<Persona> lista = (ArrayList<Persona>) ses.getAttribute("listaest");
       
        Persona obj3 = new Persona();
        int id, pos;
        int opcion = Integer.parseInt(request.getParameter("op"));
        
        switch (opcion){
            case 1: 
                request.setAttribute("miPersona",obj3);
                request.getRequestDispatcher("salidaPersonas.jsp");
                break;
                
            case 2:
                id = Integer.parseInt(request.getParameter("id"));
                pos = buscarIndice(request, id);
                obj3 = lista.get(pos);
                request.setAttribute("miPersona", obj3);
                request.getRequestDispatcher("salidaPersonas.jsp").forward(request, response);
                break;
                
            case 3:
                pos = buscarIndice(request, Integer.parseInt(request.getParameter("id")));
                lista.remove(pos);
                ses.setAttribute("listaest", lista);
                response.sendRedirect("MVC_Personas.jsp");
                break;
                
            case 4:
                String nuevo = request.getParameter("nuevo");
                id = Integer.parseInt(request.getParameter("id"));
                int edad = Integer.parseInt(request.getParameter("edad"));
                obj3.setId(id);
                obj3.setNombre(request.getParameter("nombres"));
                obj3.setApellidos(request.getParameter("apellidos"));
                obj3.setEdad(edad);
                
            if (nuevo.equals("true")){
                lista.add(obj3);
            }
            else
            { pos = buscarIndice(request, id);
                lista.set(pos, obj3);
            }
            ses.setAttribute("listaest", lista);
            response.sendRedirect("MVC_Personas.jsp");
            break;
                
            default:
                response.sendRedirect("MVC_Personas.jsp");
        }
        
    }
    private int buscarIndice(HttpServletRequest request, int id){
        HttpSession ses = request.getSession();
        ArrayList<Persona> lista = (ArrayList<Persona>) ses.getAttribute("listaest");
    
        int i = 0;
        if(lista.size() < 0){
            while (i < lista.size()){
                if (lista.get(i).getId() == id) {
                    break;
                }
                else i++;
            }
        
        
        }
        return i;   
    } 
}

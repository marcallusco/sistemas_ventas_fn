
package com.emergentes.controlador;

import com.emergentes.dao.EmpleadoDAO;
import com.emergentes.dao.EmpleadoDAOimpl;
import com.emergentes.modelo.Empleado;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EmpleadoControlador", urlPatterns = {"/EmpleadoControlador"})
public class EmpleadoControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            EmpleadoDAO dao = new EmpleadoDAOimpl();
            int id;
            Empleado em = new Empleado();
            String action = (request.getParameter("action") !=null)?request.getParameter("action"):"view";
            switch(action){
                case "add":
                    request.setAttribute("empleado", em);
                    request.getRequestDispatcher("frmempleados.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    em = dao.getById(id);
                    request.setAttribute("empleado", em);
                    request.getRequestDispatcher("frmempleados.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect("EmpleadoControlador");
                    break;
                case "view":
                    List<Empleado>lista = dao.getAll();
                    request.setAttribute("empleado", lista);
                    request.getRequestDispatcher("empleados.jsp").forward(request, response);
                    break;
        }
        } catch (Exception e) {
            System.out.println("Error"+e.getMessage());
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int id = Integer.parseInt(request.getParameter("id"));
       String ci = request.getParameter("ci");
       String nombres = request.getParameter("nombres");
       String apellidos = request.getParameter("apellidos");
       String celular = request.getParameter("celular");
       
       Empleado em = new Empleado();
       em.setId(id);
       em.setCi(ci);
       em.setNombres(nombres);
       em.setApellidos(apellidos);
       em.setCelular(celular);
       
       EmpleadoDAO dao = new EmpleadoDAOimpl();
       if(id == 0){
           try {
               dao.insert(em);
           } catch (Exception e) {
               System.out.println("Error al insertar" + e.getMessage());
           }
       }else{
           try {
               dao.update(em);
           } catch (Exception e) {
               System.out.println("Error al editar"+ e.getMessage());
           }
       }
       response.sendRedirect("EmpleadoControlador");
    }
}

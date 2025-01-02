package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.PersonaBean;

public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String primerNombre = request.getParameter("primerNombre");
        String segundoNombre = request.getParameter("segundoNombre");
        String primerApellido = request.getParameter("primerApellido");
        String segundoApellido = request.getParameter("segundoApellido");
        
        PersonaBean persona = new PersonaBean();
        persona.setPrimerNombre(primerNombre);
        persona.setSegundoNombre(segundoNombre);
        persona.setPrimerApellido(primerApellido);
        persona.setSegundoApellido(segundoApellido);
        
        boolean estado = persona.validacion();
        
        request.setAttribute("persona", persona);
        
        if(estado){
            RequestDispatcher rd= request.getRequestDispatcher("suceso.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd= request.getRequestDispatcher("error.jsp");
            rd.forward(request, response);
        }
    }

}

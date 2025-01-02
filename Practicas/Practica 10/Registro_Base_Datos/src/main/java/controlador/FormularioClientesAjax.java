package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.BDConexion;
import modelo.Cliente;
import modelo.ClienteBD;

public class FormularioClientesAjax extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd;
        BDConexion conn= new BDConexion();
        ClienteBD clienteBD= new ClienteBD();
        clienteBD.setConexion(conn);
        List<Cliente> lista = clienteBD.getClientes();
        conn.desconectar();
        request.setAttribute("clientes",lista);
        rd= request.getRequestDispatcher("/tabla_clientes.jsp");
        rd.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dni=request.getParameter("dni");
        String nombres=request.getParameter("nombres");
        String apellidos=request.getParameter("apellidos");
        String email=request.getParameter("email");
        String telefono=request.getParameter("telefono");
        
        BDConexion conn= new BDConexion();
        ClienteBD clienteBD  = new ClienteBD();
        clienteBD.setConexion(conn);
        clienteBD.insClientes(dni, nombres, apellidos, email, telefono);
        conn.desconectar();
        
        doGet(request, response);
    }

}

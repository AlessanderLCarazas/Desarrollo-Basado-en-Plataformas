package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.BDConexion;
import modelo.UsuarioBD;

public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario= request.getParameter("usuario");
        String clave= request.getParameter("clave");
        BDConexion conn = new BDConexion();
        UsuarioBD usuarioDB = new UsuarioBD();
        usuarioDB.setConexion(conn);
        
        boolean acceso= usuarioDB.validarUsuario(usuario, clave);
        System.out.println(acceso);
        System.out.println(usuario);
        System.out.println(clave);
        conn.desconectar();
        
        PrintWriter out = response.getWriter();
        
        HttpSession session = request.getSession();
        if(acceso){
            session.setAttribute("usuario", usuario);
            out.println("OK");
        } else{
            session.invalidate();
            out.println("Usuario y/o clave incorrectos");
        }
    }

}

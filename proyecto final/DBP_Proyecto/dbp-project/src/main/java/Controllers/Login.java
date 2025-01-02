/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Models.ConnectionDB;
import Models.UserDB;
import Models.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author fhuaquisto
 */
@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String tarjeta = req.getParameter("tarjeta");
        String cvv = req.getParameter("clave");
        ConnectionDB conn = new ConnectionDB();
        UserDB userDB = new UserDB();
        userDB.setConn(conn);
        User access = userDB.verifyUser(tarjeta, cvv);
        if (access != null) {
            session.setAttribute("id", access.getId());
            session.setAttribute("nombre", access.getNombre());
            resp.sendRedirect("/dbp-project/home");
        } else {
            session.invalidate();
            resp.sendError(401);
        }
    }
    
}

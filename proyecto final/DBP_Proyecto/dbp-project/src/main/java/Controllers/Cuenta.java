/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Models.Account;
import Models.AccountDB;
import Models.ConnectionDB;
import Models.Transaction;
import Models.TransactionDB;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fhuaquisto
 */
@WebServlet(name = "Cuentas", urlPatterns = {"/cuenta"})
public class Cuenta extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if (request.getSession().getAttribute("id") == null) {
            response.sendRedirect("http://localhost:8080/dbp-project/");
        }
        
        int id_cuenta = Integer.parseInt(request.getParameter("id"));
        ConnectionDB conn = new ConnectionDB();
        TransactionDB transactionDB = new TransactionDB();
        AccountDB accountDB = new AccountDB();
        accountDB.setConn(conn);
        Account account = accountDB.getAccount(id_cuenta);
        transactionDB.setConn(conn);
        List<Transaction> transacciones = transactionDB.getTransaction(id_cuenta);
        request.setAttribute("transacciones", transacciones);
        request.setAttribute("cuenta", account);
        request.getRequestDispatcher("/cuenta.jsp").forward(request, response);
    }
}

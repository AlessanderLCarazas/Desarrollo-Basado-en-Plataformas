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
import java.util.LinkedList;
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
@WebServlet(name = "home", urlPatterns = {"/home"})
public class Home extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ConnectionDB conn = new ConnectionDB();
        AccountDB accountDB = new AccountDB();
        TransactionDB transactionDB = new TransactionDB();
        accountDB.setConn(conn);
        transactionDB.setConn(conn);
        int id = (int)request.getSession().getAttribute("id");
        List<Account> cuentas = accountDB.getAccounts(id);
        List<Transaction> transactions = new LinkedList();
        for (Account idC: cuentas) {
            List<Transaction> aux = transactionDB.getTransaction(idC.getId());
            for (Transaction a: aux) {
                transactions.add(a);
            }
        }
        request.setAttribute("cuentas", cuentas);
        request.setAttribute("transacciones", transactions);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }
}

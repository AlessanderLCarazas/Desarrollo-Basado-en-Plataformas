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
import java.sql.Date;
import java.time.ZonedDateTime;
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
@WebServlet(name = "TransferenciasBanco", urlPatterns = {"/transferencias-banco"})
public class TransferenciasBanco extends HttpServlet {

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
        if (request.getSession().getAttribute("id") == null) {
            response.sendRedirect("http://localhost:8080/dbp-project/");
        }
        ConnectionDB conn = new ConnectionDB();
        AccountDB accountDB = new AccountDB();
        accountDB.setConn(conn);
        int id = (int)request.getSession().getAttribute("id");
        List<Account> cuentas = accountDB.getAccounts(id);
        request.setAttribute("cuentas", cuentas);
        request.getRequestDispatcher("/transferencias_banco.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String from = req.getParameter("from");
        String to = req.getParameter("to");
        String currency = req.getParameter("currency");
        String amount = req.getParameter("amount");
        ConnectionDB conn = new ConnectionDB();
        AccountDB accountDB = new AccountDB();
        TransactionDB transactionDB = new TransactionDB();
        int id_enviado = accountDB.getAccount(to);
        transactionDB.setConn(conn);
        Date fecha = new Date(System.currentTimeMillis());
        Transaction data = new Transaction(0, currency, id_enviado, Integer.parseInt(from), Double.parseDouble(amount), "Transaccion", fecha);
        transactionDB.setTransaction(data);
    }

}

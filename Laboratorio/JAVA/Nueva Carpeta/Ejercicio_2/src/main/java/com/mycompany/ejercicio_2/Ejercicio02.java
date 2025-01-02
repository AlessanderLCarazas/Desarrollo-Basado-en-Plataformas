package com.mycompany.ejercicio_2;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ejercicio02 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String primerNombre=request.getParameter("primerNombre");
        String segundoNombre=request.getParameter("segundoNombre");
        String primerApellido=request.getParameter("primerApellido");
        String segundoApellido=request.getParameter("segundoApellido");
        int n=Integer.parseInt(request.getParameter("n"));
        
        PrintWriter out = response.getWriter();
        
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Pagina POST Lab.09</title>");
        out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
        out.println("<link rel='stylesheet' href='css/estilo_ejer02.css'>");
        out.println("</head>");
        out.println("<section id='seccion'>");
        out.println("<h1>"+ primerNombre + " " + segundoNombre + " "+ primerApellido + " "+ segundoApellido + "</h1>");
        out.println("<br>");
        out.println("<table id='tablaNumeros' class='tabla'>");
        out.println("<thead>");
        out.println("<tr>");
        out.println("<th>N</th>");
        out.println("<th>N+1</th>");
        out.println("<th>N+2</th>");
        out.println("<th>N+3</th>");
        out.println("<th>N+4</th>");
        out.println("<th>N+5</th>");
        out.println("<th>N+6</th>");
        out.println("<th>N+7</th>");
        out.println("<th>N+8</th>");
        out.println("<th>N+9</th>");
        out.println("<th>N+10</th>");
        out.println("</tr>");
        out.println("</thead>");
        out.println("<tbody>");
        
        for(int i=1;i<=n;i++)
        {
            out.println("<tr>");
            for(int j=0;j<=10;j++)
            {
                out.println("<td>" + (j+i) + "</td>");
            }
            out.println("</tr>");
        }
        
        out.println("</tbody>");
        out.println("</table>");
        out.println("</section>");
        out.println("</body>");
        out.println("</html>");
    }

}

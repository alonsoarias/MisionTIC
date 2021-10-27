/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


    @WebServlet(name = "Lautor", urlPatterns = {"/Lautor"})
public class Lautor extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
         response.setContentType("text/html;charset=UTF-8");
        
        /*processRequest(request, response);*/
        
        
        try (PrintWriter out = response.getWriter()) {
    out.print("<tr id='primtabla'>");
    out.print("<th class='thvis'>" + "ID" + "</th>"); 
                  out.print("<th class='thvis'>" + "Autor" + "</th>");    
                  out.print("<th class='thvis'>" + "Perfil" + "</th>");    
                  out.print("<th class='thvis'>" + "Añadido el: " + "</th>");    
                    out.print("</tr>");
     
                try {
                //processRequest(request, response);
                String buscador2= request.getParameter("nombre");
                //out.print(buscador2);
                Op op = new Op();
                    ResultSet rs1=null;
                /*ResultSet rsz = opx.getDatos("SELECT * FROM autor WHERE autor_name LIKE'%"+buscador+"%'");*/
                 rs1= op.getDatos2("SELECT * FROM autor WHERE autor_name LIKE'%"+buscador2+"%'");
             /*out.print(buscador2);*/ 
               //out.print( rs1.first());
                while (rs1.next()) {
                   // out.print( rs1.getString("autor_name"));
                    out.print("<tr>");
                    out.print("<th class='tabofi2'>" + rs1.getString("sl_no") + "</th>");
                    out.print("<th class='tabofi2'>" + rs1.getString("autor_name") + "</th>");
                    out.print("<th class='tabofi2'>" + rs1.getString("perfil") + "</th>");
                    out.print("<th class='tabofi2'>" + rs1.getString("added_on") + "</th>");
                    out.print("</tr>");
 
                }
                rs1.close();
                } catch (SQLException ex) {
                out.println("<label class='error'> " + ex.getMessage()+  "</label>");
                }  
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {  
    /*response.setContentType("text/html;charset=UTF-8");*/
           
try (PrintWriter out = response.getWriter()) {
    /* out.print("<tr id='primtabla'>");
                    out.print("<th class='thvis'> </th>");
                    out.print("<th class='thvis'> </th>");      
                    out.print("</tr>");*/
     
                try {
                //processRequest(request, response);
                String buscador2= request.getParameter("n");
                Op op = new Op();
                /*ResultSet rsz = opx.getDatos("SELECT * FROM autor WHERE autor_name LIKE'%"+buscador+"%'");*/
                    ResultSet rs= op.getDatos2("SELECT * FROM autor WHERE autor_name LIKE'%"+buscador2+"%'");
             
               out.print( rs.getString("autor_name"));
                while (rs.next()) {
                    out.print( rs.getString("autor_name"));
                    out.print("<tr>");
                    out.print("<th class='tabofi2'>" + rs.getString("autor_name") + "</th>");
                    out.print("<th class='tabofi2'>" + rs.getString("perfil") + "</th>");
                    out.print("</tr>");
 
                }
                } catch (SQLException ex) {
                out.println("<label class='error'> " + ex.getMessage()+  "</label>");
                }  
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

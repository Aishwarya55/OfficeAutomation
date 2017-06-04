/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aishwarya Kannan
 */
public class formcontrol2 extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
     
 String reg=request.getParameter("regno");
           long regno;
            
         regno=Integer.parseInt(reg);
         String fathername=request.getParameter("fathername");
         String fatherocc=request.getParameter("fatheroccupation");
         String fatherincome=request.getParameter("fatherincome");
        // int fatherin=Integer.parseInt(fatherincome);
         String mothername=request.getParameter("mothername");
         String motherocc=request.getParameter("motheroccupation");
         String motherincome=request.getParameter("motherincome");
         //int motherin=Integer.parseInt(motherincome);
         String guardname=request.getParameter("guardname");
         String guardocc=request.getParameter("guardoccupation");
         String addresspar=request.getParameter("parentsdetails");
         String addressguard=request.getParameter("guardiandetails");
         String parphone=request.getParameter("parentstelephone");
        // long parph=Integer.parseInt(parphone);
         String guardphone=request.getParameter("guardiantelephone");
         // guardph=Integer.parseInt(guardphone);
         String parentsemail=request.getParameter("parentsemail");
         String guardemail=request.getParameter("guardianemail");
         
         SQL s=new SQL("root");
         s.insert_parentdetails(regno, fathername, fatherocc, fatherincome, mothername, motherocc, motherincome, guardname, guardocc,addresspar,parphone,parentsemail,addressguard,guardphone,guardemail);
         

request.setAttribute("subscribed",true);
RequestDispatcher rd=request.getRequestDispatcher("main.jsp");
rd.include(request, response);
         
         
         
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(formcontrol2.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(formcontrol2.class.getName()).log(Level.SEVERE, null, ex);
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

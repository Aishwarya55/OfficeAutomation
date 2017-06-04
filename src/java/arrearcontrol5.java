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
public class arrearcontrol5 extends HttpServlet {

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
            
            String month1 = request.getParameter("Month1");
            String code1 = request.getParameter("code1");
            String internal1=request.getParameter("internal1");
            String grade1 = request.getParameter("grade1");
            String remarks1 = request.getParameter("remarks1");
            String advisor1=request.getParameter("advisor1");
         
             SQL s=new SQL("root");
            if(!code1.equals("")){
              s.insert_arrear(regno, month1, code1, internal1, grade1, remarks1, advisor1); 
            }
            String month2=request.getParameter("Month2");
              String code2 = request.getParameter("code2");
            String internal2 = request.getParameter("internal2");
            String grade2 = request.getParameter("grade2");
            String remarks2 = request.getParameter("remarks2");
            String advisor2=request.getParameter("advisor2");
            
             if(!code2.equals("")){
               
            
             s.insert_arrear(regno, month2, code2, internal2, grade2, remarks2, advisor2);
            }
            String month3=request.getParameter("Month3");
             String code3 = request.getParameter("code3");
            String internal3 = request.getParameter("internal3");
            String grade3 = request.getParameter("grade3");
            String remarks3 = request.getParameter("remarks3");
            String advisor3=request.getParameter("advisor3");
            if(!code3.equals("")){
              s.insert_arrear(regno, month3, code3, internal3, grade3, remarks3,advisor3);  
            }
          String month4=request.getParameter("Month4");
            String code4 = request.getParameter("code4");
            String internal4 = request.getParameter("internal4");
            String grade4 = request.getParameter("grade4");
            String remarks4 = request.getParameter("remarks4");
            String advisor4=request.getParameter("advisor4");
            if(!code4.equals("")){
               s.insert_arrear(regno,month4, code4, internal4, grade4, remarks4,advisor4);
            }
            String month5=request.getParameter("Month5");
         String code5 = request.getParameter("code5");
            String internal5 = request.getParameter("internal5");
            String grade5 = request.getParameter("grade5");
            String remarks5 = request.getParameter("remarks5");
            String advisor5=request.getParameter("advisor5");
            if(!code5.equals("")){
               s.insert_arrear(regno,month5, code5, internal5, grade5, remarks5,advisor5);
            }
            String month6=request.getParameter("Month6");
            String code6 = request.getParameter("code6");
            String internal6 = request.getParameter("internal6");
            String grade6 = request.getParameter("grade6");
            String remarks6 = request.getParameter("remarks6");
            String advisor6=request.getParameter("advisor6");
            if(!code6.equals("")){
               s.insert_arrear(regno,month6, code6, internal6, grade6, remarks6,advisor6);
            }
            String month7=request.getParameter("Month7");
            String code7 = request.getParameter("code7");
            String internal7 = request.getParameter("internal7");
            String grade7 = request.getParameter("grade7");
            String remarks7 = request.getParameter("remarks7");
            String advisor7=request.getParameter("advisor7");
            if(!code7.equals("")){
               s.insert_arrear(regno,month7, code7, internal7, grade7, remarks7,advisor7);
            }
            String month8=request.getParameter("Month8");
            String code8 = request.getParameter("code8");
            String internal8 = request.getParameter("internal8");
            String grade8 = request.getParameter("grade8");
            String remarks8 = request.getParameter("remarks8");
            String advisor8=request.getParameter("advisor8");
            if(!code8.equals("")){
               s.insert_arrear(regno,month8, code8, internal8, grade8, remarks8,advisor8);
            }
            String month9=request.getParameter("Month8");
            String code9 = request.getParameter("code9");
            String internal9 = request.getParameter("internal9");
            String grade9 = request.getParameter("grade9");
            String remarks9 = request.getParameter("remarks9");
            String advisor9=request.getParameter("advisor9");
            if(!code9.equals("")){
               s.insert_arrear(regno,month9, code9, internal9, grade9, remarks9,advisor9);
            }
            String month10=request.getParameter("Month10");
              String code10 = request.getParameter("code10");
            String internal10 = request.getParameter("internal10");
            String grade10 = request.getParameter("grade10");
            String remarks10 = request.getParameter("remarks10");
            String advisor10=request.getParameter("advisor10");
            if(!code10.equals("")){
               s.insert_arrear(regno,month10, code10, internal10, grade10, remarks10,advisor10);
            }
        
request.setAttribute("subscribed",true);
RequestDispatcher rd=request.getRequestDispatcher("main.jsp");
rd.include(request, response);
s.closeconn();
   
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
            Logger.getLogger(arrearcontrol5.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(arrearcontrol5.class.getName()).log(Level.SEVERE, null, ex);
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

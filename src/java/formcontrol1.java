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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Aishwarya Kannan
 */
public class formcontrol1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param req
     * @param res
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException, SQLException {
        res.setContentType("text/html;charset=UTF-8");
      PrintWriter out = res.getWriter();
      
            String name=req.getParameter("name");
            String reg=req.getParameter("Regno");
           long regno;
            
                regno=Integer.parseInt(reg);
          
            String DOB = req.getParameter("DOB");
            String sex = req.getParameter("sex");
            String Bloodgroup = req.getParameter("Bloodgroup");
            String Community = req.getParameter("Community");
            String Gatecutoffmark = req.getParameter("Gatecutoffmark");
            float gate;
           
          
                gate=Float.parseFloat(Gatecutoffmark);
            String Admittedon = req.getParameter("Admittedon");
            String Specialcategory = req.getParameter("Specialcategory");
            String games_hobbies = req.getParameter("games_hobbies");
            String Scholarshipany = req.getParameter("Scholarshipany");
            String Volunteer = req.getParameter("Volunteer");
            String hosteller_dayscholar = req.getParameter("hosteller_dayscholar");
            String Block1 = req.getParameter("Block1");
            String room1 = req.getParameter("room1");
            String Block2 = req.getParameter("Block2");
            String room2 = req.getParameter("room2");
            String Block3 = req.getParameter("Block3");
            String room3 = req.getParameter("room3");
            String Block4 = req.getParameter("Block4");
            String room4 = req.getParameter("room4");
            int l=reg.length();
            req.setAttribute("name",name);
           SQL s=new SQL("root");
           if(gate<=0 || l<10){
           
req.setAttribute("subscribed",false);
RequestDispatcher rd=req.getRequestDispatcher("main.jsp");
rd.include(req, res);
           }
           else{
           s.insert_personaldetails(name,regno,DOB,sex,Bloodgroup,Community,gate,Admittedon,Specialcategory,games_hobbies,Scholarshipany,Volunteer,hosteller_dayscholar,Block1,room1,Block2,room2,Block3,room3,Block4,room4);


req.setAttribute("subscribed",true);
RequestDispatcher rd=req.getRequestDispatcher("main.jsp");
rd.include(req, res);
           }
           
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
            Logger.getLogger(formcontrol1.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(formcontrol1.class.getName()).log(Level.SEVERE, null, ex);
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

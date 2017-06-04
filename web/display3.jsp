<%-- 
    Document   : moviedetails.jsp
    Created on : 1 May, 2015, 8:44:27 AM
    Author     : Aishwarya Kannan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
 
</style>
<link rel="stylesheet" type="text/css" href="table.css">
    </head>
    <body>
        
        
        <TABLE class="dis" BORDER="1">
        <tr><th colspan="4" style="font-size: 40px;"><center>ACHIEVEMENTS</center></th></tr>   
          
         <% 
     ServletContext context8 = request.getSession().getServletContext();
        String s8 = (String)context8.getAttribute("regno");
        long reg1=Integer.parseInt(s8);
        Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Student_information", "root", "admin");

            Statement stmt = conn.createStatement();
             PreparedStatement ps;
             ResultSet rs;
               
                
                ps=conn.prepareStatement("SELECT * FROM achievements WHERE regno=?");
                ps.setLong(1, reg1);
                 rs=ps.executeQuery();
             if(rs.next()){
        %>

        
           <TR>
               <td id="h">FIRST YEAR</td>
               
               <TD> <%= rs.getString(2) %> </TD>
               
              <td id="h">SECOND YEAR</td>
               
               <TD> <%= rs.getString(3) %> </TD>
           </TR>
       
       <BR>
            <TR>
                   <td id="h">THIRD YEAR</td>
               
               <TD> <%= rs.getString(4) %> </TD>
                <td id="h">FOURTH YEAR</td>
               
               <TD> <%= rs.getString(5) %> </TD>
               
              
           </TR>
       
       <BR>
            
    
       
       
       
       
       <% 
           } 
    
       %>
      
        </TABLE><br>
   
    </body>
</html>

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
           
        <tr><th colspan="4" style="font-size: 40px;"><center>SEMESTER MARKS</center></th></tr>  
         <% 
     ServletContext context9 = request.getSession().getServletContext();
        String s9 = (String)context9.getAttribute("regno");
        long reg1=Integer.parseInt(s9);
        Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Student_information", "root", "admin");

            Statement stmt = conn.createStatement();
             PreparedStatement ps;
             ResultSet rs;
               
                
                ps=conn.prepareStatement("SELECT * from Sem WHERE regno=?");
                ps.setLong(1, reg1);
                 rs=ps.executeQuery();
             while(rs.next()){
        %>

        
           <TR>
               <td id="h">SUBJECT NAME/CODE</td>
               
               <TD> <%= rs.getString(2) %> </TD>
               
              <td id="h">INTERNALS</td>
               
               <TD> <%= rs.getString(3) %> </TD>
               
                   <td id="h">GRADE</td>
               
               <TD> <%= rs.getString(4) %> </TD>
                <td id="h">REMARKS</td>
               
               <TD> <%= rs.getString(5) %> </TD>
           </TR>
       
       <BR>
            
       
       <% 
           } 
    
       %>
      
        </TABLE><br>
   
    </body>
</html>

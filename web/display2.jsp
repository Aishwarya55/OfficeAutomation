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
            <tr><th colspan="4" style="font-size: 40px;"><center>PARENT DETAILS</center></th></tr>
         <% 
     ServletContext context7 = request.getSession().getServletContext();
        String s7 = (String)context7.getAttribute("regno");
        long reg1=Integer.parseInt(s7);
        Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Student_information", "root", "admin");

            Statement stmt = conn.createStatement();
             PreparedStatement ps;
             ResultSet rs;
               
                
                ps=conn.prepareStatement("SELECT * FROM Parents_details WHERE Regno=?");
                ps.setLong(1, reg1);
                 rs=ps.executeQuery();
             if(rs.next()){
        %>

        
           <TR>
               <td id="h">FATHER NAME</td>
               
               <TD> <%= rs.getString(2) %> </TD>
               
              <td id="h">FATHER OCCUPATION</td>
               
               <TD> <%= rs.getString(3) %> </TD>
           </TR>
       
       <BR>
            <TR>
                   <td id="h">FATHER INCOME</td>
               
               <TD> <%= rs.getString(4) %> </TD>
                <td id="h">MOTHER NAME</td>
               
               <TD> <%= rs.getString(5) %> </TD>
               
              
           </TR>
       
       <BR>
            <TR>
           
                    <td id="h">MOTHER OCCUPATION</td>
               
               <TD> <%= rs.getString(6) %> </TD>
                <td id="h">MOTHER INCOME</td>
               
               <TD> <%= rs.getString(7) %> </TD>
               
              
              
           </TR>
       
       <BR>
            <TR>
              
                    <td id="h">PARENT ADDRESS</td>
               
               <TD> <%= rs.getString(10) %> </TD>
                <td id="h">PARENT PHONE</td>
               
               <TD> <%= rs.getString(11) %> </TD>
               
              
              
           </TR>
       
       <BR>
        <TR>
              
                    <td id="h">PARENT EMAIL</td>
               
               <TD> <%= rs.getString(12) %> </TD>
                <td id="h">GUARDIAN NAME</td>
               
               <TD> <%= rs.getString(8) %> </TD>
               
              
              
           </TR>
       
       <BR>
       
        <TR>
              
                    <td id="h">GUARDIAN OCCUPATION</td>
               
               <TD> <%= rs.getString(9) %> </TD>
                <td id="h">GUARDIAN ADDRESS</td>
               
               <TD> <%= rs.getString(13) %> </TD>
               
              
              
           </TR>
       
       <BR>
       
       <TR>
              
                    <td id="h">GUARDIAN PHONE</td>
               
               <TD> <%= rs.getString(14) %> </TD>
                <td id="h">GUARDIAN EMAIL</td>
               
               <TD> <%= rs.getString(15) %> </TD>
               
              
              
           </TR>
       
       <BR>
       
       
       
       
       
       
       
       
       
       <% 
           } 
    
       %>
      
        </TABLE><br>
   
    </body>
</html>

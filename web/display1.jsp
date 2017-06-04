<%-- 
    Document   : display1
    Created on : 6 Aug, 2015, 2:33:12 PM
    Author     : Aishwarya Kannan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="table.css">
    </head>
    <body>
    
            <% 
     ServletContext context6 = request.getSession().getServletContext();
        String s6 = (String)context6.getAttribute("regno");
        long reg1=Integer.parseInt(s6);
        Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Student_information", "root", "admin");

            Statement stmt = conn.createStatement();
             PreparedStatement ps;
             ResultSet rs;
               %>
        <br>
        
        <TABLE class="dis" BORDER="1" width="40%">
            <tr><th colspan="4" style="font-size: 30px;"><center>DETAILS</center></th></tr>
                
              <%  ps=conn.prepareStatement("SELECT * FROM Personal_details WHERE Regno=?");
                ps.setLong(1, reg1);
                 rs=ps.executeQuery();
             if(rs.next()){
        %>
           <TR>
               <td id="h">Name</td>
               
               <TD> <%= rs.getString(1) %> </TD>
               
              <td id="h">Regno</td>
               
               <TD> <%= rs.getLong(2) %> </TD>
           </TR>
       
       <BR>
            <TR>
                   <td id="h">DOB</td>
               
               <TD> <%= rs.getString(3) %> </TD>
                <td id="h">Sex</td>
               
               <TD> <%= rs.getString(4) %> </TD>
               
              
           </TR>
       
       <BR>
            <TR>
           
                    <td id="h">BLOOD GROUP</td>
               
               <TD> <%= rs.getString(5) %> </TD>
                <td id="h">COMMUNITY</td>
               
               <TD> <%= rs.getString(6) %> </TD>
               
              
              
           </TR>
       
       <BR>
            <TR>
              
                    <td id="h">GATE CUT-OFF</td>
               
               <TD> <%= rs.getString(7) %> </TD>
                <td id="h">ADMITTED ON</td>
               
               <TD> <%= rs.getString(8) %> </TD>
            
           </TR>
       
       <BR>
        <TR>
              
                    <td id="h">Special Category</td>
               
               <TD> <%= rs.getString(9) %> </TD>
                <td id="h">Games/Hobbies</td>
               
               <TD> <%= rs.getString(10) %> </TD>
               
              
              
           </TR>
       
       <BR>
       
        <TR>
              
                    <td id="h">Volunteer</td>
               
               <TD> <%= rs.getString(11) %> </TD>
                <td id="h">Hostel/Dayscholar</td>
               
               <TD> <%= rs.getString(12) %> </TD>
               
              
              
           </TR>
       
       <BR>
       
       <% 
           } 
    
       %>
      
        </TABLE><br>
        
        <br>
    </body>
</html>

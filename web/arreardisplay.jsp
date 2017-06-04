<%-- 
    Document   : arreardisplay
    Created on : 6 Aug, 2015, 10:53:31 AM
    Author     : Aishwarya Kannan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
       
        <TABLE class="dis" BORDER="1">
           <tr><th colspan="4" style="font-size: 40px;"><center>ARREAR DETAILS</center></th></tr>
          
         <% 
     ServletContext context10 = request.getSession().getServletContext();
        String s10 = (String)context10.getAttribute("regno");
        long reg1=Integer.parseInt(s10);
        Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Student_information", "root", "admin");

            Statement stmt = conn.createStatement();
             PreparedStatement ps;
             ResultSet rs;
               
                
                ps=conn.prepareStatement("SELECT * from arrear WHERE regno=?");
                ps.setLong(1, reg1);
                 rs=ps.executeQuery();
             while(rs.next()){
        %>

        
           <TR>
               <td id="h">SUBJECT CODE</td>
               
               <TD> <%= rs.getString(3) %> </TD>
               
              <td id="h">INTERNALS</td>
               
               <TD> <%= rs.getString(4) %> </TD>
               
                   <td id="h">GRADE</td>
               
               <TD> <%= rs.getString(5) %> </TD>
                <td id="h">REMARKS</td>
               
               <TD> <%= rs.getString(6) %> </TD>
           </TR>
       
       <BR>
            
       
       <% 
           } 
    
       %>
      
        </TABLE><br>
    </body>
</html>

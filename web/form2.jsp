<%-- 
    Document   : j
    Created on : Jul 21, 2015, 10:52:07 AM
    Author     : multicore
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .btn {
  background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  font-family: Arial;
  color: #ffffff;
  font-size: 16px;
  padding: 9px 19px 10px 20px;
  text-decoration: none;
}

.btn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}
.formtable {
    border: 1px solid black;
    height:65%;
     border-collapse: collapse;
    

}

.formtable td{
        border: 1px solid black;
}
input[type=text]{
     border: 1px solid lightslategray; 
    position:relative;
     left:3px;
     font-size: 20px;
   background: rgba(255,255,255,0.5);
}
        </style>
    </head>
    <body>
         <% 
        ServletContext context2 = request.getSession().getServletContext();
        String s2 = (String)context2.getAttribute("regno");
        %>
    <center><h1>Parents details</h1></center>
    <form action="formcontrol2" method="post">
        <input type="text" name="regno" value="<%=s2%>" hidden>
        <table class="formtable"  border=1>
<tr >
    
<td> PARENTS DETAILS </td>
<td> NAME</td>
<td> OCCUPATION </td>
<td> ANNUAL INCOME</td>
</tr>
<tr >
<td> Father </td>
<td><input type="text" name="fathername" value="" required/></td>
<td><input type="text" name="fatheroccupation" value="" required/></td>
<td><input type="text" name="fatherincome" value="" required/></td>
</tr>
<tr>
    <td>Mother</td>
    <td>
        <input type="text" name="mothername" value="" required> </td>
    <td><input type="text" name="motheroccupation" value="" required> </td>
    <td><input type="text" name="motherincome" value="" required> </td>
</tr>
<tr>
    <td>Guardian</td>
    <td>
        <input type="text" name="guardname" value=""> </td>
    <td><input type="text" name="guardoccupation" value=""> </td>
   
</tr>
<tr> <td> Address of the parent </td>
    <td> Address of the Local Guardian</td>
</tr>
<tr >
    <td> <input type="text" name="parentsdetails" value="" required> </td>
    <td>  <input type="text" name="guardiandetails" value=""> </td>
    
</tr>
<tr>
    <td> Telephone </td>
    <td> Telephone </td>
</tr>
<tr>
    <td><input type="text" name="parentstelephone" value="" required/></td>
    <td><input type="text" name="guardiantelephone" value="" /></td>
    
</tr>
<tr> <td> EMail </td>
    <td> Email</td>
</tr>
<tr>
    <td>
        <input type="text" name="parentsemail" value="" /></td>
    <td>
    <input type="text" name="guardianemail" value="" />  
    </td>
</tr>
<tr>
                        <td><input class="btn" type="submit" value="Submit" /></td>
                        <td><input class="btn" type="reset" value="Reset" /></td>
                    </tr>
</table>
    </form>
    </body>
</html>

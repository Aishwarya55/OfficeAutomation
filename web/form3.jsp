<%-- 
    Document   : form3
    Created on : Jul 21, 2015, 11:05:48 AM
    Author     : multicore
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Achievements</title>
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
            ServletContext context3 = request.getSession().getServletContext();
        String s3 = (String)context3.getAttribute("regno");%>
       
       
        <h1>ACHIEVEMENTS</h1>
        <form action="formcontrol3" method="post">
             <input type="hidden" name="regno" value="<%=s3%>"> 
         <table class="formtable" border=1 width="70%">
<tr >
    <td>Achievements: Activities such as Co-curricular, Extra curricular, 
        Medals, Membership in Societies TOEFEL/GRE/Gate </td>
</tr>
<tr><td> I Year </td> <td><input type="text" name="achievements_first" value="" /></td> </tr>
<tr><td> II Year </td><td><input type="text" name="achievements_second" value="" /></td></tr>
<tr> <td> III Year </td><td><input type="text" name="achievements_third" value="" /></td></tr>
<tr><td> IV Year </td><td><input type="text" name="achievements_fourth" value="" /></td></tr>
<tr>
                        <td><input class="btn" type="submit" value="Submit" /></td>
                        <td><input class="btn" type="reset" value="Reset" /></td>
                    </tr>
</table> 
        </form>
    </body>
</html>

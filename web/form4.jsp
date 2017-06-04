<%-- 
    Document   : form 4
    Created on : Jul 21, 2015, 11:10:30 AM
    Author     : multicore
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Academic Details</title>
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
            ServletContext context4 = request.getSession().getServletContext();
        String s4 = (String)context4.getAttribute("regno");%>
        <h1>Semester 1</h1> 
        <br>
            <form action="formcontrol4" method="post">
                <input type="hidden" name="regno" value="<%=s4%>"> 
                
                         <table class="formtable"  border=1 width="80%">
<tr >
    <td>S.No </td>
<td> Code/ Subject with credit</td>
<td> Internal Mark</td>
<td> Grade/Mark</td>
<td> Remarks</td>

</tr>
<tr >
<td> 1 </td>
<td><input type="text" name="code1" value="" /></td>
<td><input type="text" name="internal1" value="" /></td>
<td><input type="text" name="grade1" value="" /></td>
<td><input type="text" name="remarks1" value="" /></td>

</tr>
<tr >
<td> 2 </td>
<td><input type="text" name="code2" value="" /></td>
<td><input type="text" name="internal2" value="" /></td>
<td><input type="text" name="grade2" value="" /></td>
<td><input type="text" name="remarks2" value="" /></td>

</tr>
<tr >
<td> 3 </td>
<td><input type="text" name="code3" value="" /></td>
<td><input type="text" name="internal3" value="" /></td>
<td><input type="text" name="grade3" value="" /></td>
<td><input type="text" name="remarks3" value="" /></td>

</tr>
<tr >
<td> 4 </td>
<td><input type="text" name="code4" value="" /></td>
<td><input type="text" name="internal4" value="" /></td>
<td><input type="text" name="grade4" value="" /></td>
<td><input type="text" name="remarks4" value="" /></td>

</tr>
<tr >
<td> 5 </td>
<td><input type="text" name="code5" value="" /></td>
<td><input type="text" name="internal5" value="" /></td>
<td><input type="text" name="grade5" value="" /></td>
<td><input type="text" name="remarks5" value="" /></td>

</tr>
<tr >
<td> 6 </td>
<td><input type="text" name="code6" value="" /></td>
<td><input type="text" name="internal6" value="" /></td>
<td><input type="text" name="grade6" value="" /></td>
<td><input type="text" name="remarks6" value="" /></td>

</tr><tr >
<td> 7 </td>
<td><input type="text" name="code7" value="" /></td>
<td><input type="text" name="internal7" value="" /></td>
<td><input type="text" name="grade7" value="" /></td>
<td><input type="text" name="remarks7" value="" /></td>
</tr>
<tr >
<td> 8 </td>
<td><input type="text" name="code8" value="" /></td>
<td><input type="text" name="internal8" value="" /></td>
<td><input type="text" name="grade8" value="" /></td>
<td><input type="text" name="remarks8" value="" /></td>

</tr><tr >
<td> 9 </td>
<td><input type="text" name="code9" value="" /></td>
<td><input type="text" name="internal9" value="" /></td>
<td><input type="text" name="grade9" value="" /></td>
<td><input type="text" name="remarks9" value="" /></td>

</tr>
<tr >
<td> 10 </td>
<td><input type="text" name="code10" value="" /></td>
<td><input type="text" name="internal10" value="" /></td>
<td><input type="text" name="grade10" value="" /></td>
<td><input type="text" name="remarks10" value="" /></td>

</tr>
<tr >
<td> 11 </td>
<td><input type="text" name="code11" value="" /></td>
<td><input type="text" name="internal11" value="" /></td>
<td><input type="text" name="grade11" value="" /></td>
<td><input type="text" name="remarks11" value="" /></td>

</tr>
<tr >
<td> 12 </td>
<td><input type="text" name="code12" value="" /></td>
<td><input type="text" name="internal12" value="" /></td>
<td><input type="text" name="grade12" value="" /></td>
<td><input type="text" name="remarks12" value="" /></td>

</tr>
<tr> <td> Total credits registered: </td>
    <td> <input type="number" name="totalcredits" value=""/> </td> </tr>
<tr> <td> Total credits Earned: </td>
    <td> <input type="number" name="totalcredits" value=""/> </td></tr>
<tr>     <td> GPA: </td>
    <td><input type="number" name="gpa" value=""/> </td></tr>
<tr> <td> CGPA: </td>
    <td><input type ="number" name="cgpa" value=""/> </td></tr>
<tr>  <td> Name of CA/FA:</td>
    <td> <input type="text" name="FAname" value="" /></td></tr>
<tr>  <td> Name of CCC:</td>
    <td> <input type="text" name="CCname" value="" /></td></tr>
 <tr>
                        <td><input class="btn" type="submit" value="Submit" /></td>
                        <td><input class="btn" type="reset" value="Reset" /></td>
                    </tr>    
                         </table>   </form>     
    </body>
</html>

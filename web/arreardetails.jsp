<%-- 
    Document   : ArrearDetails
    Created on : Jul 21, 2015, 11:29:42 AM
    Author     : multicore
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details of arrears & Re-Do</title>
        <style>
            .formtable {
    border: 1px solid black;
    height:65%;
     border-collapse: collapse;
    width:80%

}
.formtable td{
        border: 1px solid black;
}
input[type=text]{
     border: 1px solid lightslategray; 
    position:relative;
    
     font-size: 20px;
   background: rgba(255,255,255,0.5);
}
        </style>   
    </head>
    <body>
         <%
            ServletContext context6 = request.getSession().getServletContext();
        String s6 = (String)context6.getAttribute("regno");%>
        <h1>Details of arrears & Re-Do</h1>
        <form action="arrearcontrol5" method="post">
                <input type="hidden" name="regno" value="<%=s6%>"> 
        <table class="formtable"  border=1>
<tr>
    <td>S.No</td>
<td> Month</td>
<td> Code</td>
<td> Internal</td>
<td> Grade</td>
<td> Remarks </td>
<td> Name of the Advisor</td>
</tr>
<tr>
<td> 1 </td>
<td><input type="text" name="Month1" value="" /></td>
<td><input type="text" name="code1" value="" /></td>
<td><input type="text" name="internal1" value="" /></td>
<td><input type="text" name="grade1" value="" /></td>
<td><input type="text" name="remarks1" value="" /></td>
<td> <input type="text" name="advisor1" value="" /> </td>
</tr>
<tr>
<td> 2 </td>
<td><input type="text" name="Month2" value="" /></td>
<td><input type="text" name="code2" value="" /></td>
<td><input type="text" name="internal2" value="" /></td>
<td><input type="text" name="grade2" value="" /></td>
<td><input type="text" name="remarks2" value="" /></td>
<td> <input type="text" name="advisor2" value="" /> </td>
</tr>
<tr >
<td> 3 </td>
<td><input type="text" name="Month3" value="" /> </td>
<td><input type="text" name="code3" value="" /> </td>
<td><input type="text" name="internal3" value="" /> </td>
<td><input type="text" name="grade3" value="" /> </td>
<td><input type="text" name="remarks3" value="" /> </td>
<td> <input type="text" name="advisor3" value="" /> </td>
</tr>
<tr >
<td> 4 </td>
<td><input type="text" name="Month4" value="" /></td>
<td><input type="text" name="code4" value="" /></td>
<td><input type="text" name="internal4" value="" /></td>
<td><input type="text" name="grade4" value="" /></td>
<td><input type="text" name="remarks4" value="" /></td>
<td> <input type="text" name="advisor" value="" /> </td>
</tr>
<tr >
<td> 5 </td>
<td><input type="text" name="Month5" value="" /></td>
<td><input type="text" name="code5" value="" /></td>
<td><input type="text" name="internal5" value="" /></td>
<td><input type="text" name="grade5" value="" /></td>
<td><input type="text" name="remarks5" value="" /></td>
<td> <input type="text" name="advisor" value="" /> </td>
</tr>
<tr >
<td> 6 </td>
<td><input type="text" name="Month6" value="" /></td>
<td><input type="text" name="code6" value="" /></td>
<td><input type="text" name="internal6" value="" /></td>
<td><input type="text" name="grade6" value="" /></td>
<td><input type="text" name="remarks6" value="" /></td>
<td> <input type="text" name="advisor" value="" /> </td>
</tr>
<tr>
<td> 7 </td>
<td><input type="text" name="Month7" value="" /></td>
<td><input type="text" name="code7" value="" /></td>
<td><input type="text" name="internal7" value="" /></td>
<td><input type="text" name="grade7" value="" /></td>
<td><input type="text" name="remarks7" value="" /></td>
<td> <input type="text" name="advisor7" value="" /> </td>
</tr>
<tr >
<td> 8 </td>
<td><input type="text" name="Month8" value="" /></td>
<td><input type="text" name="code8" value="" /></td>
<td><input type="text" name="internal8" value="" /></td>
<td><input type="text" name="grade8" value="" /></td>
<td><input type="text" name="remarks8" value="" /></td>
<td> <input type="text" name="advisor8" value="" /> </td>
</tr>
<tr >
<td> 9 </td>
<td><input type="text" name="Month9" value="" /></td>
<td><input type="text" name="code9" value="" /></td>
<td><input type="text" name="internal9" value="" /></td>
<td><input type="text" name="grade9" value="" /></td>
<td><input type="text" name="remarks9" value="" /></td>
<td> <input type="text" name="advisor9" value="" /> </td>
</tr>
<tr >
<td> 10 </td>
<td><input type="text" name="Month10" value="" /></td>
<td><input type="text" name="code10" value="" /></td>
<td><input type="text" name="internal10" value="" /></td>
<td><input type="text" name="grade10" value="" /></td>
<td><input type="text" name="remarks10" value="" /></td>
<td> <input type="text" name="advisor10" value="" /> </td>
</tr>
       
<tr>
    <td> Any other Special Achievements: </td>
    <td> <input type="text" name="otherachievements" value="" /> </td>
</tr>
<tr> 
    <td> Punishment Awarded/warning if any:</td>
    <td> <input type ="text" name="punishment" value="" /> </td>
</tr>
<tr>
    <td> Title of the Project</td>
    <td> <input type ="text" name="projecttitle" value="" /> </td></tr>
<tr>
    <td> Name of the guide</td>
    <td> <input type ="text" name="guidename" value="" /> </td></tr>
<tr> <td> Name of the Company Placed</td>
    <td> <input type ="text" name="companyname" value="" /> </td> </tr>
<tr> <td> Address for further correspondence</td>
    <td> <input type ="text" name="aadress" value="" /> </td> </tr>
<tr> <td> At the time of leaving </td>
    <td> <input type ="date" name="leavingtime" value="" /> </td> </tr>
<tr>   <td> E-mail </td>
    <td> <input type ="text" name="email" value="" /> </td> </tr>
<tr> <td> Phone(Permanent) </td>
    <td> <input type ="number" name="phone" value="" /> </td> <tr>
    
    
</tr>
<tr> <td> Class Obtained </td>
    <td>  <input type ="number" name="class" value="" /> </td>
</tr>
<tr>
    <td> Rank: </td>
    <td> <input type ="number" name="class" value="" /> </td>
</tr>
    <tr>
        <td> Class Strength </td> 
        <td> <input type ="number" name="classstrength" value="" /> </td>
    </tr>
    <tr>
        <td> Serial No of T.C obtained :</td>
         <td> <input type ="number" name="tc" value="" /> </td>
         
    </tr>
    <tr>
        <td> Serial No.Of Provisional: </td>
        <td> <input type ="number" name="Provisional" value="" /> </td>
    </tr>
    <tr>
        <td> Signature of the Student</td>
        <td> <input type ="text" name="sign" value="" /> </td>
    </tr>
    
 </table>
          <input type="submit" value="submit" />
        </form>
    </body>
</html>

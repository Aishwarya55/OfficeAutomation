<%-- 
    Document   : index
    Created on : Jul 16, 2015, 5:15:02 PM
    Author     : multicore
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
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
.formtable2 {
    border: 1px solid black;
    height:10%;
     border-collapse: collapse;
    
}
.formtable2 td{
        border: 1px solid black;
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
        ServletContext context = request.getSession().getServletContext();
        String s = (String)context.getAttribute("regno");
        %>
       
        <form method="post" action="formcontrol1">
            <center>
            <table class="formtable" border="1" style="width:100%;" cellpadding="5">
              
                <tbody>
                    <tr>
                        <td width=" 30%"> Name</td>
                        <td  width=" 70%"><input class="form" type="text" name="name" value="" required/></td>
                    </tr>
                    <tr>
                        <td> Register No</td>
                        <td><input class="form" type="text" name="Regno" value="<%=s%>" required readonly/></td>
                    </tr>
                    <tr>
                        <td>Date of Birth</td>
                        <td><input class="form" type="date" name="DOB" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Sex</td>
                        <td><input type="radio" name="sex" value="Male"> Male
                        <input type="radio" name="sex" value="Female"> Female</td>
                    </tr>
                    <tr>
                        <td>Blood Group</td>
                        <td><input type="text" name="Bloodgroup" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Community</td>
                       
                        <td><input type="radio" name="Community" value="OC"> OC
                        <input type="radio" name="Community" value="BC"> BC
                        <input type="radio" name="Community" value="MBC">MBC
                        <input type="radio" name="Community" value="SC"> SC
                        <input type="radio" name="Community" value="ST"> ST </td>
                    </tr>
                    <tr>
                        <td>Gate/CutOff Mark</td>
                        <td><input type="number" name="Gatecutoffmark" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Admitted On</td>
                        <td><input type="date" name="Admittedon" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Special Category</td>
                        
             <td><INPUT TYPE="radio" NAME="Specialcategory" VALUE="Ph">
           Ph
            
            <INPUT TYPE="radio" NAME="Specialcategory" VALUE="Sports">
            Sports
            
            <INPUT TYPE="radio" NAME="Specialcategory" VALUE="Ex-serviceman">
             Ex-serviceman
          
            
            <INPUT TYPE="radio" NAME="Specialcategory" VALUE="NRI">
            NRI
           
           <INPUT TYPE="radio" NAME="Specialcategory" VALUE="Other States">
            Other States
         
            <INPUT TYPE="radio" NAME="Specialcategory" VALUE="Any Other">
            Any Other</td>
            <BR>
                    </tr>
                    
                     <tr>
                        <td>Games/ Hobbies</td>
                        <td><input type="text" name="games_hobbies" value="" /></td>
                    </tr>
                     <tr>
                        <td>Scholarship Received if any</td>
                        <td><input type="text" name="Scholarshipany" value="" /></td>
                    </tr>
                     <tr>
                        <td>Volunteer in NSS/NSO/YRC</td>
                        <td><input type="text" name="Volunteer" value="" /></td>
                    </tr>
                     <tr>
                        <td>Hosteller/ Dayscholar</td>
                        <td><input type="text" name="hosteller_dayscholar" value="" /></td>
                    </tr>
            </table>
                    <table class="formtable2" style="width:100%;" border=1>
<tr >
    <td> </td>
<td> I Year </td>
<td> II Year </td>
<td> III Year </td>
<td> IV Year </td>


</tr>
<tr >
<td> Block & Room No. (If applicable) </td>
<td><input type="text" name="block1" value="" />
<input type="text" name="room1" value="" /></td>
<td><input type="text" name="block2" value="" />
<input type="text" name="room2" value="" /></td>
<td><input type="text" name="block3" value="" />
<input type="text" name="room3" value="" /></td>
<td><input type="text" name="block4" value="" />
<input type="text" name="room4" value="" /></td>
</tr>
</table> 
                                
                             <table>

                    <tr>
                        <td><input class="btn" type="submit" value="Submit to proceed" /></td>
                        <td><input class="btn" type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
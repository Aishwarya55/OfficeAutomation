<%-- 
    Document   : studlogin
    Created on : Jul 16, 2015, 4:57:57 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <style>
        #div1{
    border-radius: 25px;
    border: 2px solid #8AC007;
    padding: 20px; 
    width: 200px;
    
    position: absolute;
    top:30%;
    left:37%;
        }
        body{
               
  background: url(images/aqua.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body<br><br>
    <center><h2>FACULTY LOGIN</h2></center>
        <div id="div1" style="height:15%; width:22%;">
            <form method = "post" action="faclogin">
            USERNAME : <input type="text" name="username" required><br><br>
            PASSWORD : <input type="password" name="password" required><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="submit" value="submit">
            </form>
        </div>
    </body>
</html>


<!DOCTYPE html>

<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
        HTML Document Structure
    </title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <style>
         body{
               
  background: url(images/aqua.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
            }
            #wrapper{
                position:relative;
                top:20%
            }
    </style>
</head>
<body>

<div id="wrapper">

	<form name="login-form" class="login-form" action="studlogin1" method="post">
	
		<div class="header">
                    <center><h1> Login </h1>
                        <span>Enter your Roll no. and password.</span></center>
		</div>
	
		<div class="content">
		<input name="username" type="text" class="input username" placeholder="Username" required />
		<div class="user-icon"></div>
		<input name="password" type="password" class="input password" placeholder="Password" required />
		<div class="pass-icon"></div>		
		</div>

		<div class="footer">
		<input type="submit" name="submit" value="Login" class="button" />
		
		</div>
	
	</form>

</div>
<div class="gradient"></div>


</body>
</html>

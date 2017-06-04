
<html>
	<head>
		<meta charset="utf-8">		
		<title>Sky Tabs</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
		
                <style>
                   body{
               
  background: url(images/aqua.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
            }
           
  </style>
        
		<link rel="stylesheet" href="css/sky-tabs.css">
		
		<!--[if lt IE 9]>
			<link rel="stylesheet" href="css/sky-tabs-ie8.css">
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
			<script src="js/sky-tabs-ie8.js"></script>
		<![endif]-->
                <script>
      function msg(){
      if(${subscribed == 'true'}){
  alert("Form Updated Successfully");
}
if(${subscribed == 'false'}){
    alert("Invalid data");
}
else{}
}
  </script>

    
	</head>
	
	<body class="bg-cyan" onload="msg()">
            <a href="logout"><img src="images/logout.png" style="height:7%;width:10%; position:relative;left:83%; "></a>
            <div style="position:relative; top:5%; width:85%; left:10%; height:90%">
		
			<!-- tabs -->
			<div class="sky-tabs sky-tabs-amount-5 sky-tabs-pos-top-justify sky-tabs-anim-flip sky-tabs-response-to-icons">
				<input type="radio" name="sky-tabs" checked id="sky-tab1" class="sky-tab-content-1">
				<label for="sky-tab1"><span><span>Personal Details</span></span></label>
				
				<input type="radio" name="sky-tabs" id="sky-tab2" class="sky-tab-content-2">
				<label for="sky-tab2"><span><span>Parent Details</span></span></label>
				
				<input type="radio" name="sky-tabs" id="sky-tab3" class="sky-tab-content-3">
				<label for="sky-tab3"><span><span>Achievements</span></span></label>
				
				<input type="radio" name="sky-tabs" id="sky-tab4" class="sky-tab-content-4">
				<label for="sky-tab4"><span><span>Semester Marks</span></span></label>
				<input type="radio" name="sky-tabs" id="sky-tab5" class="sky-tab-content-5">
				<label for="sky-tab5"><span><span>Arrear Details</span></span></label>
				<ul>
					<li class="sky-tab-content-1">					
	<%
       ServletContext context5 = request.getSession().getServletContext();
        String s5 = (String)context5.getAttribute("regno");
        long reg=Integer.parseInt(s5);
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Student_information", "root", "admin");

            Statement statement = connection.createStatement();
             PreparedStatement pst;
             ResultSet resultset;
               
                
                pst=connection.prepareStatement("SELECT * FROM Personal_details WHERE Regno=?");
                pst.setLong(1, reg);
                 resultset=pst.executeQuery();
             if(resultset.next()){
  %>
  <div class="typography">
      <%@include file="display1.jsp" %>
    </div>
    <%
             }
             else
             {
     
     %>
     <div id="tabs-1">
      <%@include file="form1.jsp"%>
     </div>
     
     <%
             } 
     %>
    
  
					</li>
					
					<li class="sky-tab-content-2">
						<%
       
                
                pst=connection.prepareStatement("SELECT * FROM Parents_details WHERE Regno=?");
                pst.setLong(1, reg);
                 resultset=pst.executeQuery();
             if(resultset.next()){
  %>
  <div class="typography">
      <%@include file="display2.jsp" %>
    </div>   
      <% }else{

%>
<div class="typography">
      <%@include file="form2.jsp" %>
    </div>
      <%}%>

					</li>
					
					<li class="sky-tab-content-3">
						<%
                      
                pst=connection.prepareStatement("SELECT * FROM achievements WHERE regno=?");
                pst.setLong(1, reg);
                 resultset=pst.executeQuery();
             if(resultset.next()){
  %>
  
  <div class="typography">
      <%@include file="display3.jsp" %>
  </div>
  <%}else{
%>
<div class="typography">
      <%@include file="form3.jsp" %>
  </div>
  <%}%>
  
					</li>
					
					<li class="sky-tab-content-4">
						<%
                      
                pst=connection.prepareStatement("SELECT * FROM Sem WHERE regno=?");
                pst.setLong(1, reg);
                 resultset=pst.executeQuery();
             if(resultset.next()){
  %>
  <div class="typography">
        <%@include file="display4.jsp" %>
  </div>
        <%}else{%>
<div class="typography">
        <%@include file="form4.jsp" %>
  </div>
        <%}%>
     
					</li>		
                                           <li class="sky-tab-content-5">
  <%
                pst=connection.prepareStatement("SELECT * FROM arrear WHERE regno=?");
                pst.setLong(1, reg);
                 resultset=pst.executeQuery();
             if(resultset.next()){
             %>
  <div id="tabs-5">
        <%@include file="arreardisplay.jsp" %>
  </div>
  <%}else{%>
  <div id="tabs-5">
        <%@include file="arreardetails.jsp" %>
  </div>
        <%}%>                   </li>
				</ul>
			</div>
			<!--/ tabs -->
			
		</div>
	</body>
</html>
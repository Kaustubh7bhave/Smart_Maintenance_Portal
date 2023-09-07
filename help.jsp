<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@page import="java.sql.ResultSet"%>
<%@ page import="datebase.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Maintenance Portal | help </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
<style> centre{
margin: 10px 0;
padding-left: 100px;
color: #f1f0f0;
line-height: 2.1;
}
a{
color: #fffdfd;
		}

</style>
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
</head>
<body class="signup-body">
		<div class="agile-signup">	
			
		
				
				  
		
	   
					    
							
						 <hr>
						  <% 
    Connection con = smart_database.connect();
	PreparedStatement s = con.prepareStatement("Select * from helpline ");
	ResultSet rs= s.executeQuery();
	while(rs.next())
	{
    %>
				<centre>	 
						<%=rs.getString(1) %>
						<a href="tel:<%=rs.getString(3) %>"><%=rs.getString(2) %></a><br>
					</a><hr> 
						 <% }%>
						</centre>  		
					</div>
	   </div>
					
	
					
		
					
				</div>
				</div>
				</div>
</body>
</html>
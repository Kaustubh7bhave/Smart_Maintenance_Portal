<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@page import="java.sql.ResultSet"%>
<%@ page import="datebase.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Maintenance Portal | Login </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
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
			
			<div class="content2">
				<div class="grids-heading gallery-heading signup-heading">
					<h2>Login</h2>
				</div>
				<form action="login.jsp" method="post">
					<input type="text" name="Username" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';} "required>
					
					<input type="password" name="Password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"required>
					 <input type="text" name="role" value="role" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'role';}"required>
					<input type="text" name="department" value="role" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'department';}">
					<input type="submit" class="register" value="Login">
				</form>
				
				<% 
				
				 
					try {
						Connection con = smart_database.connect();
						Statement s = con.createStatement();
						String Username = request.getParameter("Username");
						String Password = request.getParameter("Password");
						String role = request.getParameter("role");
						String department = request.getParameter("department");
						ResultSet rs = s.executeQuery("SELECT * FROM registes WHERE username = '"+Username+"'  AND passwords = '"+Password+"' AND roles = '"+role+"'");
						String a=role;
						System.out.println("helloo");
						while(rs.next()) 
						{ 
							if(a.equals("users")) {
								GetSet.setUsername(rs.getString("username"));
								System.out.println("users");
								response.sendRedirect("uses.html");
							}
							else if(a.equals("admin")) {
								response.sendRedirect("admin.html");
							}
							else if(a.equals("department")) {
								 
								GetSet.setDepartment(rs.getString("department"));
								response.sendRedirect("department.html");
								}
						} 
					}
					catch (Exception e) {
						System.out.println("Error :" + e);
					}

//				 Class.forName("com.mysql.jdbc.Driver");
		//		 Connection	www=DriverManager.getConnection("jdbc:mysql://localhost:3306/smart_maintenance","root","");
				/*	Connection con = smart_database.connect();			
		Statement s =www.createStatement();
					String Username =request.getParameter("Username");
					String role = request.getParameter("role");
					String Password =request.getParameter("Password");
					ResultSet rs = s.executeQuery("SELECT * FROM registes WHERE username = '"+Username+"' AND roles = '"+role+"' AND passwords = '"+Password+"'");
					
					while(rs.next())
					{ 
						if(role=="uses")	
						{
								response.sendRedirect("uses.html");
						}
						else if(role=="adimin")
						{
							response.sendRedirect("adimin.html");
						}
						else if(role=="department")
						{
						response.sendRedirect("department.html");
						}
						} 
					}
				 catch (Exception e)
				 {
				 System.out.println("Error :"+e);
				 }*/

				%>
				
				
				<div class="signin-text">
					<div class="text-left">
						<p><a href="#"> Forgot Password? </a></p>
					</div>
					<div class="text-right">
						<p><a href="signup.jsp"> Create New Account</a></p>
							<a href="help.jsp">help</a>
					</div>
					<div class="clearfix"> </div>
				</div>
				<h5>- OR -</h5>
				<div class="footer-icons">
					<ul>
						<li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" class="twitter facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" class="twitter chrome"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#" class="twitter dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				
			</div>
			
			<!-- footer -->
			<div class="copyright">
				<p>© 2023 Colored . All Rights Reserved . Design by <a href="http://w3layouts.com/"></a></p>
			</div>
			<!-- //footer -->
			
		</div>
	<script src="js/proton.js"></script>
</body>
</html>

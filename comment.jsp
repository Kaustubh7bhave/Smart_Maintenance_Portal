<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.sql.*"%>
<%@ page import="datebase.*"%>
<%@ page import="java.io.*" %>
       
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
			  <label for="comment">Comment:</label>
				</div>		
					<form method="post" action="submit_comment.jsp">
  <textarea  name="comment" required ></textarea><br><br>
  <input type="submit" class="register" value="Submit">
</form>
					

				
		<%

		String title=request.getParameter("title");
		  String descriptions=request.getParameter("descriptions"); 
          String department = request.getParameter("department");
          String date = request.getParameter("date");
          String complaint1 = request.getParameter("complaint11");
           complaint1= "pending";
          PrintWriter pw;
	  		pw=response.getWriter();
	  		pw.print(title+""+descriptions+""+department+""+date);
          Connection con = smart_database.connect();
          try{
	PreparedStatement s = con.prepareStatement("insert into complaint values(NULL,?,?,?,?,?,?)");

	s.setString(2,title);
	s.setString(3,descriptions);
	s.setString(4,department);
	s.setString(5,date);
	s.setString(6, complaint1);
	s.setString(7,GetSet.getUsername());
 int r = s.executeUpdate();
 try 
 {
     
     s.close();
     con.close();
 } catch (SQLException e)
 {
     e.printStackTrace();
 }
 }
 finally {
	    try {
	        if (con != null)
	            con.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	      }

		%>		
			</div>
			
			<!-- footer -->
			<div class="copyright">
				<p>© 2023 Colored . All Rights Reserved . <a href="http://w3layouts.com/"></a></p>
			</div>
			<!-- //footer -->
			
		</div>
	<script src="js/proton.js"></script>
</body>
</html>

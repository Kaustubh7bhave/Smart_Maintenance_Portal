<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*"%>
<%@ page import="datebase.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Maintenance Portal | admin </title>
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
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});	
		});
		</script>
<!-- charts -->
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
<link rel="stylesheet" href="css/morris.css">
<!-- //charts -->
<!--skycons-icons-->
<script src="js/skycons.js"></script>
<!--//skycons-icons-->
</head>
<body class="dashboard-page">
	<script>
	        var theme = $.cookie('protonTheme') || 'default';
	        $('body').removeClass (function (index, css) {
	            return (css.match (/\btheme-\S+/g) || []).join(' ');
	        });
	        if (theme !== 'default') $('body').addClass(theme);
        </script>
	<nav class="main-menu">
		<ul>
			<li>
				<a href="admin.html">
					<i class="fa fa-home nav_icon"></i>
					<span class="nav-text">
					Dashboard
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="Add_Department.jsp">
				<!--i class="fa fa-cogs" aria-hidden="true"></i-->
				<i class="fa fa-check-square-o nav_icon"></i>
				<span class="nav-text">
						Add Department and View Department edit,delete.		</span>
				<!--i class="icon-angle-right"></i><i class="icon-angle-down"></i-->
				</a>
				<!--ul>
					<li>
					<a cla  ss="subnav-text" href="buttons.html">
					Buttons
					</a>
					</li>
					<li>
					<a class="subnav-text" href="grids.html">
					Grids
					</a>
					</li>
				</ul-->
			</li>
			<li class="has-subnav">
				<a href="viewadmin.jsp">
				<i class="fa fa-check-square-o nav_icon"></i>
				<span class="nav-text">
				view All Data
				</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="addRoadMaintenanceDeadline.jsp">
				<i class="fa fa-check-square-o nav_icon"></i>
				<span class="nav-text">
				Add road Maintenance deadline with day wise
				</span>
				</a>
			</li>
			<li class="has-subnav">
				
				<a href="addHelpline.jsp">
					<i class="fa fa-file-text-o nav_icon"></i>
						<span class="nav-text">add Helpline</span>
					<!--i class="icon-angle-right"></i><i class="icon-angle-down"></i-->
				</a>	
			</li>
			</ul>
			<ul class="logout">
			<li>
			<a href="login.html">
			<i class="icon-off nav-icon"></i>
			<span class="nav-text">
			Logout
			</span>
			</a>
			</li>
		  </ul>
	</nav>
	<section class="wrapper scrollable">
		<nav class="user-menu">
			<a href="javascript:;" class="main-menu-access">
			<i class="icon-proton-logo"></i>
			<i class="icon-reorder"></i>
			</a>
		</nav>
		<section class="title-bar">
			<div class="full-top">
				<h1><a href="admin.html"><img src="images/logo.png" alt="" />Smart Maintenance Portal</a></h1>
			</div>
			<div class="clearfix"> </div>
		</section>
		<div class="agile-signup">
		<div class="content2">	
			<h1>Add Road Maintenance Deadline</h1>
				<form action="addRoadMaintenanceDeadline" method="post">
					<input type="text" name="roadName" value="Road Name:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Road Name';}">
					<input type="text" name="Date" value="Date:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Start Date';}">
					<input type="text" name="location" value="location" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'End Date';}">
					<input type="text" name="department"value="department"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'department';}">
					
					<input type="submit" class="register" value="submit">
				</form>
				 <%
         /* String roadName = request.getParameter("roadName"); 
		  String startDate = request.getParameter("startDate");
		  String location = request.getParameter("location"); 
		  String department = request.getParameter("department");
          Connection con = smart_database.connect();
          try{
        	  String a="INSERT INTO `roadmaintenance` (`id`, `RoadName`, `StartDate`, `EndDate`, `DayOfWeek`) VALUES (NULL,'"+roadName+"','"+startDate+"','"+endDate+"', '"+dayOfWeek+"');";
	PreparedStatement s = con.prepareStatement(a);
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
 catch(Exception e)
   {
    System.out.println(e);
    }*/
	%>
		<a href="admin.html">Back To Home</a>
			</div>
	   </div>
		<div class="footer">
			<p>© 2023 Colored . All Rights Reserved . Design by <a href="http://w3layouts.com/"></a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*"%>
<%@ page import="datebase.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Maintenance Portal | Home </title>
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
				</a>
				
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
				<i class="fa fa-check-square-o nav_icon"></i>
				<span class="nav-text">
				View All Data
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
				
				<a href="login.jsp">
					<i class="fa fa-file-text-o nav_icon"></i>
						<span class="nav-text">Login Page</span>
					<!--i class="icon-angle-right"></i><i class="icon-angle-down"></i-->
				</a>	
			</li>
			
			<li>
				<a href="charts.html">
					<i class="fa fa-bar-chart nav_icon"></i>
					<span class="nav-text">
						Charts
					</span>
				</a>
			</li>
			<li>
				<a href="typography.html">
					<i class="icon-font nav-icon"></i>
					<span class="nav-text">
					Typography
					</span>
				</a>
			</li>
			<li>
				<a href="tables.html">
					<i class="icon-table nav-icon"></i>
					<span class="nav-text">
					Tables
					</span>
				</a>
			</li>
			<li>
				<a href="maps.html">
					<i class="fa fa-map-marker" aria-hidden="true"></i>
					<span class="nav-text">
					Maps
					</span>
				</a>
			</li>
			<li>
				<a href="error.html">
					<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
					<span class="nav-text">
					Error Page
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
					<i class="fa fa-list-ul" aria-hidden="true"></i>
					<span class="nav-text">Extras</span>
					<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="faq.html">FAQ</a>
					</li>
					<li>
						<a class="subnav-text" href="blank.html">Blank Page</a>
					</li>
				</ul>
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
				<h1><a href="index.html"><img src="images/logo.png" alt="" />Smart Maintenance Portal</a></h1>
			</div>
			<div class="clearfix"> </div>
		</section>
		<h1>Delete Department</h1>
                <form method='post' action=''>
                <input type='number' name='id' value='" id  "'/>
                <!--  --label for='departmentName'>Department Name:</label>
                <input type='text' name='departmentName' value='" + departmentName + "'/><br/>
                <label for='departmentHead'>Department Head:</label>
                <input type='text' name='departmentHead'> value='" + departmentHead + "'/><br/-->
                <input type='submit' value='Update'/>
                </form>
			 <%
		 try {
			int id = Integer.parseInt(request.getParameter("id"));
		 //String id=request.getParameter("id");
	   Connection con = smart_database.connect();
	   String sq2 = "DELETE FROM departments WHERE `departments`.`id` = '"+id+"'";
	PreparedStatement s = con.prepareStatement(sq2);
	
	int i=s.executeUpdate();
    if (i>0) {
    	response.getWriter().append("Department delete");
       
    		} else {
      			  response.getWriter().append("Department not found.");
    		}
		 
		 try 
         {
          
             s.close();
             con.close();
         } catch (SQLException e)
         {
             e.printStackTrace();
         }
		 }
		 catch (Exception e)
         {
             e.printStackTrace();
         }   
	         
		%>
		<div class="footer">
			<p>© 2016 Colored . All Rights Reserved . Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>

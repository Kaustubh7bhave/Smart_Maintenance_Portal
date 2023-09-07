<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*"%>
<%@ page import="datebase.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Maintenance Portal | department </title>
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
				<a href="department.html">
					<i class="fa fa-home nav_icon"></i>
					<span class="nav-text">
					Dashboard
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="canViewcomplaints.jsp">
				<i class="fa fa-cogs" aria-hidden="true"></i>
				<span class="nav-text">
					Can View complaints
				</span>
				<!--i class="icon-angle-right"></i><i class="icon-angle-down"></i-->
				</a>
			</li>
			<li class="has-subnav">
				<a href="canCloseComplaintWithReasonOrComment.jsp">
				<i class="fa fa-check-square-o nav_icon"></i>
				<span class="nav-text">
					Can close complaint with reason or comment
				</span>
				</a>
			</li>
			<li class="has-subnav">
				
				<a href="canUpdateStatus.jsp">
					<i class="fa fa-file-text-o nav_icon"></i>
						<span class="nav-text">
							 Can update status</span>
					
				</a>	
			</li>
			
			<li>
				<a href="willGetNotificationAsPerScheduleAddedByAdmin.jsp">
					<i class="fa fa-bar-chart nav_icon"></i>
					<span class="nav-text">
						Will get notification as per schedule added by admin
					</span>
				</a>
			</li>
			<li>
				<a href="correspondingActionThenDiscusses.jsp">
					<i class="icon-font nav-icon"></i>
					<span class="nav-text">		
Department will monitor a  place without going to their and get the information
and takes the corresponding action. Then discusses it with 
higher officials</span>
				</a>
			</li>
		</ul>
		<ul class="logout">
			<li>
			<a href="login.jsp">
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
				<h1><a href="department.html"><img src="images/logo.png" alt="" />Smart Maintenance Portal</a></h1>
			</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</section>
		<div class="blank">
		<div class="content2">
		
		<h1>complent</h1>
              
			 <%
		 try {
			int id = Integer.parseInt(request.getParameter("id"));        
	   Connection con = smart_database.connect();
	   String a="UPDATE `complaint` SET `complaint1`=? WHERE `id`=?";
	PreparedStatement s = con.prepareStatement(a);
	s.setString(1,"complete" );
	s.setInt(2, id);
	int i=s.executeUpdate();
    if (i>0) {
    	response.sendRedirect("canCloseComplaintWithReasonOrComment.jsp");
       
    		} else {
    			response.sendRedirect("canCloseComplaintWithReasonOrComment.jsp");
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
</div>
				</div>	
		<div class="footer">
			<p>© 2016 Colored . All Rights Reserved . Design by <a href="http://w3layouts.com/"></a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>

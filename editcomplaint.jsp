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
					View Complaints
				</span>
				<!--i class="icon-angle-right"></i><i class="icon-angle-down"></i-->
				</a>
			</li>
			<li class="has-subnav">
				<a href="canCloseComplaintWithReasonOrComment.jsp">
				<i class="fa fa-check-square-o nav_icon"></i>
				<span class="nav-text">
					Close Complaints
				</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="canUpdateStatus.jsp">
					<i class="fa fa-file-text-o nav_icon"></i>
						<span class="nav-text">
							 Update Status</span>
				</a>	
			</li>
			<li>
				<a href="pending.jsp">
					<i class="icon-font nav-icon"></i>
					<span class="nav-text">		
view pending</span>
				</a>
			</li>
			<li>
				<a href="willGetNotificationAsPerScheduleAddedByAdmin.jsp">
					<i class="fa fa-bar-chart nav_icon"></i>
					<span class="nav-text">
						Notifications
					</span>
				</a>
			</li>
			<!--li>
				<a href="correspondingActionThenDiscusses.jsp">
					<i class="icon-font nav-icon"></i>
					<span class="nav-text">		
Department</span>
				</a>
			</li-->
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
		<div class="agile-signup">
		<div class="content2">
		<h1>Edit Department</h1>
                <form action="" method="post">
						<!-- id title descriptions	department	dates-->	
				
					<!--input type="text" name="id	" value="id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}"-->
					<input type="text" name="title" value="title" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'title';}">
					<input type="text" name="descriptions" value="descriptions" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'descriptions';}">
					<input type="text" name="department" value="department" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'department';}">
					<input type="text" name="date" value="date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'date';}">
					<input type="submit" class="register" value="submit">
				</form>
                
                </div>
                </div>
		 <%
		 try {
			///String id=request.getParameter("id");
			 int id = Integer.parseInt(request.getParameter("id"));  
				String title=request.getParameter("title");
				  String descriptions=request.getParameter("descriptions"); 
		          String department = request.getParameter("department");
		          String date = request.getParameter("date");
	   Connection con = smart_database.connect();   
		    String sq2 ="UPDATE `complaint` SET `title`=?,`descriptions`=?,`department`=?,`dates`=? WHERE `complaint`.`id` = ?";
	PreparedStatement s = con.prepareStatement(sq2);
	s.setString(1,title );
	s.setString(2,descriptions );
	s.setString(3,department );
	s.setString(4,date );
	s.setInt(5,id);
	int r= s.executeUpdate();
    if (r>0) {
    
    //response.sendRedirect("canCloseComplaintWithReasonOrComment.jsp");
    
    
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
	       		 

		 
	
	

		<div class="footer">
			<p>© 2023 Colored . All Rights Reserved .<a href="http://w3layouts.com/"></a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>

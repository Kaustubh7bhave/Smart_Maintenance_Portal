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
<!-- tables -->
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });

      $('#table-swap-axis').basictable({
        swapAxis: true
      });

      $('#table-force-off').basictable({
        forceResponsive: false
      });

      $('#table-no-resize').basictable({
        noResize: true
      });

      $('#table-two-axis').basictable();

      $('#table-max-height').basictable({
        tableWrapper: true
      });
    });
</script>
<!-- //tables -->
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
	</nav>	<section class="wrapper scrollable">
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
				<%
				%>
			<div class="w3l-table-info">
				<h3>view Complete</h3>
					    <table id="table">
						<thead>
						  <tr>  	
							<th>id</th>
							<th>title</th>
							<th>description</th>
							<th>department</th>
							<th>date</th>
							<th>edit</th>
							<th>Delete</th>
							<th>complent</th>
							
						  </tr>
						  <% 
						  
    Connection con = smart_database.connect();
	PreparedStatement s = con.prepareStatement("SELECT * FROM `complaint` WHERE `department`=?");
	s.setString(1,GetSet.getDepartment());
	ResultSet rs= s.executeQuery();
	while(rs.next())
	{
    %>
						  
						</thead>
						<tbody>
						  <tr>
							<td data-th="id"><span class="bt-content"><%=rs.getInt(1) %></span></td>
							<td data-th="title"><span class="bt-content"><%=rs.getString(2) %></span></td>
							<td data-th="description"><span class="bt-content"><%=rs.getString(3) %></span></td>
							<td data-th="department"><span class="bt-content"> <%=rs.getString(4) %></span></td>
							<td data-th="date"><span class="bt-content"><%=rs.getString(5) %></span></td>
						  <td data-th="edit"><span class="bt-content">
						  <a href="editcomplaint.jsp?id=<%=rs.getInt(1)%>" onclick="return confirm_alert(this);">edit</a></span></td>
						 <td data-th="delete"><span class="bt-content">
						  <a href="deletecomplaint.jsp?id=<%=rs.getInt(1)%>" onclick="return confirm_alert(this);">delete</a></span></td>
						  <td data-th="complemt"><span class="bt-content">
						  <a href="Complent.jsp?id=<%=rs.getInt(1)%> "onclick="return confirm_alert(this);">complemt</a></a></span></td>
						  
						  
						  </tr>
						   <% }%>
						  						</tbody>
						  								  </table>
	</div>
	</div>				
		<div class="footer">
			<p>© 2023 Colored . All Rights Reserved .<a href="http://w3layouts.com/"></a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>

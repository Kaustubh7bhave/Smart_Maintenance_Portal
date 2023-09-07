<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="datebase.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Maintenance Portal | User </title>
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
					Add Department and View Department edit,delete.
				</span>
				
				</a>
				
			</li>
			<li class="has-subnav">
				<a href="viewAllData.jsp">
				<i class="fa fa-check-square-o nav_icon"></i>
				<span class="nav-text">
				View all Date
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
				<li class="has-subnav">
					<a href="cancheckStatusofcomplaint.jsp">
					<i class="fa fa-check-square-o nav_icon"></i>
					<span class="nav-text">
					can check Status of complaint
					</span>
					</a>
				</li>
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
				<h1><a href="uses.html"><img src="images/logo.png" alt="" />Smart Maintenance Portal</a></h1>
			</div>
					
				</div>
			</div>
	
		</section>
		<div class="blank">
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
							
						  </tr>
						  <% 
    Connection con = smart_database.connect();
	PreparedStatement s = con.prepareStatement("Select * from complaint ");
	ResultSet rs= s.executeQuery();
	while(rs.next())
	{
    %>
						  
						</thead>
						<tbody>
						  <tr>
							<td data-th="id"><span class="bt-content"><%=rs.getString(1) %></span></td>
							<td data-th="title"><span class="bt-content"><%=rs.getString(2) %></span></td>
							<td data-th="description"><span class="bt-content"><%=rs.getString(3) %></span></td>
							<td data-th="department"><span class="bt-content"> <%=rs.getString(4) %></span></td>
							<td data-th="date"><span class="bt-content"><%=rs.getString(5) %></span></td>
						  </tr>
						   <% }%>
						  						</tbody>
					  </table>
					</div>
	   </div>
					
		<div class="footer">
			<p>© 2023 Colored . All Rights Reserved . Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>

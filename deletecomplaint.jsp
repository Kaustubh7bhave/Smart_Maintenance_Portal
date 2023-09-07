<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="datebase.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Maintenance Portal | department </title>
			 <%
		 try {
			// String id=request.getParameter("id");
			int id = Integer.parseInt(request.getParameter("id"));
			 
	   Connection con = smart_database.connect();
	   String sq2 ="Delete from`complaint` WHERE id= ?";  
	PreparedStatement s = con.prepareStatement(sq2);
	s.setInt(1, id);
	//s.setString(1, id);
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

					
		<div class="footer">
			<p>© 2016 Colored . All Rights Reserved . Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>

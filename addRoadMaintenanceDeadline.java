package datebase;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class addRoadMaintenanceDeadline
 */
public class addRoadMaintenanceDeadline extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addRoadMaintenanceDeadline() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	      String roadName = request.getParameter("roadName"); 
			  String Date = request.getParameter("Date");
			  String location = request.getParameter("location"); 
			  String department = request.getParameter("department"); 
	          Connection con = smart_database.connect();
	          try{
	        	  String a="INSERT INTO `roadmaintenance` (`id`, `RoadName`, `Date`, `location`, `department`) VALUES (NULL,'"+roadName+"','"+Date+"','"+location+"', '"+department+"');";
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
	    }
	}

}

package datebase;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Delete
 */
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
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
		response.setContentType("text/html");
		PrintWriter pw;
		pw=response.getWriter();
		Connection con = smart_database.connect();
		pw.println("<h1>Delete Department</h1> <form method='post' action='Delete'><input type='number' name='id' value=\" id\"/><input type='submit' value='Update'/></form>");
		 try {
				int id = Integer.parseInt(request.getParameter("id"));
			 //String id=request.getParameter("id");
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
	         }
			 catch (SQLException e)
	         {
	             e.printStackTrace();
	         }
			 }
			 catch (Exception e)
	         {
	             e.printStackTrace();
	         }   
		
	}

}

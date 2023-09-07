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
 * Servlet implementation class Edit
 */
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edit() {
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
		pw.println("<h1>Delete Department</h1> <form method='post' action='Edit'><input type='number' name='id' value=\" id\"/><input type=\"text\" name=\"departmentName\" value=\"departmentName\"/> <input type=\"text\" name=\"departmentHead\" value=\"departmentHead\"/><input type='submit' value='Update'/></form>");
		 try {
				int id = Integer.parseInt(request.getParameter("id"));
				 String departmentName = request.getParameter("departmentName");
			        String departmentHead = request.getParameter("departmentHead");
			 //String id=request.getParameter("id");
				 String sq2 ="UPDATE `departments` SET `department_name` = ' "+departmentName+"', `department_head` = '"+departmentHead+"' WHERE `departments`.`id` = '"+id+"'";
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

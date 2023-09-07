package datebase;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class add_Department
 */
public class add_Department extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_Department() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String departmentName=request.getParameter("departmentName"); 
		String departmentHead=request.getParameter("departmentHead");
          Connection con = smart_database.connect();
          try{
	PreparedStatement s = con.prepareStatement("insert into departments values(NULL,'"+departmentName+"','"+departmentHead+"')");
 int r = s.executeUpdate();
          

	}catch(Exception e)
          {
    			System.out.println(e);
    			}

	}}

package datebase;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signup
 */
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
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
		String id=request.getParameter("id"); 
		String Username=request.getParameter("Username");
		  String Email=request.getParameter("Email"); 
          String Mobile = request.getParameter("Mobile");
          String Password = request.getParameter("Password");
          String Address = request.getParameter("Address");
          String role = request.getParameter("role");
          Connection con = smart_database.connect();
          try{
	PreparedStatement s = con.prepareStatement("insert into registes values(?,?,?,?,?,?,?)");
	s.setString(1,id);
	s.setString(2,Username);
	s.setString(4,Email);
	s.setString(3,Mobile);
	s.setString(5,Password);
	s.setString(6,Address);
	s.setString(7,role);
 int r = s.executeUpdate();
          }
          catch(Exception e)
          {
    			System.out.println(e);
    			}
	}

}

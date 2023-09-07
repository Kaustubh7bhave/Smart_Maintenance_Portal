package datebase;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class addHelpline
 */
public class addHelpline extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addHelpline() {
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
		   String id =request.getParameter("id"); 
			String helplineName =request.getParameter("helplineName");
			  String helplineNumber =request.getParameter("helplineNumber"); 
	       
	          Connection con = smart_database.connect();
	          try{
		PreparedStatement s = con.prepareStatement("insert into helpline values(?,?,?)");
		s.setString(1,id);
		s.setString(2,helplineName);
		s.setString(3,helplineNumber);
		
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

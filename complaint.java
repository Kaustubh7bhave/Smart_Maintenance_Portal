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
 * Servlet implementation class complaint
 */
public class complaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String NUll = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public complaint() {
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
		
		 
			String title=request.getParameter("title");
			  String descriptions=request.getParameter("descriptions"); 
	          String department = request.getParameter("department");
	          String date = request.getParameter("date");
	          String complaint1 = request.getParameter("complaint11");
               complaint1= "pending";
	          PrintWriter pw;
		  		pw=response.getWriter();
		  		pw.print(title+""+descriptions+""+department+""+date);
	          Connection con = smart_database.connect();
	          try{
		PreparedStatement s = con.prepareStatement("insert into complaint values(NULL,?,?,?,?,?,?)");
	
		s.setString(2,title);
		s.setString(3,descriptions);
		s.setString(4,department);
		s.setString(5,date);
		s.setString(6, complaint1);
		s.setString(7,GetSet.getUsername());
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

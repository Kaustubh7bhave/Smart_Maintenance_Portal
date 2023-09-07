package datebase;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String Username =request.getParameter("Username");
		String role = request.getParameter("role");
		String Password =request.getParameter("Password");
		response.setContentType("text/html");
		PrintWriter pw;
		pw=response.getWriter();
		Connection con = smart_database.connect();
		try{
			String q="SELECT * FROM registes WHERE username = ? AND roles = ? AND passwords = ?";
			String q1="insert into `registes`( username,roles, passwords) values(?,?,?)";		 
			//Statement s = con.createStatement();
			PreparedStatement s = con.prepareStatement(q);
			s.setString(1, Username);
			s.setString(2,role);
			s.setString(3,Password);
			pw.println(role);
			ResultSet rs=s.executeQuery();
			if (rs.next()) {
		        HttpSession session = request.getSession();
		        session.setAttribute("roles", role);
		        response.sendRedirect("uses.html");
		        
		      } else {
		        request.setAttribute("errorMessage", "Invalid username or password");
		        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		        rd.forward(request, response);
		      }
			//int rs=s.executeUpdate();
			/*int i=0;
			while(rs.next())
			{ 
				i=1;
				Username=rs.getString(1);
				role=rs.getString(2);
				
				}
			
			if(i==1)
			{if(role=="uses")
			{
				response.sendRedirect("uses.html");
			}
			else if(role=="adimin")
			{
				response.sendRedirect("adimin.html");
			}
			else if(role=="department"){
				response.sendRedirect("department.html");
			}
			}else{
				pw.println("your role is not able");
			response.sendRedirect("login.html");
			}*/
		}catch(Exception e){
		System.out.println(e);
		}		

		
	}

}

package datebase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class smart_database {
	static Connection www;
	
	 public static Connection connect()
	{
		Connection www =null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			www=DriverManager.getConnection("jdbc:mysql://localhost:3306/smart_maintenance","root","");
			Statement s =www.createStatement();
			System.out.println("Connection establish");
			}
		catch(ClassNotFoundException e)
		{
			System.out.println(e);
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
		return www;
	}



}

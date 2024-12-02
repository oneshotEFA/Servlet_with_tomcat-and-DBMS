package for_real;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connector {
	public static Connection connect() throws SQLException, ClassNotFoundException {
		 Class.forName("com.mysql.cj.jdbc.Driver"); 
	     String url = "jdbc:mysql://localhost:3306/datastore";
	     Connection con = null;
	     con = DriverManager.getConnection(url, "root", "1221");
		 return con;
	}
}

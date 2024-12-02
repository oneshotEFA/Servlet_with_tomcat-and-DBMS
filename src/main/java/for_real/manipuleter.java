package for_real;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class manipuleter {
    public static String register(int id,String name,String lname,String email,String password) throws ClassNotFoundException, SQLException {
    	Connection con=null;
    	PreparedStatement pst = null;
		try {
			con = connector.connect();
			pst = con.prepareStatement("INSERT INTO customer VALUES (?,?,?,?,?)");
	        pst.setInt(1, id);
	        pst.setString(2, name);
	        pst.setString(3, lname);
	        pst.setString(4, email);
	        pst.setString(5,password);
	        pst.executeUpdate(); 

	        return ("Data inserted successfully.");
	    } catch (ClassNotFoundException e) {
	        return("Error while loading database driver: " + e.getMessage());
	    } catch (SQLException e) {
	    	return("SQL Error: " + e.getMessage());
	    } finally {
	    
	        try {
	            if (pst != null) pst.close();
	            if (con != null) con.close();
	        } catch (SQLException e){
	        	return("Error closing resources: " + e.getMessage());
	        }
	    }
    }
}

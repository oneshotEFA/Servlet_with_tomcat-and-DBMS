

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import for_real.connector;
import for_real.manipuleter;
/**
 * Servlet implementation class SignupHandeler
 */
@WebServlet("/SignupHandeler")
public class SignupHandeler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SignupHandeler() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
	    PrintWriter o = response.getWriter();
	    o.append("Served at: ").append(request.getContextPath());
	    String name = request.getParameter("username");
	    String lname = request.getParameter("userlname");
	    String email = request.getParameter("useremail");
	    String password = request.getParameter("password");
	    int id;
	    try {
	        id = Integer.parseInt(request.getParameter("userid"));
	    } catch (NumberFormatException e) {
	        o.println("Invalid user ID.");
	        return; 
	    }
        try {
			manipuleter.register(id,name,lname,email,password);
			response.sendRedirect("Login.jsp");
		} catch (ClassNotFoundException | SQLException e){
			
			o.println("error in handler."+ e.getMessage());
		}
	}
	}




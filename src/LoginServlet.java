

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
		{
		String em=request.getParameter("email");
		String pswd=request.getParameter("password");
		String dbName,dbEmail,dbPassword;
		boolean login=false;
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/projecta","root","root");
		Statement st= con.createStatement();
		st.executeQuery("select fname,lname,email,password from user");
		ResultSet rs=st.getResultSet();
		
		while(rs.next())
		{
        dbEmail = rs.getString("email");
        dbPassword = rs.getString("password");
        dbName=rs.getString("fname")+" "+rs.getString("lname");
        
        if(dbEmail.equals(em) && dbPassword.equals(pswd))
        {
            login = true;
            HttpSession session=request.getSession();  
            session.setAttribute("name",dbName);
            session.setAttribute("email",dbEmail); 
        }
		}
		
		if(login)
		{
			response.sendRedirect("index1.jsp");
		}
		else
		{
			response.sendRedirect("loginerror.html");
		}
	
		st.close();
		con.close();
		}
		catch(Exception e)
		{
			response.sendRedirect("loginerror.html");
		}
	}

}

package com.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest; 


@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws ServletException, IOException {	
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String reupwd = request.getParameter("re_pass");
		String umobile = request.getParameter("contact");
		
//		PrintWriter out = response.getWriter(); 	out.print(uname);

		Connection connection = null;
		
		RequestDispatcher dispatcher = null;
		
		if(uname == null || uname.equals("")) {
			request.setAttribute("status","invalidName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		
		if(uemail == null || uemail.equals("")) {
			request.setAttribute("status","invalidEmail");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
		if(upwd == null || upwd.equals("")) {
			request.setAttribute("status","invalidPass");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		
		else if (!upwd.equals(reupwd) )
		{
			request.setAttribute("status","passNotMatch");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		
		if(umobile == null || umobile.equals("")) {
			request.setAttribute("status","invalidMobile");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		
		else if(umobile.length()!=10){
			request.setAttribute("status","invalidMobileLength");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		
		
		try {
			String SqlUsername = "himanshu";
			String SqlPassword = "1234";
			String SqlUrl = "jdbc:oracle:thin:@localhost:1521:orcl?useSSL=false";
//			Connection connection = null;
//			Statement statement = null;
//			ResultSet resultSet = null;
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection= DriverManager.getConnection(SqlUrl , SqlUsername, SqlPassword);
			
			PreparedStatement pst = connection.prepareStatement("insert into users(uname,upwd,uemail,umobile) values (?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, upwd);
			pst.setString(3, uemail);
			pst.setString(4, umobile);
			
			int rowCount = pst.executeUpdate();
			
			dispatcher  = request.getRequestDispatcher("registration.jsp");
			if(rowCount > 0)
			{
				request.setAttribute("status", "success");
				 
			}
			else {
				request.setAttribute("status", "failed");
				
			}
			
			dispatcher.forward(request, response);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}

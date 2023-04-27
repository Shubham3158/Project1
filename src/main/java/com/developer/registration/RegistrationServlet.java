package com.developer.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static Connection connection;
	private static RequestDispatcher dispatcher;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uname = request.getParameter("fullname");
		String uemail = request.getParameter("email");
		String umobile=request.getParameter("number");
		String upass = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/shubham?user=root&password=root");
			String query="insert into users(uname,upass,uemail,umobile) values(?,?,?,?)";
			PreparedStatement statement=connection.prepareStatement(query);
			statement.setString(1, uname);
			statement.setString(2, upass);
			statement.setString(3, uemail);
			statement.setString(4, umobile);
			int result=statement.executeUpdate();
			dispatcher=request.getRequestDispatcher("register.jsp");
			if (result>0) {
				request.setAttribute("status", "success");
				
			}else {
				request.setAttribute("status", "fail");
				dispatcher=request.getRequestDispatcher("register.jsp");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if (connection!=null) {
					connection.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}

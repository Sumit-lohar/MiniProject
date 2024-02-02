package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Connection.DBConnection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/userlogin")
public class Login_servlet extends HttpServlet {
	
	  @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  
		  String email = req.getParameter("u_email");
		  String password = req.getParameter("u_password");
		  
			HttpSession session = req.getSession();
		  
		  try {
			  Connection con = DBConnection.getConnection();
			  
			  String q = "select *from login where email=? and password=?";
			  
			  PreparedStatement pst = con.prepareStatement(q);
			  
			  pst.setString(1, email);
			  pst.setString(2, password);
			  
			  ResultSet rs = pst.executeQuery();
			  
			  if(rs.next()) {
				  session.setAttribute("name", rs.getString("UserName"));
				  
				 
				  
				  RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
				  rd.forward(req, resp);
			  }else {
				  RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
				  rd.forward(req, resp);
			  }
			  
			  con.close();
			  
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
		  
	}
	

}

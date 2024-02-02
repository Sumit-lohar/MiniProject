package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.Connection.DBConnection;

import jakarta.servlet.DispatcherType;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register_Servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();

		String name = req.getParameter("userName");
		String email = req.getParameter("u_email");
		String password = req.getParameter("u_password");
		String contact = req.getParameter("u_contact");

		RequestDispatcher rd = null;
		try {
			Connection con = DBConnection.getConnection();

			String q = "insert into login (UserName,email,password,contact) values(?,?,?,?)";

			PreparedStatement pst = con.prepareStatement(q);

			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, password);
			pst.setString(4, contact);

			int result = pst.executeUpdate();

			if (result > 0) {
				rd = req.getRequestDispatcher("Register.jsp");
			} else {
				rd = req.getRequestDispatcher("Register.jsp");
			}
			rd.forward(req, resp);

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

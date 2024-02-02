package com.servlet;

import java.io.IOException;

import com.Connection.DBConnection;
import com.DAO.Flight_DAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class Delete_Servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));

		try {
			Flight_DAO dao = new Flight_DAO(DBConnection.getConnection());

			boolean b = dao.deleteFlight(id);

			if (b) {
				System.out.println("deleted");
				resp.sendRedirect("flight.jsp");
			} else {
				System.out.println("not deleted");
				resp.sendRedirect("flight.jsp");
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}

package com.search;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Connection.DBConnection;
import com.DAO.Flight_DAO;
import com.Entity.Flight;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/search")
public class Search_Servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String from = req.getParameter("form");
		String to = req.getParameter("to");
		String date = req.getParameter("date");

		try {
			Flight_DAO dao = new Flight_DAO(DBConnection.getConnection());
			List<Flight> searchResults = dao.searchFlights(from, to, date);

			// Pass the search results to the JSP page
			req.setAttribute("searchResults", searchResults);
			
			req.getRequestDispatcher("home.jsp").forward(req, resp);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

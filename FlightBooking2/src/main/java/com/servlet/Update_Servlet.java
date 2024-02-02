package com.servlet;

import java.io.IOException;

import com.Connection.DBConnection;
import com.DAO.Flight_DAO;
import com.Entity.Flight;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class Update_Servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String flightName = req.getParameter("flightName");
		String date = req.getParameter("date");
		String source = req.getParameter("source");
		String destination = req.getParameter("destination");
		String price = req.getParameter("price");
		String duration = req.getParameter("duration");

		int id = Integer.parseInt(req.getParameter("id"));

		Flight flight = new Flight(id, flightName, date, source, destination, price, duration);

		try {
			Flight_DAO dao = new Flight_DAO(DBConnection.getConnection());

			boolean b = dao.updateFlight(flight);

			if (b) {
				System.out.println("data Updated.");
				resp.sendRedirect("Add_Flight.jsp");

			} else {
				System.out.println("data not Updated.");
				resp.sendRedirect("Add_Flight.jsp");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

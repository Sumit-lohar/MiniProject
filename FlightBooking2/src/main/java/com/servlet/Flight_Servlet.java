package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.Connection.DBConnection;
import com.DAO.Flight_DAO;
import com.Entity.Flight;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/insert")
public class Flight_Servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String flightName = req.getParameter("flightName");
		String date = req.getParameter("date");
		String source = req.getParameter("source");
		String destination = req.getParameter("destination");
		String price = req.getParameter("price");
		String duration = req.getParameter("duration");

		Flight flight = new Flight(flightName,date,source,destination,price,duration);
		
		Flight_DAO dao;
		
		
		
		try {
			dao = new Flight_DAO(DBConnection.getConnection());
			
			boolean b = dao.addFlight(flight);
			
			if(b) {
				System.out.println("data inserted.");
			    resp.sendRedirect("Add_Flight.jsp");
			  
			}else {
				System.out.println("data not inserted.");				
				resp.sendRedirect("Add_Flight.jsp");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
	}

}

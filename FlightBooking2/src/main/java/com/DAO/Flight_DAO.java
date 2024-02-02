package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Entity.Flight;

public class Flight_DAO {

	private Connection con;

	public Flight_DAO(Connection con) {

		this.con = con;
	}

	public boolean addFlight(Flight flight) {

		boolean f = false;

		try {

			String query = "insert into flight (flightName,date,source,destination,price,duration) values(?,?,?,?,?,?)";

			PreparedStatement pst = con.prepareStatement(query);

			pst.setString(1, flight.getFlightName());
			pst.setString(2, flight.getDate());
			pst.setString(3, flight.getSource());
			pst.setString(4, flight.getDestination());
			pst.setString(5, flight.getPrice());
			pst.setString(6, flight.getDuration());

			int result = pst.executeUpdate();

			if (result == 1) {
				f = true;
			}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public List<Flight> getAllFlight() {
		List<Flight> flight = new ArrayList<Flight>();

		Flight f = null;

		try {
			String query = "select *from flight";

			PreparedStatement pst = con.prepareStatement(query);

			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				f = new Flight();

				f.setId(rs.getInt(1));
				f.setFlightName(rs.getString(2));
				f.setDate(rs.getString(3));
				f.setSource(rs.getString(4));
				f.setDestination(rs.getString(5));
				f.setPrice(rs.getString(6));
				f.setDuration(rs.getString(7));

				flight.add(f);

			}

			con.close();

		} catch (Exception e) {
			// TODO: handle exception
		}

		return flight;

	}

	public Flight getFlightId(int id) {

		Flight f = null;

		try {
			String query = "select *from flight where id=?";

			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, id);

			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				f = new Flight();

				f.setId(rs.getInt(1));
				f.setFlightName(rs.getString(2));
				f.setDate(rs.getString(3));
				f.setSource(rs.getString(4));
				f.setDestination(rs.getString(5));
				f.setPrice(rs.getString(6));
				f.setDuration(rs.getString(7));

			}
			con.close();

		} catch (Exception e) {
			// TODO: handle exception
		}

		return f;

	}

	public boolean updateFlight(Flight flight) {

		boolean f = false;

		try {

			String query = "update flight set flightName=?,date=?,source=?,destination=?,price=?,duration=? where id=?";

			PreparedStatement pst = con.prepareStatement(query);

			pst.setString(1, flight.getFlightName());
			pst.setString(2, flight.getDate());
			pst.setString(3, flight.getSource());
			pst.setString(4, flight.getDestination());
			pst.setString(5, flight.getPrice());
			pst.setString(6, flight.getDuration());
			pst.setInt(7, flight.getId());

			int result = pst.executeUpdate();

			if (result == 1) {
				f = true;
			}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public boolean deleteFlight(int id) {
		boolean f = false;

		try {
			String q = "delete from flight where id=?";

			PreparedStatement pst = con.prepareStatement(q);
			pst.setInt(1, id);

			int i = pst.executeUpdate();

			if (i == 1) {
				f = true;
			}

			con.close();

		} catch (Exception e) {
			e.printStackTrace();

		}

		return f;

	}

	public List<Flight> searchFlights(String source, String destination, String date) {
		List<Flight> list = new ArrayList<>();
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			// Query to search flights based on the input parameters
			String query = "SELECT * FROM flight WHERE source = ? AND destination = ? AND date = ?";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, source);
			preparedStatement.setString(2, destination);
			preparedStatement.setString(3, date);

			// Execute the query
			resultSet = preparedStatement.executeQuery();

			// Process the result set and populate the searchResults list
			while (resultSet.next()) {
				Flight flight = new Flight();
				flight.setFlightName(resultSet.getString("flightName"));
				flight.setDate(resultSet.getString("date"));
				flight.setSource(resultSet.getString("source"));
				flight.setDestination(resultSet.getString("destination"));
				flight.setPrice(resultSet.getString("price"));
				flight.setDuration(resultSet.getString("duration"));
				
				list.add(flight);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}

<%@page import="com.Entity.Flight"%>
<%@page import="java.util.List"%>
<%@page import="com.Connection.DBConnection"%>
<%@page import="com.DAO.Flight_DAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booking</title>
<%@ include file="includes/Header.jsp"%>
</head>
<body>
	<%@ include file="includes/Navbar.jsp"%>


	<div class="container p-5">
		<h5 class="text-center">All Flights</h5>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Flight Name</th>
					<th scope="col">Date</th>
					<th scope="col">Source</th>
					<th scope="col">Destination</th>
					<th scope="col">Price</th>
					<th scope="col">Duration</th>
				</tr>
			</thead>
			<tbody>
				<%
				Flight_DAO dao = new Flight_DAO(DBConnection.getConnection());
				List<Flight> list = dao.getAllFlight();
				for (Flight flight : list) {
				%>
				<tr>
					<td><%=flight.getFlightName()%></td>
					<td><%=flight.getDate()%></td>
					<td><%=flight.getSource()%></td>
					<td><%=flight.getDestination()%></td>
					<td>$<%=flight.getPrice()%></td>
					<td><%=flight.getDuration()%></td>
					<td><a class="btn btn-primary"
						href="Edit_Flight.jsp?id=<%=flight.getId()%>" role="button">Edit</a>

						<a class="btn btn-primary" href="delete?id=<%=flight.getId()%>"
						role="button">Delete</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<div class="text-center mb-2">
			<a href="Add_Flight.jsp" class="btn btn-primary" role="button">Add
				Flight</a>
		</div>
	</div>


	<%@ include file="includes/footer.jsp"%>
</body>
</html>
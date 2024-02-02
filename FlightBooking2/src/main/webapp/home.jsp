<%@page import="com.Connection.DBConnection"%>
<%@page import="com.Entity.Flight"%>
<%@page import="com.DAO.Flight_DAO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home.jsp</title>
<%@ include file="includes/Header.jsp"%>
</head>
<style>
body {
	background: linear-gradient(to right, rgb(121, 193, 245),
		rgb(150, 211, 255));
}
</style>
<body>

	<%@ include file="includes/Navbar.jsp"%>

	<div class="container-fluid">
		<form action="search" method="get">
			<div class="card w-75 mx-auto my-5">
				<div class="card-body d-flex">
					<div class="mx-3 col-md-3">
						<label for="">Form</label> <input type="text" name="form"
							class="form-control">
					</div>
					<div class="mx-3 col-md-3">
						<label for="">To</label> <input type="text" name="to"
							class="form-control">
					</div>
					<div class="mx-3 col-md-3">
						<label for="">To</label> <input type="date" name="date"
							class="form-control">
					</div>
					<div class="mt-4 ml-3">
						<button type="submit" class="btn btn-primary p-2">Search</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- -------------------------------------------------- -->

	<%
	List<Flight> searchResults = (List<Flight>) request.getAttribute("searchResults");

	if (searchResults == null || searchResults.isEmpty()) {
		Flight_DAO dao = new Flight_DAO(DBConnection.getConnection());
		List<Flight> allFlights = dao.getAllFlight();

		for (Flight flight : allFlights) {
	%>
	<div class="card  bg-white  my-2 ">
		<div class="card-body  d-flex">
			<div class="col mx-3">
				<h5><%=flight.getFlightName()%></h5>
			</div>
			<div class="col mx-3">
				<h5><%=flight.getDate()%></h5>
			</div>
			<div class="col mx-3">
				<h5><%=flight.getSource()%></h5>
			</div>
			<div class="col mx-3">
				<h5><%=flight.getDestination()%></h5>
			</div>
			<div class="col mx-3">
				<h5>
					$<%=flight.getPrice()%></h5>
			</div>
			<div class="col mx-3">
				<h5><%=flight.getDuration()%></h5>
			</div>
			<div class="col mx-3">
				<a class="btn btn-primary" href="Thankyou.jsp" role="button">Book</a>
			</div>
		</div>
	</div>
	<%
	}
	} else {

	for (Flight flight : searchResults) {
	%>
	<div class="card  bg-white  my-2 ">
		<div class="card-body  d-flex">
			<div class="col mx-3">
				<h5><%=flight.getFlightName()%></h5>
			</div>
			<div class="col mx-3">
				<h5><%=flight.getDate()%></h5>
			</div>
			<div class="col mx-3">
				<h5><%=flight.getSource()%></h5>
			</div>
			<div class="col mx-3">
				<h5><%=flight.getDestination()%></h5>
			</div>
			<div class="col mx-3">
				<h5>
					$<%=flight.getPrice()%></h5>
			</div>
			<div class="col mx-3">
				<h5><%=flight.getDuration()%></h5>
			</div>
			<div class="col mx-3">
				<a class="btn btn-primary" href="Thankyou.jsp" role="button">Book</a>
			</div>
		</div>
	</div>
	<%
	}
	}
	%>




	<%@ include file="includes/footer.jsp"%>
</body>
</html>

<%@page import="com.Entity.Flight"%>
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

	<div class="container">
		<div class="card w-50 mx-auto my-3">
			<div class="card-header text-center">Edit Flight</div>
			<div class="card-body">


				<%
				int id = Integer.parseInt(request.getParameter("id"));
				Flight_DAO dao = new Flight_DAO(DBConnection.getConnection());
				Flight f = dao.getFlightId(id);
				%>

				<form action="update" method="get">

					<div class="mb-3">
						<label>Flight Name:</label> <input type="text" name="flightName"
							class="form-control" placeholder="Flight_Name"
							value="<%=f.getFlightName()%> " required="required">
					</div>

					<div class="mb-3">
						<label>Date:</label> <input type="text" name="date"
							class="form-control" placeholder="Date" value="<%=f.getDate()%>"
							required="required">
					</div>

					<div class="mb-3">
						<label>Source:</label> <input type="text" name="source"
							class="form-control" placeholder="Source"
							value="<%=f.getSource()%>" required="required">
					</div>

					<div class="mb-3">
						<label>Destination:</label> <input type="text" name="destination"
							class="form-control" placeholder="Destination"
							value="<%=f.getDestination()%>" required="required">
					</div>

					<div class="mb-3">
						<label>Price:</label> <input type="text" name="price"
							class="form-control" placeholder="price"
							value="<%=f.getPrice()%>" required="required">
					</div>


					<div class="mb-3">
						<label>Duration:</label> <input type="text" name="duration"
							class="form-control" placeholder="Duration"
							value="<%=f.getDuration()%>" required="required">
					</div>

					<input type="hidden" name="id" value="<%=f.getId()%>">


					<button type="submit" class="btn btn-primary">Update</button>
				</form>
			</div>
		</div>
	</div>


	<%@ include file="includes/footer.jsp"%>
</body>
</html>
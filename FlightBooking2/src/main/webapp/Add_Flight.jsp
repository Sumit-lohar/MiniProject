<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booking</title>
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

	<div class="container">
		<div class="card w-50 mx-auto my-3">
			<div class="card-header text-center">Add Flight</div>
			<div class="card-body">

				<form action="insert" method="get">


					<div class="mb-3">
						<label>Flight Name:</label> <input type="text" name="flightName"
							class="form-control" placeholder="Flight_Name"
							required="required">
					</div>

					<div class="mb-3">
						<label>Date:</label> <input type="date" name="date"
							class="form-control" placeholder="Date" required="required">
					</div>

					<div class="mb-3">
						<label>Source:</label> <input type="text" name="source"
							class="form-control" placeholder="Source" required="required">
					</div>

					<div class="mb-3">
						<label>Destination:</label> <input type="text" name="destination"
							class="form-control" placeholder="Destination"
							required="required">
					</div>

					<div class="mb-3">
						<label>Price:</label> <input type="text" name="price"
							class="form-control" placeholder="price" required="required">
					</div>

					<div class="mb-3">
						<label>Duration:</label> <input type="text" name="duration"
							class="form-control" placeholder="Duration" required="required">
					</div>

					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>


	<%@ include file="includes/footer.jsp"%>
</body>
</html>
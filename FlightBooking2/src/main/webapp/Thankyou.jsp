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
	background: url("img/16.jpeg") no-repeat center center fixed;
	background-size: cover;
}

.text {
	position: absolute;
	left: 70%;
	top: 30%;
	transform: translate(-50%, -50%);
}
</style>
<body>
	<%@ include file="includes/Navbar.jsp"%>


	<div class="container mt-5 ">
		<h1 class="text">Thank you for Booking Ticket...!</h1>
	</div>


	<%@ include file="includes/footer.jsp"%>
</body>
</html>

<%
if (session.getAttribute("name") == null) {
	response.sendRedirect("Login.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Flight Booking</title>

<link rel="stylesheet" href="logStyle.css">

<%@ include file="includes/Header.jsp"%>
</head>
<body>

	<%@ include file="includes/Navbar.jsp"%>

	<div class="bg-img">
		<div class="img-text">
			<h2>Book Domestic and International Flight Tickets</h2>
			<p>Find your flight and explore the word with us.</p>
			<p>We will take care of rest.</p>
		</div>
		<a id="btn" class="btn btn-primary" href="home.jsp" role="button">Book
			Now</a>
	</div>


	<%@ include file="includes/footer.jsp"%>
</body>
</html>

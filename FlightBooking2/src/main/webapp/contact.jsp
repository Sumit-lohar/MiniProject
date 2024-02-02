<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booking</title>

<style>
body {
	background: linear-gradient(to right, rgb(121, 193, 245),
		rgb(150, 211, 255));
}
</style>

<%@ include file="includes/Header.jsp"%>
</head>
<body>
	<%@ include file="includes/Navbar.jsp"%>

	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">
				<h4>contact us</h4>
			</div>
			<div class="card-body">
				<form action="register" method="get">

					<div class="text-flid mb-3">
						<label>Name:</label> <input type="text" name="u_fname"
							class="form-control" placeholder="Name" required="required">
					</div>

					<div class="text-flid mb-3">
						<label>Email:</label> <input type="email" name="u_email"
							class="form-control" placeholder="email" required="required">
					</div>

					<div class="text-flid mb-3">
						<label>Password:</label> <input type="password" name="u_password"
							class="form-control" placeholder="password" required="required">
					</div>

					<div class="text-flid mb-3">
						<label>Mobile:</label> <input type="text" name="u_mobile"
							class="form-control" placeholder="mobile" required="required">
					</div>

					<div class="text-flid mb-3">
						<label>Message:</label> <input type="text" name="message"
							class="form-control" style="height: 80px" placeholder="Message"
							required="required">
					</div>

					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>


	<%@ include file="includes/footer.jsp"%>
</body>
</html>
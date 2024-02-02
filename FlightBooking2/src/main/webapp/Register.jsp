<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booking</title>

<link rel="stylesheet" href="logStyle.css">


<%@ include file="includes/Header.jsp"%>
</head>
<body>



	<input type="hidden" id="Message"
		value="<%=request.getAttribute("status")%>">


	<div class="container">
		<div class="card mx-auto">
			<div class="card-header text-center">
				<h4>Register</h4>
			</div>
			<div class="card-body">
				<form action="register" method="get">

					<div class="text-flid mb-3">
						<label>UserName:</label> <input type="text" name="userName"
							class="form-control" placeholder="username" required="required">
					</div>

					<div class="text-flid mb-3">
						<label>Email:</label> <input type="email" name="u_email"
							class="form-control" placeholder="email" required="required">
					</div>

					<div class="text-flid mb-3">
						<label>Password:</label> <input type="password" name="u_password"
							class="form-control" placeholder="Password" required="required">
					</div>

					<div class="text-flid mb-3">
						<label>Contact No:</label> <input type="text" name="u_contact"
							class="form-control" placeholder="Mobile No" required="required">
					</div>
					
					<div class="text mb-3">
						<a href="Login.jsp">I am already member </a>
					</div>
					
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>

				</form>
			</div>
		</div>
	</div>

	<%@ include file="includes/footer.jsp"%>


</body>
</html>
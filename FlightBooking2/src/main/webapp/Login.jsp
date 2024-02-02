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


	<div class="container">
		<div class="card  mx-auto">
			<div class="card-header text-center">
				<h4>Login</h4>
			</div>
			<div class="card-body">
				<form action="userlogin" method="get">
					<div class="text-flid mb-3">
						<label>Email</label> <input type="email" name="u_email"
							class="form-control" placeholder="email" required="required">
					</div>
					<div class="text-flid mb-3">
						<label>Password</label> <input type="password" name="u_password"
							class="form-control" placeholder="password" required="required">
					</div>

					<div class="text mb-3">
						<a href="Register.jsp">Create an account</a>
					</div>

					<div class="mb-3 text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>

				</form>
			</div>
		</div>
	</div>


	<%@ include file="includes/footer.jsp"%>

</body>
</html>
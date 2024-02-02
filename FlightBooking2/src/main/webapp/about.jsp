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

	<div class="container py-lg-5 py-md-4 py-2">
		<div class="card my-4">
			<div class="row">
				<div class="col-lg-8 about-right-faq align-self mt-5">
					<div class="card-body">
						<h5 class="title-big mx-0">Online Booking</h5>
						<p class="mt-lg-4 mt-3">Online booking allows users to search
							for and book flights from the comfort of their homes or offices,
							eliminating the need to visit a travel agency or airline office,
							Online platforms are available 24/7, allowing users to book
							flights at any time that suits them even during non-business
							hours.</p>
						<p class="card-text">
							<small class="text-body-secondary">Last updated 3 mins
								ago</small>
						</p>
					</div>
				</div>
				<div class="col-lg-4 mt-lg-0 mt-5 text-center">
					<div class="image-container mt-3 mb-3 mr-3">
						<img src="img/12.png" class="img-fluid rounded-start" alt="Error">
					</div>
				</div>
			</div>
		</div>


		<div class="card my-4">
			<div class="row">
				<div class="col-lg-4 mt-lg-0 mt-5 text-center">
					<div class="image-container mt-3 mb-3 ml-3">
						<img src="img/13.png" class="img-fluid rounded-start" alt="Error">
					</div>
				</div>

				<div class="col-lg-8 about-right-faq align-self mt-5">
					<div class="card-body">
						<h5 class="title-big mx-0">Information</h5>
						<p class="mt-lg-4 mt-3">Provide an interactive map feature
							that allows users to visually explore flight routes,
							destinations, and possible layovers. This can make the travel
							planning process more engaging and informative.</p>
						<p class="card-text">
							<small class="text-body-secondary">Last updated 3 mins
								ago</small>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="includes/footer.jsp"%>
</body>
</html>
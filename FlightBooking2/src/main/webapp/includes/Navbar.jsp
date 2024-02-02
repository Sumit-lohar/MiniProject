
<nav class="navbar navbar-expand-md bg-light navbar-light">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">FLY</a>
		<button class="navbar-toggler" data-toggle="collapse"
			data-target="#My_nav">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="My_nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link active" href="home.jsp">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link active"
					href="flight.jsp">Add Flight</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="about.jsp">About us</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="contact.jsp">Contact</a></li>
			</ul>
			<div class="ml-auto">
				<a class="btn btn-primary mb-1 ml-2" href="Login.jsp" role="button">Login</a>
			</div>
			<div>
				<a class="btn btn-primary mb-1 ml-2" href="Register.jsp"
					role="button">Register</a>
			</div>
			<div>
				<a class="btn btn-primary mb-1 ml-2 bg-success" href=""
					role="button"><%=session.getAttribute("name")%></a>
			</div>

		</div>

	</div>

</nav>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<%
		if(session.getAttribute("username") == null){
			response.sendRedirect("login.jsp");
		}
	%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	</script>
	
	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#" id="home1"> <img
					src="./Images/Home1.png" class="navbar-brand" href="#" alt=""
					width="35" height="40">Home Loan
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a id="home" class="nav-link active"
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a id="about" class="nav-link active"
							href="aboutUs">About Us</a></li>

						<li class="nav-item"><a id="loanDetail"
							class="nav-link active" href="#">Loan Details</a></li>

						<li class="nav-item"><a id="contact" class="nav-link active"
							href="#">Contact Us</a></li>
					</ul>
					<form class="d-flex">
						<input class="form-control me-2 bg-dark" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-primary" type="submit">Search</button>
					</form>


				</div>
			</div>
		</nav>
	</div>

	Welcome ${username}
	
	<form action="WelcomeServlet" method="post">
		<button  type="submit">Details </button>
	</form>
	

	<form action="LogoutServlet" method="post">
		<input type="submit" value="Logout">
	</form>
</body>
</html>
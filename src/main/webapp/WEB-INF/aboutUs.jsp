<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="../JS/jquery.min.js"></script>
<script src="../JS/jsFile.js"></script>
<link rel="stylesheet" href="../CSS/style.css">
<title>Home Loan</title>
<style>
html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.column {
	float: left;
	width: 33.3%;
	margin-bottom: 16px;
	padding: 0 8px;
}

.card {
	box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.2);
	margin: 8px;
}

.about-section {
	padding: 50px;
	text-align: center;
	background-color: black;
	color: white;
}

.button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
}
</style>
</head>
<body>

	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#" id="home1"> <img
					src="../Images/Home1.png" class="navbar-brand" href="#" alt=""
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
							href="#">About Us</a></li>

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

</body>
</html>
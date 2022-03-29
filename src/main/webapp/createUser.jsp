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
					src="./Images/Home1.png" class="navbar-brand" href="#" alt=""
					width="30" height="30">Home Loan
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


	<div class="container-fluid" style="background: #F5FFFA;">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-6" style="margin-top: 10px">

				<form action="CreateUserServlet" method ="post">
					<h2 class="mb-3 row">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						Create New User</h2>
					<div class="mb-3 row">
						<label class="col-sm-3 col-form-label">First Name</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" name="FName" required>
						</div>
					</div>

					<div class="mb-3 row">
						<label class="col-sm-3 col-form-label">Last Name</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" name="LName" required>
						</div>
					</div>

					<div class="mb-3 row">
						<label for="staticEmail" class="col-sm-3 col-form-label">Email</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" name="Email" required>
						</div>
					</div>

					<div class="mb-3 row">
						<label class="col-sm-3 col-form-label">Address</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" name="Address" required>
						</div>
					</div>

					<div class="mb-3 row">
						<label class="col-sm-3 col-form-label">PinCode</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" name="PinCode" required>
						</div>
					</div>


					<div class="mb-3 row">
						<label class="col-sm-3 col-form-label">City</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" name="city" required>
						</div>
					</div>

					<div class="mb-3 row">
						<label class="col-sm-3 col-form-label">State</label>
						<div class="col-sm-6">
							<select name="state" name="state" class="form-control" required>
								<option value="Select">Select</option>
								<option value="Andhra Pradesh">Andhra Pradesh</option>
								<option value="Andaman and Nicobar Islands">Andaman and
									Nicobar Islands</option>
								<option value="Arunachal Pradesh">Arunachal Pradesh</option>
								<option value="Assam">Assam</option>
								<option value="Bihar">Bihar</option>
								<option value="Chandigarh">Chandigarh</option>
								<option value="Chhattisgarh">Chhattisgarh</option>
								<option value="Dadar and Nagar Haveli">Dadar and Nagar
									Haveli</option>
								<option value="Daman and Diu">Daman and Diu</option>
								<option value="Delhi">Delhi</option>
								<option value="Lakshadweep">Lakshadweep</option>
								<option value="Puducherry">Puducherry</option>
								<option value="Goa">Goa</option>
								<option value="Gujarat">Gujarat</option>
								<option value="Haryana">Haryana</option>
								<option value="Himachal Pradesh">Himachal Pradesh</option>
								<option value="Jammu and Kashmir">Jammu and Kashmir</option>
								<option value="Jharkhand">Jharkhand</option>
								<option value="Karnataka">Karnataka</option>
								<option value="Kerala">Kerala</option>
								<option value="Madhya Pradesh">Madhya Pradesh</option>
								<option value="Maharashtra">Maharashtra</option>
								<option value="Manipur">Manipur</option>
								<option value="Meghalaya">Meghalaya</option>
								<option value="Mizoram">Mizoram</option>
								<option value="Nagaland">Nagaland</option>
								<option value="Odisha">Odisha</option>
								<option value="Punjab">Punjab</option>
								<option value="Rajasthan">Rajasthan</option>
								<option value="Sikkim">Sikkim</option>
								<option value="Tamil Nadu">Tamil Nadu</option>
								<option value="Telangana">Telangana</option>
								<option value="Tripura">Tripura</option>
								<option value="Uttar Pradesh">Uttar Pradesh</option>
								<option value="Uttarakhand">Uttarakhand</option>
								<option value="West Bengal">West Bengal</option>
							</select>
						</div>
					</div>


					<div class="mb-3 row">
						<label for="inputPassword" class="col-sm-3 col-form-label">Password</label>
						<div class="col-sm-6">
							<input type="new-password" class="form-control" name="Password"
								required>
						</div>
					</div>

					<div class="mb-3 row">
						<label for="inputPassword" class="col-sm-3 col-form-label">Confirm-Password</label>
						<div class="col-sm-6">
							<input type="curret-password" class="form-control"
								name="RePassword" required>
						</div>
					</div>

					<div class="mb-3 row">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<button type="submit" value="create">Create User</button>
						</div>

					</div>

				</form>

			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>

</body>
</html>
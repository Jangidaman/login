<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	  <meta charset="UTF-8">
	  <title>Login form with JavaScript Validation</title>
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
		<link rel="stylesheet" href="./style.css">
	</head>
<body>
<body>
<!-- partial:index.partial.html -->
	<div class="logo text-center">
	  <h1>HOME LOAN</h1>
	</div>
	<div class="wrapper">
	  <div class="inner-warpper text-center">
	    <h2 class="title">Login to your account</h2>
	    <form  action="LoginServlet" method="post" id="formvalidate">
	      <div class="input-group">
	        <label class="palceholder" for="userName">User Name</label>
	        <input class="form-control" name="uname" type="text" placeholder="" />
	        <span class="lighting"></span>
	      </div>
	      <div class="input-group">
	        <label class="palceholder" for="userPassword">Password</label>
	        <input class="form-control" name="pass"  type="text" placeholder="" />
	        <span class="lighting"></span>
	      </div>
	
	      <button type="submit" value="Login">Login</button>
	      <div class="clearfix supporter">
	        <div class="pull-left remember-me">
	          <input id="rememberMe" type="checkbox">
	          <label for="rememberMe">Remember Me</label>
	        </div>
	        <a class="forgot pull-right" href="#">Forgot Password?</a>
	      </div>
	    </form>
	  </div>
	  <div class="signup-wrapper text-center">
	    <a href="createUser.jsp">Don't have an accout? <span class="text-primary">Create One</span></a>
	  </div>
	</div>

<!-- you don't need that :)  -->

<!-- partial -->
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.0/jquery.validate.min.js'></script><script  src="./script.js"></script>

</body>
</html>
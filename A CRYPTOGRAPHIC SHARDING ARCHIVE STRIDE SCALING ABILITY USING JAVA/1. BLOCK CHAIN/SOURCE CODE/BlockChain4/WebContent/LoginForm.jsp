<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Quick Register Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href="css1/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css1/style.css" rel="stylesheet" type="text/css" media="all"/>
<style type="text/css">
/* ALERTS */
.info, .success, .warning, .error {
    margin: 10px 0px;
    padding:10px;
   
}
.info {
    color: #00529B;
    background-color: #BDE5F8;
}

.success {
    color: #4F8A10;
    background-color: #DFF2BF;
}
.warning {
    color: #9F6000;
    background-color: #FEEFB3;
}
.error {
    color: #D8000C;
    background-color: #FFD2D2;
}
</style>
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
</head>
<body>
<div class="signupform">
<h1>Login Form</h1>
	<div class="container">
	<c:if test="${param.st eq 'err'}">
						<p class="error">Incorrect Email Id and Password! Enter Valid Credentials</p>
						</c:if>
				<c:if test="${param.st eq 'blk'}">
						<p class="warning">Your Account has been Blocked. Contact Admin !</p>
						</c:if>		
		<div class="agile_info">
			<div class="w3_info">
				<h2>Login</h2>
						<form action="LoginControl" method="post" autocomplete="off">
						<div class="left margin">
							<label>Email Address</label>
							<div class="input-group">
								<span><i class="fa fa-envelope" aria-hidden="true"></i></span>
								<input type="text" placeholder="Email / UserName" required="" name="em"> 
							</div>
						</div>
						<div class="left margin">
							<label>Password</label>
							<div class="input-group">
								<span><i class="fa fa-lock" aria-hidden="true"></i></span>
								<input type="Password" placeholder="Password" required="" name="pw">
							</div>
						</div>
						<div class="clear"></div>   
							<button class="btn btn-danger btn-block" type="submit">Login Now <i class="fa fa-long-arrow-right" aria-hidden="true"></i></button >                
					</form>
			</div>
			<div class="w3l_form">
				<div class="left_grid_info">
					<h3>Register Here</h3>
<!-- 					<p> Nam eleifend velit eget dolor vestibulum ornare. Vestibulum est nulla, fermentum eget euismod et, tincidunt at dui. Nulla tellus nisl, semper id justo vel, rutrum finibus risus. Cras vel auctor odio.</p>
 -->					<a href="RegistrationForm.jsp" class="btn">Sign Up <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
			
				<a href="index.jsp" class="btn">HOME <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
				</div>
			</div>
			<div class="clear"></div>
			</div>
			
		</div>
		<div class="footer">

<!--  <p>&copy; 2018 Quick Register form. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="blank">W3layouts</a></p>
 --> </div>
	</div>
	</body>
</html>
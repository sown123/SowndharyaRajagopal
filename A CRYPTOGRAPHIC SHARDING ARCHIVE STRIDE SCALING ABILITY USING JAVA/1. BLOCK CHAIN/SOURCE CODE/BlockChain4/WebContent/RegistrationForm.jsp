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
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
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

<script type="text/javascript">
//To Change letters to upper case
function mf() {
	  var x = document.getElementById("pan");
	  x.value = x.value.toUpperCase();
	}
	
//To check the passoword
function checkPass()
{
    //Store the password field objects into variables ...
    var password = document.getElementById('pas1');
    var confirm  = document.getElementById('pas2');
    //Store the Confirmation Message Object ...
    var message = document.getElementById('confirm-message2');
    //Set the colors we will be using ...
    var good_color = "#006400";
    var bad_color  = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if((password.value.length>7)&&(confirm.value.length>7))
    {
   		 if(password.value == confirm.value)
    	{
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        //confirm.style.backgroundColor = good_color;
        message.style.color           = good_color;
        message.innerHTML             = 'Passwords Match!';
        return true;
    	}
    	else
    	{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        //confirm.style.backgroundColor = bad_color;
        message.style.color           = bad_color;
        message.innerHTML             = 'Passwords Does Not Match!';
    	return false;
    	}
}  
}
//Throw Alert
function Validate() {
    var password = document.getElementById("pas1").value;
    var confirmPassword = document.getElementById("pas2").value;
    if (password != confirmPassword) {
        alert("Passwords does not match.");
        return false;
    }
    return true;
}

//Return Integer Only
function validate(evt) {
	  var theEvent = evt || window.event;

	  // Handle paste
	  if (theEvent.type === 'paste') {
	      key = event.clipboardData.getData('text/plain');
	  } else {
	  // Handle key press
	      var key = theEvent.keyCode || theEvent.which;
	      key = String.fromCharCode(key);
	  }
	  var regex = /[0-9]|\./;
	  if( !regex.test(key) ) {
	    theEvent.returnValue = false;
	    if(theEvent.preventDefault) theEvent.preventDefault();
	  }
	};
	
	
	
</script>



</head>
<body>
<div class="signupform">
<h1>Register Form</h1>
	<div class="container">
			<c:if test="${param.st eq 'reg2'}">
						<p class="warning">User Already Registered with this Credentials</p>
						</c:if>
		<div class="agile_info">
			<div class="w3_info">
				<h2>Register Here</h2>
						<form action="RegisterControl" method="post" autocomplete="off">
						<div class="left margin">
							<label>Name</label>
							<div class="input-group">
								<span><i class="fa fa-user" aria-hidden="true"></i></span>
								<input type="text" placeholder="First Name" id="name" required name="n"> 
							</div>
						</div>
						<div class="left">
							<label>PAN ID:</label>
							<div class="input-group">
							 <span><i class="fa fa-user" aria-hidden="true"></i></span>
								<input type="text" placeholder="PAN No:(Eg:AAAAA1234A)" required="" id="pan" name="pan" maxlength="10" onkeyup="mf()" pattern="[a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}" title="Please enter valid PAN number. E.g. AAAAA1234A">
							</div>
						</div>
						<div class="left margin">
							<label>Email Address</label>
							<div class="input-group">
								<span><i class="fa fa-envelope" aria-hidden="true"></i></span>
								<input type="email" placeholder="Email" required="" name="em"> 
							</div>
						</div>
						<div class="left">
							<label>Phone Number</label>
							<div class="input-group">
								<span><i class="fa fa-phone" aria-hidden="true"></i></span>
								<input type="text" placeholder="Phone Number" MAXLENGTH="10" required="" onkeypress='validate(event)' name="p">
							</div>
						</div>
						<div class="left margin">
							<label>Password</label>
							<div class="input-group">
								<span><i class="fa fa-lock" aria-hidden="true"></i></span>
								<input type="Password" placeholder="Password" required="" name="pw1" id="pas1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
							</div>
						</div>
						<div class="left">
							<label>Confirm Password</label>
							<div class="input-group">
								<span><i class="fa fa-lock" aria-hidden="true"></i></span>
								<input type="Password" placeholder="Confirm Password" required="" id="pas2" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
							</div>
						</div>
						<div class="left">
							<label>User Type</label>
							<div class="input-group">
								<!-- <span><i class="fa fa-user" aria-hidden="true"></i></span>
								<input type="text" placeholder="Last Name" required=""> -->
								<select name ="Role" required>
									<option value="">--Select User type--</option>
									<option value="EMPLOYEE">Employee</option>
									<option value="OWNER">Owner</option>
								</select>
								
								 
							</div>
						</div>

						<div class="clear"></div>
							<input type="checkbox" value="remember-me" title="You must accept the terms and conditions" required/> <h4> I agree to the terms & contidions </h4>        
							<button class="btn btn-danger btn-block" type="submit" onclick="return Validate()">Register Now <i class="fa fa-long-arrow-right" aria-hidden="true"></i></button >                
					</form>
			</div>
			<div class="w3l_form">
				<div class="left_grid_info">
					<h3>Already Registered?</h3>
<!-- 					<p> Nam eleifend velit eget dolor vestibulum ornare. Vestibulum est nulla, fermentum eget euismod et, tincidunt at dui. Nulla tellus nisl, semper id justo vel, rutrum finibus risus. Cras vel auctor odio.</p>
 -->					<a href="LoginForm.jsp" class="btn">Login <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>TAX CALCULATION</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Diligence Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/css4/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="css/style_b.css" rel='stylesheet' type='text/css' /><!-- BackButton css -->

<style>
 body  {
  background-image: url("images/customer1.png");
 background-repeat: no-repeat; 
 background-attachment: fixed;
  background-position: center; 
 background-size: auto ; 
} 
.hei{height:800px}

</style>
<script type="text/javascript">
<script>
function income()
{
  var i1 = document.getElementById("i1").value || 0;  
  var inc = parseInt(i1);
  var base = inc/12;
  document.getElementById("hra1").value = Math.round(base);
  document.getElementById("hra2").value = Math.round((17/100)*base);
  document.getElementById("hra3").value = Math.round((25/100)*base);
};
</script>

</head>
	
<body>
<!-- banner -->
	<div class="banner1">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1><a class="navbar-brand" href="index.html"><i class="fa fa-industry" aria-hidden="true"></i>Industry</a></h1>
				</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="link-effect-8" id="link-effect-8">
						<ul class="nav navbar-nav">
							<jsp:include page="WEB-INF/include/Menu.jsp"></jsp:include>	
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>
<!-- //banner -->
	<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<h2 class="w3ls_head"><span>Tax </span>Calculation</h2>
		</div></div>
		
		<div class="hei">
			
		
<div class="w3ls-form">
<form action="TaxForm.jsp" method="post" autocomplete="off">
	<center><h3 style="color:white;">INCOME</h3></center>
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Annual TurnOver</label>
				<div class="w3l-div">
					<input type="text" name="i1" id="i1" placeholder="Rs./-" required="" onkeyup="income();"/>
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">Annual Income from other Sources</label>
			<div class="w3l-div">
				<input type="text" name="i2" placeholder="Rs./-" value="0" required=""/>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Annual Income from let-out</label>
				<div class="w3l-div">
					<input type="text" name="i3" placeholder="Rs./-" required=""/ value="0">
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">Annual Income from Interest</label>
			<div class="w3l-div">
				<input type="text" name="i4" placeholder="Rs./-" required="" value="0"/>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		
<center><h3 style="color:white;">DEDUCTIONS</h3></center>
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Basic Deductions u/s 80C</label>
				<div class="w3l-div">
					<input type="text" name="d1" placeholder="Rs./-" required=""/>
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">Donation to Charity u/s 80G</label>
			<div class="w3l-div">
				<input type="text" name="d2" placeholder="Rs./-" required="" value="0"/>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Medical Insurance Premium u/s 80D</label>
				<div class="w3l-div">
					<input type="text" name="d3" placeholder="Rs./-" required="" value="0"/>
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">Interest on Loan u/s 80E</label>
			<div class="w3l-div">
				<input type="text" name="d4" placeholder="Rs./-" required="" value="0"/>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">TAX PAYABLE :</label>
				<div class="w3l-div">
					<input type="text" name="t3" placeholder="Rs./-" required="" value="0"/>
				</div>
			</div> 
			<div class="clear"></div>
		</div>	
 		<div class="clear"></div>
		<div class="w3ls-submit">
			<input type="submit" value="PAY">
		</div>
</form>
</div>
<!-- Default-JavaScript --> <script type="text/javascript" src="js/js4/jquery-2.1.4.min.js"></script>

		</div>
		
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3_agile_footer_grids">
			<div class="w3_newsletter_footer_grids">
				</div></div>
				<div class="agileinfo_copyright">
				<p>© Block Chain</p>
			</div>
		</div>
	</div>
<!-- //footer -->
<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
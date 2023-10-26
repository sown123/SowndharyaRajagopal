<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>TAX FORM</title>
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
<!-- Custom-Style-Sheet -->
<link rel="stylesheet" href="css/css1/style.css" type="text/css" media="all">
<link href="css/style_b.css" rel='stylesheet' type='text/css' /><!-- BackButton css -->

<link rel="stylesheet" href="css/css1/jquery-ui.css" type="text/css" media="all">
		<script type="text/javascript" src="js/js1/jquery-2.1.4.min.js"></script>
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<style>
 body  {
  background-image: url("images/customer1.png");
 background-repeat: no-repeat; 
 background-attachment: fixed;
  background-position: center; 
 background-size: auto ; 
} 
.hei{height:1200px}

</style>
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
<%String email = (String)session.getAttribute("email"); 
	String taxamt = request.getParameter("t3");
	session.setAttribute("taxa", taxamt);
%>
	<div class="services" id="services">
		<div class="container">
			<h2 class="w3ls_head"><span>IncomeTax Chalan</span>280</h2>
		</div></div>
		<div class="hei">
		<div class="containerw3layouts-agileits">
			<div class="w3layoutscontactagileits">
				<h2>Fill the Below Specified Details</h2>
					<div id="wrapper">
							<form action="TaxFormDISP.jsp" method="post" autocomplete="off">
								<div id="login" class="animate w3layouts agileits form">
									<div class="ferry ferry-from">
										<label>Your Name</label>
										<input type="text" name="name" placeholder="Name" required=" ">
									</div>
									<div class="ferry ferry-from">
										<label>Your Email</label>
										<input type="text" name="email" placeholder="Email" required="" value="<%=email%>">
									</div>
									<div class="ferry ferry-from">
										<label>Type Applicable</label>
										<select name="applicable">
											<option value="">--Select--</option>
											<option value="Corporation_Tax">Corporation Tax(Companies)</option>
											<option value="Income_Tax">Income Tax(Other than Companies)</option>					
										</select>
									</div>
									<div class="ferry ferry-to">
										<label>Type Of Payment</label>
										<select name="ptype">
											<option value="">--Select the Type</option>
											<option value="Advance_Tax">Advance Tax</option>
											<option value="Tax_On_Distributed_Income">Tax On Distributed Income</option>
											<option value="Tax_On_Regular_Assesment">Tax On Regular Assessment</option>
										</select>
									</div>
									<div class="ferry ferry-to">
										<label>Mode Of Payment</label>
										<select name="mode">
											<option value="">--Mode--</option>
											<option value="Internet Banking">Internet Banking</option>
										</select>
									</div>
									<!-- <div class="book-pag agileits w3layouts">		
										<div class="book-pag-frm1 agileits w3layouts">
											<label>Date Of Arrival</label><input class="date agileits w3layouts" id="datepicker2" type="text" value="Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="">
									</div> -->
									<div class="ferry ferry-from">
										<label>Permanent Account Number</label>
										<input type="text" name="pan" placeholder="PAN No.(Eg:AAAAA1234A)">
									</div>	
									<div class="ferry ferry-to">
										<label>Assessment Year</label>
										<select name="ayear">
											<option value="">--Select the Year--</option>
											<option value="2020-2021">2020-2021</option>
											<option value="2019-2020">2019-2020</option>
											<option value="2018-2019">2018-2019</option>
										</select>
									</div>
									
									<div class="ferry ferry-from">
										<label>Residential Details</label>
										<input type="text" name="flat" placeholder="Flat/Door/Block No." required=" ">
										<input type="text" name="village" placeholder="Premises/Building/Village." required=" ">
										<input type="text" name="lane" placeholder="Road/Street/Lane" required=" ">
										<input type="text" name="area" placeholder="Area/Locality" required=" ">
										<input type="text" name="city" placeholder="City/District" required=" ">
										<input type="text" name="state" placeholder="State" required=" ">	
										<input type="text" name="pin" placeholder="PinCode" required=" ">	
									</div>
									<div class="clear"></div>
									</div>
									<div class="clear"></div>
									</div>
								<!-- 	<div class="ferry ferry-from">
										<label>Customer Enquiry</label>
										<textarea id="message" name="message" placeholder="Your Queries" title="Please enter Your Queries"></textarea>
									</div> -->
									<div class="wthreesubmitaits">
										<input type="submit" name="submit" value="Submit">
									</div>
								</div>
								</form>
						</div>
			</div>
		</div>
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
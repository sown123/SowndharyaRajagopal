<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Template</title>
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
<link href="css/style_b.css" rel='stylesheet' type='text/css' /><!-- BackButton css -->

<!-- Default-JavaScript --> <script type="text/javascript" src="js/js4/jquery-2.1.4.min.js"></script>


<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="css/style_b.css" rel='stylesheet' type='text/css' /><!-- BackButton css -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<style>
 body  {
  background-image: url("images/customer1.png");
 background-repeat: no-repeat; 
 background-attachment: fixed;
  background-position: center; 
 background-size: auto ; 
} 
.hei{height:700px}

</style>
<script type="text/javascript">
function income()
{
  var i1 = document.getElementById("i1").value || 0; 
  var i2 = document.getElementById("i2").value || 0;
  var i3 = document.getElementById("i3").value || 0;
  var i4 = document.getElementById("i4").value || 0;
  
  
  //DA
  document.getElementById("i2").value = Math.round((17/100)*i1);
  //HRA
  document.getElementById("i3").value = Math.round((25/100)*i1);
  //SA
  document.getElementById("i4").value = Math.round((5/100)*i1);

  var i = i1*12;
  //TAX
  var tax;
  
  if(i<=250000){tax=0;}
	else if(250001<=i && i<=500000){tax=0.05*i1;}
	else if(500001<=i && i<=750000){tax=0.1*i1;}
	else if(750001<=i && i<=1000000){tax=0.15*i1;}
	else if(1000001<=i && i<=1250000){tax=0.20*i1;}
	else if(1250001<=1 && i<=1500000){tax=0.25*i1;}	
	else{tax=0.30*i1;}
  
//tax
  document.getElementById("d2").value =  Math.round(tax);
  
  //PF
  document.getElementById("d3").value = Math.round((8.5/100)*i1);
  
  var d1 = document.getElementById("d1").value || 0; 
  var d2 = document.getElementById("d2").value || 0;
  var d3 = document.getElementById("d3").value || 0;
  
  var inc = parseInt(i1)+parseInt(i2)+parseInt(i3)+parseInt(i4);
  var ded = parseInt(d1)+parseInt(d2)+parseInt(d3);
  
  document.getElementById("s1").value = inc;
  
  document.getElementById("s2").value = inc - ded;
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
					<h1><a class="navbar-brand" href="index.html"><i class="fa fa-industry" aria-hidden="true"></i>Taxation</a></h1>
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
	<%
	String id = (String)session.getAttribute("id");
	String pid = (String)session.getAttribute("pid");
	String name = request.getParameter("name");
	%>
	<div class="services" id="services">
		<div class="container">
			<h2 class="w3ls_head"><span>Add </span>Payment details</h2>		<center><a href="AdminControl?act=LIST" class="button1"><span>Back</span></a></center>
			
		</div>
			
		
		</div>
		
		<div class="hei">
		<center>
			<h3>PAN ID :<%=pid %></h3> 
			<h3>Name :<%=name %></h3>
		</center>
			<c:if test="${param.st eq 'pad2'}">
						<p class="warning"><img src="images/warning.png" width="30" height="30">Payment Details Already Added for this Employee</p>
						</c:if>

			<div class="w3l-head">
</div>

<div class="w3ls-form">

<form action="${pageContext.request.contextPath}/AdminControl" method="get" autocomplete="off">
	<input type="hidden" value="PSLIP" name="act">
	<input type="hidden" value=<%=id %> name="id">
	<input type="hidden" value=<%=pid %> name="pid">

		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Basic Salary</label>
				<div class="w3l-div">
					<input type="text" name="i1" id="i1" placeholder="Rs./-" required="" onkeyup="income();"/>
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">DearnessAllowance(DA)</label>
			<div class="w3l-div">
				<input type="text" name="i2" placeholder="Rs./-" id="i2" value="0" required=""/>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">House Rent Allowance</label>
				<div class="w3l-div">
					<input type="text" name="i3" id="i3" placeholder="Rs./-" required=""/ value="0">
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">Special Allowance</label>
			<div class="w3l-div">
				<input type="text" name="i4" id="i4" placeholder="Rs./-" required="" value="0"/>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Professional Tax</label>
				<div class="w3l-div">
					<input type="text" name="d1" id="d1" placeholder="Rs./-" required="" value="500"/>
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">TDS(Tax deduced at Source)</label>
			<div class="w3l-div">
				<input type="text" name="d2" id="d2" placeholder="Rs./-" required="" value="0"/>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Employee Provident Fund</label>
				<div class="w3l-div">
					<input type="text" name="d3" id="d3" placeholder="Rs./-" required="" value="500"/>
				</div>
			</div> 
			</div>
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Salary Gross Per Month</label>
				<div class="w3l-div">
					<input type="text" name="s1" id="s1" placeholder="Rs./-" required=""/>
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">Net Salary(In Rs.)</label>
			<div class="w3l-div">
				<input type="text" name="s2" id="s2" placeholder="Rs./-" required=""/>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		 
 		<div class="clear"></div>
		<div class="w3ls-submit">
			<input type="submit" value="SUBMIT">
		</div>
</form>
</div>

<!-- Calendar -->
<script src="js/js4/jquery-ui.js"></script>
	<script>
		$(function() {
		$( "#datepicker,#datepicker1" ).datepicker();
		});
	</script>
<!-- //Calendar -->
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
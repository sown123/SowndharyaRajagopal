<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@page import="utility.DB"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Employee_Pay</title>
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
<!-- Default-JavaScript --> <script type="text/javascript" src="js/js4/jquery-2.1.4.min.js"></script>
<link href="css/style_b.css" rel='stylesheet' type='text/css' /><!-- BackButton css -->


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
.hei{height:700px}
.lin:link, .lin:visited {
  background-color: #00529B;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

.lin:hover, .lin:active {
  background-color: red;
}
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
	<div class="services" id="services">
		<div class="container">
			<h2 class="w3ls_head"><span>Payment </span>details</h2>
		</div></div>
		
		<div class="hei">

			<div class="w3l-head">
</div>
<div class="w3ls-form">
<form action="ApplyDeductions.jsp" method="post" autocomplete="off">
	<input type="hidden" value="PSLIP" name="act">
	<%Integer id = (Integer)session.getAttribute("uid");
	String pan = (String)session.getAttribute("pan");
	System.out.println(pan);
	try
	{
	String sql = "SELECT * FROM payslip WHERE userid='"+id+"'";
		Connection conn = DB.getcon();
	Statement stmt=conn.createStatement();
	ResultSet r = stmt.executeQuery(sql); 
	if(r.next()){	
	%>
	
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Basic Salary</label>
				<div class="w3l-div">
					<input type="text" name="i1" id="i1" placeholder="Rs./-" required="" value=Rs.<%=r.getString("salary")%>>
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">DearnessAllowance(DA)</label>
			<div class="w3l-div">
				<input type="text" name="i2" placeholder="Rs./-" id="i2" required="" value=Rs.<%=r.getString("da")%>>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">House Rent Allowance</label>
				<div class="w3l-div">
					<input type="text" name="i3" id="i3" placeholder="Rs./-" required="" value=Rs.<%=r.getString("hra")%>>
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">Special Allowance</label>
			<div class="w3l-div">
				<input type="text" name="i4" id="i4" placeholder="Rs./-" required="" value=Rs.<%=r.getString("sa")%>/>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Professional Tax</label>
				<div class="w3l-div">
					<input type="text" name="d1" id="d1" placeholder="Rs./-" required="" value=Rs.<%=r.getString("pt")%>>
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">TDS(Tax deduced at Source)</label>
			<div class="w3l-div">
				<input type="text" name="d2" id="d2" placeholder="Rs./-" required="" value=Rs.<%=r.getString("tds")%>>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
		
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Employee Provident Fund</label>
				<div class="w3l-div">
					<input type="text" name="d3" id="d3" placeholder="Rs./-" required="" value=Rs.<%=r.getString("pf")%>>
				</div>
			</div> 
			</div>
		<div class="w3l-last-grid1">
			<div class="w3l-grid1">
				<label class="text">Salary Gross Per Month</label>
				<div class="w3l-div">
					<input type="text" name="s1" id="s1" placeholder="Rs./-" required="" value=Rs.<%=r.getString("grosal")%>>
				</div>
			</div> 
			<div class="w3l-grid2">
			<label class="text">Net Salary(In Rs.)</label>
			<div class="w3l-div">
				<input type="text" name="s2" id="s2" placeholder="Rs./-" required="" value=Rs.<%=r.getString("netsal")%>>
			</div>
			</div>
			<div class="clear"></div>
		</div>	
</form>
<%
		int tax = Integer.parseInt(r.getString("salary"));
		session.setAttribute("amt", r.getString("tds"));
		if(tax >= 25000){
			%>
			<center><a class="lin" href="ApplyDeductions.jsp">ADD DEDUCTIONS IN TAX</a></center>
			<%
		}
		%>
		<%
	}
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}

		
		
		%>
		
		
		
		
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
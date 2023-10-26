<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@page import="utility.DB"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>PAY TAX</title>
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
.hei{height:400px}

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
	<div class="services" id="services">
		<div class="container">
			<h2 class="w3ls_head"><span>ADD </span>Salary</h2>
		</div></div>
		<div class="hei">
		<center><a href="AddSalary.jsp" class="button1"><span>Back</span></a></center>
		<c:if test="${param.st eq 'ad2'}">
						<p class="info"><img src="images/info.png" width="30" height="30">Something went Wrong.Try after sometime</p>
						</c:if>	
		<form action="${pageContext.request.contextPath}/AdminControl" method="get">
			<%String pan = request.getParameter("pan");
			String id = request.getParameter("id");
			session.setAttribute("pan", pan);
			%>
			<input type="hidden" name="act" value="ADDSAL">
			<center><table>
			<%try
			{
				int sta=1;
				String sql = "SELECT * FROM payslip WHERE userid='"+id+"'";			
				Connection conn = DB.getcon();
			Statement stmt=conn.createStatement();
			ResultSet r = stmt.executeQuery(sql); 
			if(r.next()){	
				String tax = r.getString("tds");
				session.setAttribute("taxamount", tax);
			}
			}
			catch(Exception e1)
			{
			out.println(e1.getMessage());
			}
				%>
			<tr>
				<th>User Id</th>
				<td><p><%=id %></p></td>
			</tr>
			<tr>
				<th>PANNo.</th>
				<td><%=pan%></td>
			</tr>
			<tr>
				<th>MONTH</th>
				<td><input type="month" name="date">&nbsp;<input type="submit"></td>
			</tr>		
		
			</table></center>
			</form>
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
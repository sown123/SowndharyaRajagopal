<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
<title>Index</title>
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
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
</head>
	
<body>
<!-- banner -->
	<div class="banner">
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
							<li class="active"><a href="index.jsp">Home</a></li>
							<li><a href="LoginForm.jsp">Login</a></li>
						</ul>
					</nav>
				</div>
			</nav>
			<c:if test="${param.st eq 'reg'}">
						<p class="info"><img src="images/info.png" width="30" height="30"> User Registered Successfully. Wait for Admin to Activate Your Account</p>
						</c:if>
			<c:if test="${param.st eq 'lo'}">
						<p class="success"><img src="images/success.png" width="30" height="30"> User Logged out Successfully.</p>
						</c:if>				
			<div class="w3_agile_banner_info">
				<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<div class="agileits_w3layouts_banner_info">
										<p>We are never afraid of technical challenges…</p>
										<h3>Just see our most recent works projects!</h3>
									</div>
								</li>
								<li>
									<div class="agileits_w3layouts_banner_info">
										<p>We are never afraid of technical challenges…</p>
										<h3>Just see our most recent works projects!</h3>
									</div>
								</li>
								<li>
									<div class="agileits_w3layouts_banner_info">
										<p>We are never afraid of technical challenges…</p>
										<h3>Just see our most recent works projects!</h3>
									</div>
								</li>
								<li>
									<div class="agileits_w3layouts_banner_info">
										<p>We are never afraid of technical challenges…</p>
										<h3>Just see our most recent works projects!</h3>
									</div>
								</li>
							</ul>
						</div>
				</section>
			<!-- flexSlider -->
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
						  $('body').removeClass('loading');
						}
					  });
					});
				</script>
			<!-- //flexSlider -->
				
			</div>
			<div class="agile_banner_social">
				<ul class="agileits_social_list">
					<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
					<li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
<!-- //banner -->	
<!-- banner-bottom -->
	<!-- <div class="banner-bottom">
		<div class="container">
		<h2 class="w3ls_head"><span>Welcome To </span>Industry</h2>
			<p class="w3agile">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque
				corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
			<div class="wel-ind">
				<div class="col-md-6 agileits_banner_bottom_right">
					<div class="w3ls_banner_bottom_right">
						<img src="images/2.jpg" alt=" " class="img-responsive" />
						<div class="w3ls_banner_bottom_right_pos">
							<img src="images/1.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
				</div>
				<div class="col-md-6 agileits_banner_bottom_left">
				<h4>accusamus et iusto</h4>
				<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque
				corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
					<div class="w3l_social_icons">
						<div class="w3l_social_icon_grid">
							<div class="w3l_social_icon_gridl w3_facebook">
								<a href="#">
									<i class="fa fa-facebook" aria-hidden="true"></i>
								</a>
							</div>
							<div class="w3l_social_icon_gridr">
								<h5 class="counter">23,536</h5>
							</div>
							<div class="clearfix"> </div>
							<div class="w3l_social_icon_grid_pos">
								<label>-</label>
							</div>
						</div>
						<div class="w3l_social_icon_grid w3ls_social_icon_grid">
							<div class="w3l_social_icon_gridl w3_dribbble">
								<a href="#">
									<i class="fa fa-dribbble" aria-hidden="true"></i>
								</a>
							</div>
							<div class="w3l_social_icon_gridr">
								<h5 class="counter">13,676</h5>
							</div>
							<div class="clearfix"> </div>
							<div class="w3l_social_icon_grid_pos">
								<label>-</label>
							</div>
						</div>
						<div class="w3l_social_icon_grid">
							<div class="w3l_social_icon_gridl w3_instagram">
								<a href="#">
									<i class="fa fa-instagram" aria-hidden="true"></i>
								</a>
							</div>
							<div class="w3l_social_icon_gridr">
								<h5 class="counter">45,342</h5>
							</div>
							<div class="clearfix"> </div>
							<div class="w3l_social_icon_grid_pos">
								<label>-</label>
							</div>
						</div>
					</div>
				</div>
			<div class="clearfix"> </div>
			</div>
		</div>
	</div> -->
<!-- //banner-bottom -->
<!-- Stats -->
	<script src="js/waypoints.min.js"></script> 
	<script src="js/counterup.min.js"></script> 
	<script>
		jQuery(document).ready(function( $ ) {
			$('.counter').counterUp({
				delay: 10,
				time: 2000
			});
		});
	</script>
<!-- //Stats -->
<!-- skills -->
<!-- 	<div class="skills">
		<div class="container">
			<h3 class="w3ls_head"><span>Our </span>Skills</h3>
			<p class="w3agile">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque
				corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
			<div class="w3layouts_skills_grids">
				<div class="col-md-3 w3ls_about_guage">
					<canvas id="gauge1" width="200" height="100"></canvas>
					<h4>Make Money</h4>
				</div>
				<div class="col-md-3 w3ls_about_guage">
					<canvas id="gauge2" width="200" height="100"></canvas>
					<h4>Matching Buyer</h4>
				</div>
				<div class="col-md-3 w3ls_about_guage">
					<canvas id="gauge3" width="200" height="100"></canvas>
					<h4>Market Appraisals</h4>
				</div>
				<div class="col-md-3 w3ls_about_guage">
					<canvas id="gauge4" width="200" height="100"></canvas>
					<h4>Support</h4>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
//skills
what
	<div class="what-w3ls">
		<div class="container">
			<h3 class="w3ls_head"><span>Work </span>Process</h3>
			<p class="w3agile">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque
				corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
				<div class="what-grids">
					<div class="col-md-6 what-grid">
						<img src="images/2.jpg" class="img-responsive" alt=""/>
						<div class="what-agile-info">
							<h4>Consectetur</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aut dignissimos ea est, impedit incidunt, laboriosam consectetur adipisicing elit. Ab aut dignissimos ea est</p>
						</div>
					</div>
					<div class="col-md-6 what-grid1">
						<div class="what-top">
							<div class="what-left">
								<i class="glyphicon glyphicon-tree-deciduous" aria-hidden="true"></i>
							</div>
							<div class="what-right">
								<h4>Adipisicing</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aut dignissimos ea est, impedit incidunt, laboriosam consectetur adipisicing elit. Ab aut dignissimos ea est</p>
							</div>
								<div class="clearfix"></div>
						</div>
						<div class="what-top1">
							<div class="what-left">
								<i class="glyphicon glyphicon-flash" aria-hidden="true"></i>
							</div>
							<div class="what-right">
								<h4>Dignissimos</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aut dignissimos ea est, impedit incidunt, laboriosam consectetur adipisicing elit. Ab aut dignissimos ea est</p>
							</div>
								<div class="clearfix"></div>
						</div>
						<div class="what-top1">
							<div class="what-left">
								<i class="glyphicon glyphicon-fire" aria-hidden="true"></i>
							</div>
							<div class="what-right">
								<h4>Consectetur</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aut dignissimos ea est, impedit incidunt, laboriosam consectetur adipisicing elit. Ab aut dignissimos ea est</p>
							</div>
								<div class="clearfix"></div>
						</div>
					</div>
						<div class="clearfix"></div>
				</div>
		</div>
	</div>
//what	
testimonials
	<div class="testimonials">
		<div class="container">
			<h3 class="w3ls_head"><span>Testim</span>onials</h3>
			<p class="w3agile">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque
				corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
				
			<div class="w3ls_testimonials_grids">
				 <section class="center slider">
						<div class="agileits_testimonial_grid">
							<div class="w3l_testimonial_grid">
								<p>In eu auctor felis, id eleifend dolor. Integer bibendum dictum erat, 
									non laoreet dolor.</p>
								<h4>Rosy Crisp</h4>
								<h5>Student</h5>
								<div class="w3l_testimonial_grid_pos">
									<img src="images/1.png" alt=" " class="img-responsive" />
								</div>
							</div>
						</div>
						<div class="agileits_testimonial_grid">
							<div class="w3l_testimonial_grid">
								<p>In eu auctor felis, id eleifend dolor. Integer bibendum dictum erat, 
									non laoreet dolor.</p>
								<h4>Laura Paul</h4>
								<h5>Student</h5>
								<div class="w3l_testimonial_grid_pos">
									<img src="images/2.png" alt=" " class="img-responsive" />
								</div>
							</div>
						</div>
						<div class="agileits_testimonial_grid">
							<div class="w3l_testimonial_grid">
								<p>In eu auctor felis, id eleifend dolor. Integer bibendum dictum erat, 
									non laoreet dolor.</p>
								<h4>Michael Doe</h4>
								<h5>Student</h5>
								<div class="w3l_testimonial_grid_pos">
									<img src="images/3.png" alt=" " class="img-responsive" />
								</div>
							</div>
						</div>
				</section>
			</div>
		</div>
	</div>
//testimonials -->
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
<!-- carousal -->
	<script src="js/slick.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(document).on('ready', function() {
		  $(".center").slick({
			dots: true,
			infinite: true,
			centerMode: true,
			slidesToShow: 2,
			slidesToScroll: 2,
			responsive: [
				{
				  breakpoint: 768,
				  settings: {
					arrows: true,
					centerMode: false,
					slidesToShow: 2
				  }
				},
				{
				  breakpoint: 480,
				  settings: {
					arrows: true,
					centerMode: false,
					centerPadding: '40px',
					slidesToShow: 1
				  }
				}
			 ]
		  });
		});
	</script>
<!-- //carousal -->
<!-- gauge-meter -->
	<script src="js/jquery.gauge.js"></script>
	<script>
		$(document).ready(function (){
			$("#gauge1").gauge(30,{color: "#fb5710",unit: " %",type: "halfcircle"});
			$("#gauge2").gauge(70, {color: "#a821e7", unit: " %",type: "halfcircle"});
			$("#gauge3").gauge(75, {color: "#fbb810",unit: " %",type: "halfcircle"});
			$("#gauge4").gauge(90, {color: "#21d0e7",unit: " %",type: "halfcircle"});
		});
	</script>
<!-- //gauge-meter -->

</body>
</html>
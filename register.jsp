<!DOCTYPE html>

<html class="mdc-typography">

<head>

	<title>GAMEZONE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/register-css.css">
	<link rel="stylesheet" type="text/css" href="css/register-responsive.css">
	
	<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css">
	
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/index-navigation.js"></script>
	
	<script>
		$(document).ready(function(){
					
			// nav itoooooooooooooooooooooooooo
			$("#btn-minimize-nav").click(function(){
				$("#toggleNav").toggleClass("display-mothis");
			});
		});
	</script>
	<style>
		.display-mothis{
			display:block;
		}
	</style>
	
</head>

<body>

	<nav>
		<div class="maximize-nav">
			<ul>
				<li><a href="index.jsp" id="nav-home">HOME</a></li>
				<li>|</li>
				<li><a href="news.jsp" id="nav-about">NEWS</a></li>
				<li>|</li>
				<li><a href="register.jsp" id="nav-reg">REGISTER</a></li>
				<li>|</li>
				<li><a href="login.jsp"id="nav-log">LOG-IN</a></li>
			</ul>
		</div>
		<div class="minimize-nav">
			<button id="btn-minimize-nav"><i class="fa fa-bars" aria-hidden="true" style="font-size: 18px;"></i></button>
			<div id="toggleNav" class="dropdown-content">
				<ul>
					<li><a href="home.jsp">Home</a></li>
					<li><a href="news.jsp">News</a></li>
					<li><a href="register.jsp">Register</a></li>
					<li><a href="login.jsp">Log-in</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="section-1">
		<img src="images/banner-register.jpg" style="margin-top: -1px;">
		
		<div class="form">
			<p> Sign Up</p>
			<form action="insert-registration.jsp" method="post">
				
				<input type="text" placeholder="Enter username" name="uname"  required/> 

				<input type="password" placeholder="Enter password" name="password" required/>

				<input type="password" placeholder="Confirm password" name="confirmpass" required/>

				<input type="email" placeholder="Enter e-mail" name="email" required/>

				<input type="submit" value="Register">
				<br>Already have an account? | <a href="login.jsp" style="color: gold;"> Log-in </a>
				
			</form>
		</div>
		
	</div>
	
	<div class="footer">
		<div class="display-inline">
			<span class="yellow">HOME</span><br>
			News<br>
			Downloads<br>
			Donate<br>
			Rankings
			
		</div>
		<div class="display-inline">
			<span class="yellow">COMMUNITY</span><br>
			Forum<br><br><br><br>
		</div>
		<div class="display-inline">
			<span class="yellow">SUPPORT</span><br>
			Terms of Service<br>
			F.A.Q.<br>
			Contact Us<br><br>
		</div>
		<div class="display-inline">
			<span class="yellow">ACCOUNT</span><br>
			Register<br>
			My Account<br>
			Lost Password<br><br>
		</div>
		
		<div class="property">
			COPYRIGHT 2017 | JAVIER & AMARO, ALL RIGHTS RESERVED<br>
		</div>
	</div>
	
	
</body>
</html>
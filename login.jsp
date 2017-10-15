<!DOCTYPE html>

<html>

<head>

	<title>GAMEZONE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/login-css.css">
	<link rel="stylesheet" type="text/css" href="css/login-responsive.css">
	
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

<%

	String logger = String.valueOf(session.getAttribute("incorrectLog"));
	if(logger.equalsIgnoreCase("true")){
		out.print("<script>alert('Incorrect Username or Password!');</script>");
		session.setAttribute("incorrectLog","false");
	}

%>

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
				<li><a href="login.jsp" id="nav-log">LOG-IN</a></li>
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
		<img src="images/regg.jpg" >
			
		<div class="form">
			<p> Log In</p>
			<form action="test-login.jsp" method="post">
				<input type="text" placeholder="Enter username" name="uname"  required/> 

				<input type="password" placeholder="Enter password" name="pword" required/>
				
				<br> 				
				
				<input type="submit" value="Log-in">
				<br> <br> Not registered yet? | <a href="register.jsp" style="color:gold;"> Sign up </a>

					
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
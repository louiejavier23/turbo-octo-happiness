<!DOCTYPE html>

<html>
<%
	session.setAttribute("incorrectLog","false");
%>
<head>

	<title>GAMEZONE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/index-responsive.css">
	
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

	<div class="banner-img">
		<div id="slider">
			<figure>
				<img src="images/banner.jpg" >
				<img src="images/banner-new.jpg" >
				<img src="images/banner-new1.jpg" >
				<img src="images/banner-new2.jpg" >
				<img src="images/banner.jpg" >
			</figure>
		</div>
		<div class="gradient"></div>
	</div>
	
	<div class="web-title">
		<p class="title1">GAMEZONE</p>
		<p class="title2">
			<div class="display-inline-img">
				<img src="images/dota-2-logo.png" class="img-logo1"/>
			</div>
			<div class="display-inline-img">
				<img src="images/logo-lol.png" class="img-logo2" />
			</div>
			<div class="display-inline-img">
				<img src="images/logo-mu.png" class="img-logo3"/>
			</div>
		</p>
	</div>
	
	<div class="section-1">
		<img src="images/dota2/pa1.jpg" >
		<div class="section-1-description">
			<p class="p1" style="color:#99cccc">
				Bring your friends and party up.
			</p>
			<p style=" color:#999999;" class="p2">
				Dota is deep, and constantly evolving, but it's never too late to join.<br>
				Learn the ropes playing co-op vs. bots. Sharpen your skills in the hero demo mode. Jump into the behavior- and skill-based matchmaking system that ensures you'll be matched with the right players each game.
			</p>
		</div>
	</div>
		
	<div class="section-1">
		<img src="images/04.jpg" >
		<div class="section-3-description">
			<p class="p1">One Battlefield. Infinite Possibilities.</p>
			<p style="color:#ffffcc;" class="p2">
				When it comes to diversity of heroes, abilities, and powerful items, Dota boasts an endless array - no two games are the same. Any hero can fill multiple roles, and there's an abundance of items to help meet the needs of each game.<br>
				Dota doesn't provide limitations on how to play, it empowers you to express your own style.
			</p>
		</div>
	</div>
	
	<div class="section-1">
		<img src="images/01.jpg" >
		<div class="section-2-description">
			<p class="p1" style="color:#99cccc">All heroes are free.</p>
			<p style="color:#999999;" class="p2">
				Competitive balance is Dota's crown jewel, and to ensure everyone is playing on an even field, the core content of the game-like the vast pool of heroes-is available to all players. Fans can collect cosmetics for heroes and fun add-ons for the world they inhabit, but everything you need to play is already included before you join your first match.
			</p><br>
			<p style="color:#999999; font-style: italic;font-size:28px;" class="p2">
				"...totally free to play in the way
				we wish all free-to-play games could be" <br> <span style="margin-left:450px;">- IGN</span>
			</p>
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
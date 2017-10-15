<%@ page import="java.sql.*"%>
<%@include file="dbConnection.jsp"%>

<!DOCTYPE html>

<html>

<head>

	<title>News</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/news-css.css">
	<link rel="stylesheet" type="text/css" href="css/news-responsive.css">
	
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
					<li><a href="index.jsp">Home</a></li>
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
				<img src="images/banner-new1.jpg" >
				<img src="images/banner-new2.jpg" >
				<img src="images/banner.jpg" >
				<img src="images/banner-new.jpg" >
				<img src="images/banner-new1.jpg" >
			</figure>
		</div>
		<div class="gradient"></div>
	</div>
	
	<div class="web-title">
		<p class="title1">GAMEZONE</p>
		<p class="title2">
			<div class="display-inline-img">
				<img src="images/dota-2-logo.png" class="img-logo1" />
			</div>
			<div class="display-inline-img">
				<img src="images/logo-lol.png" class="img-logo2" />
			</div>
			<div class="display-inline-img">
				<img src="images/logo-mu.png" class="img-logo3" />
			</div>
		</p>
	</div>

	<div class="container-body">
	
		<div>
			<div class="vid-title">
				A Game of Roles
			</div>
			<video controls autoplay>
				<source src="images/dota2/video2.mp4" type="video/mp4">
			</video>
			
			<hr color="#999999">
		</div>
		
		<div>
			<div class="news-container">
				<a href="http://blog.dota2.com/2017/09/frostivus-custom-game-contest/">Frostivus Custom Game Contest</a>
				
				<p>
					To help celebrate Frostivus this year, we are happy to announce a new custom game contest. Each entry must be a new multiplayer custom game heavily themed around the Frostivus season, and may be either cooperative or competitive amongst the players. To enter, you must submit the final copy of the custom game by November 20th. We are excited to see all of the Frostivus game submissions for this contest.
				</p>
				<p>
					The winning entry will be selected by Valve and will receive a prize of $30,000. While the deadline for submitting the final copy is November 20th, we suggest that you involve the community during your development process earlier and have them play the game to give you feedback. Make sure to tag your game with "Frostivus 2017" so fans can find your game on the workshop. Check the Frostivus 2017 Contest Rules page for all of the entry requirements.
				</p>
				<p>
					<center><img src="images/frostivuscontest.jpg"></center>
				</p>
				<p>
					Ahead of the Frostivus season, we have a couple other things in the works. Our next big release will be The Dueling Fates update. We are still hard at work on it and don’t have an exact release date, but we are expecting it to take about another month to finish the content. We are also putting the finishing touches on the next True Sight episode, scheduled to be released on Tuesday next week. We have put together a teaser for it, <a href="https://www.youtube.com/watch?v=7lJFxUUNfl8">check it out here.</a>
				</p>
				
<%
try{

	Class.forName(driver).newInstance();
	conn = DriverManager.getConnection(url + dbName, userName, passwords);
	Statement st = conn.createStatement();
			
	ResultSet rs = st.executeQuery("SELECT * FROM news_tbl WHERE topic='dota'");
	
	while(rs.next()){
		out.print("<a>"+rs.getString("title")+"</a>");
		out.print("<p>"+rs.getString("content")+"</p>");
	}
	
	conn.close();
}
catch(Exception e){
	
}
%>
				
			</div>
			
			<hr color="#999999">
			
			<div class="news-container">
				<div class="n-game-logo">
					<center><img src="images/logo-lol.png"></center>
				</div>
				<p style="color:#99cccc; font-size:28px;">
					7.19 Patch Maintenance <br>
					<span style="color:#999999; font-size:16px;">Posted on 09/27/2017 by LoL PH Admin</span>
				</p>
				<p>
					<center><img src="images/590-patch.jpg" width="620"></center>
				</p>
				<p>
					Greetings <strong>Summoners</strong>,
				</p>
				<p>
					We will be having a scheduled server maintenance tomorrow, <strong>September 28, 2017</strong>. This is to give way to our 7.19 Patch Deploy.
				</p>
				<p>
					We will be disabling the Ranked Queues at 1:30 AM. Servers will shut down at 3:00 AM and is expected to be back by 7:00 AM. Please be advised that up-time is subject to change without prior notice. Kindly avoid playing near the downtime to avoid any account issues. 
				</p>
				<p>
					Regards,<br>LoL PH Team<br><br>
					Read the Patch Notes <a href="https://lol.garena.ph/patchnotes.php?contentidselect=00004656&cat=NEWS&subcat=PATCH%20NOTES">Here</a><br><br>
					Share your thoughts <a href="http://forum.lol.garena.ph/showthread.php?477346-Patch-Maintenance-7.19">Here</a>
				</p>
		
<%
try{

	Class.forName(driver).newInstance();
	conn = DriverManager.getConnection(url + dbName, userName, passwords);
	Statement st = conn.createStatement();
			
	ResultSet rs = st.executeQuery("SELECT * FROM news_tbl WHERE topic='lol'");
	
	while(rs.next()){
		out.print("<a>"+rs.getString("title")+"</a>");
		out.print("<p>"+rs.getString("content")+"</p>");
	}
	
	conn.close();
}
catch(Exception e){
	
}
%>
			</div>
			
			<hr color="#999999">
			
			<div class="news-container">
				<div class="n-game-logo">
					<center><img src="images/logo-mu.png"></center>
				</div>
				<p style="color:#99cccc; font-size:28px;">
					Lord Of Mu Server Informations!<br>
					<span style="color:#999999; font-size:16px;">May 4, 2017 - 03:22:00</span>
				</p>
				<p>
					<center><img src="images/faronniamu_3.jpg" width="620"></center>
				</p>
				<p>
					We are using Premium MuEngine files which is the most stable and recommended server files in the market. We took the time doing the best configuration to give our players the best Gameplay and of course the best experience like the original Mu before.
				</p>
				<p>
					Our Client files is equipped with an Anti-Cheat by NSEngine & MuGuard with Server side protection to block not only the currently used hacks but also other still unknown from forums. We also included a Client Launcher with Auto-updates to lessen the problems on manual patches for the players.
				</p>
		
<%
try{

	Class.forName(driver).newInstance();
	conn = DriverManager.getConnection(url + dbName, userName, passwords);
	Statement st = conn.createStatement();
			
	ResultSet rs = st.executeQuery("SELECT * FROM news_tbl WHERE topic='mu'");
	
	while(rs.next()){
		out.print("<a>"+rs.getString("title")+"</a>");
		out.print("<p>"+rs.getString("content")+"</p>");
	}
	
	conn.close();
}
catch(Exception e){
	
}
%>
			</div>
			
			
			<div style="text-align:center; background: #999999;">
				<p style="color: black; text-align:center;">Powered by:</p>
				<div class="display-inline-logo">
					<img src="images/steam-logo.png" width="200">
					<br>
				</div>
				<div class="display-inline-logo">
					<img src="images/valve-logo.png" width="100">
					<br>
					<br>
					<br>
					<br>
				</div>
				<div class="display-inline-logo">
					<img src="images/garena-logo.png" width="130">
					<br>
					<br>
					<br>
					<br>
				</div>
				<div class="display-inline-logo">
					<img src="images/riot-logo.png" width="100">
					<br>
					<br>
					<br>
				</div>
			</div>
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
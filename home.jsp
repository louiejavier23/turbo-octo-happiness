<%@page import="java.sql.*"%>
<%@include file="dbConnection.jsp"%>

<!DOCTYPE html>

<html>

<%
session.setAttribute("kulangGcoin","false");
%>

<head>

	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/home-css.css">
	
	<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css">
	
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/panel-games.js"></script>
	<script src="js/index-navigation.js"></script>
</head>
<!--
<%

	String uname="",email="",uid="";
	
	Class.forName(driver).newInstance();
	conn = DriverManager.getConnection(url + dbName, userName, passwords);
	
	try{
		if(session.getAttribute("user")==null || session.getAttribute("user")==""){
			//out.print("<script>alert('Login ka muna');</script>");
			response.sendRedirect("login.jsp");
		}
		
		else{
			Statement st = conn.createStatement();
			
			ResultSet rs = st.executeQuery("SELECT * FROM accounts_tbl WHERE user_id='"+session.getAttribute("user")+"'");
			while(rs.next()){
				uid = (String)session.getAttribute("user");
				uname = rs.getString("username");
				email = rs.getString("email");
			}
		}
	}
	catch(Exception e){
		//e.printStackTrace
	}
%>
-->
<body>

	<nav>
		<div class="web-logo">
			<img src="images/gz_logo.png" height="140"/>
		</div>
		<div class="maximize-nav">
			<ul style="font-size: 18px;">
				<li><a href="home.jsp" id="nav-home">HOME</a></li>
				<li>|</li>
				<li><a href="store.jsp" id="nav-about">STORE</a></li>
				<li>|</li>
				<li><a href="forum.jsp" id="nav-forum">FORUM</a></li>
				<li>|</li>
				<li><a href="profile.jsp" id="nav-myaccount"><i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 24px;"></i></a></li>
			</ul>
		</div>
		<div class="minimize-nav">
			<button id="btn-toggle-nav"></button>
			<div class="dropdown-content">
				<ul>
					<li><a href="">Home</a></li>
					<li><a href="">Store</a></li>
					<li><a href="">Forum</a></li>
					<li><a href=""><i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 24px;"></i></a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- HOOOOMMEEEEE! -->
	
	<div class="home-container">
		<div class="video-container">
			<div class="video-section">
				<video controls autoplay>
					<source src="images/dota2/video2.mp4" type="video/mp4">
				</video>
			</div>
			<div class="video-list">
				<div class="video-inline">
					<img src="images/dota2/maxresdefault.jpg">
					<p>Video 1</p>
				</div>
				<div class="video-inline">
					<img src="images/dota2/maxresdefault.jpg">
					<p>Video 2</p>
				</div>
				<div class="video-inline">
					<img src="images/dota2/maxresdefault.jpg">
					<p>Video 3</p>
				</div>
				<div class="video-inline">
					<img src="images/dota2/maxresdefault.jpg">
					<p>Video 4</p>
				</div>
			</div>
		</div>
		
		
		<div class="section-one">
			<div class="left-section inline-display">
				<ul>
					<li id="dota-panel"><img src="images/dota-2-logo.png" width="40" height="40" /></li>
					<li id="lol-panel"><img src="images/logo-lol.png" width="70" height="50" /></li>
					<li id="lom-panel"><img src="images/logo-mu.png" width="90" height="40" /></li>
				</ul>
				<div class="gif-section">
					<img src="images/gif/giphy-downsized-large.gif" width="240"/>
					<img src="images/gif/giphy.gif" width="240"/>
					<img src="images/gif/giphy1.gif" width="240"/>
				</div>
			</div>
			<div class="right-section inline-display" id="ee">
				<div class="dota-section">
					<p>
						<strong style="font-size:24px;">Dota 2</strong> is a free-to-play multiplayer online battle arena (MOBA) video game developed and published by Valve Corporation. The game is the stand-alone sequel to Defense of the Ancients (DotA), which was a community-created mod for Blizzard Entertainment's Warcraft III: Reign of Chaos and its expansion pack, The Frozen Throne. Dota 2 is played in matches between two teams of five players, with each team occupying and defending their own separate base on the map. Each of the ten players independently controls a powerful character, known as a "hero", who all have unique abilities and differing styles of play. During a match, the player collects experience points and items for their heroes in order to successfully fight the opposing team's heroes, who are doing the same. A team wins by being the first to destroy a large structure located in the opposing team's base, called the "Ancient", which is guarded by defensive towers.
					</p>
					<p>
						Dota 2 is a multiplayer online battle arena (MOBA) video game in which two teams of five players compete to collectively destroy a large structure defended by the opposing team known as the "Ancient", whilst defending their own. As in Defense of the Ancients, the game is controlled using standard real-time strategy controls, and is presented on a single map in a three-dimensional isometric perspective. Ten players each control one of the game's 113 playable characters, known as "heroes", with each having their own design, benefits, and weaknesses. Heroes are divided into two primary roles, known as the "carry" and "support". Carries, which are also called "cores", begin each match as weak and vulnerable, but are able to become more powerful later in the game, thus becoming able to "carry" their team to victory. Supports generally lack abilities that deal heavy damage, instead having ones with more functionality and utility that provide assistance for their carries. Players select their hero during a pre-game drafting phase, where they can also discuss potential strategies and hero matchups with their teammates. Multiple game types in the game exist, which mainly alter the way hero selection is handled; such as "All Pick", which offer no restrictions on hero selection, "All Random", which randomly assigns a hero for each player, and "Captain's Mode", where a single player on each team selects heroes for their entire team, which is primarily used for professional play.
					</p>
				</div>
				<div class="lol-section">
					<p>
						<strong style="font-size:24px;">League of Legends</strong> (abbreviated LoL) is a multiplayer online battle arena video game developed and published by Riot Games for Microsoft Windows and macOS. The game follows a freemium model and is supported by microtransactions, and was inspired by the Warcraft III: The Frozen Throne mod, Defense of the Ancients.
					</p>
					<p>
						In League of Legends, players assume the role of an unseen "summoner" that controls a "champion" with unique abilities and battle against a team of other players or computer-controlled champions. The goal is usually to destroy the opposing team's "nexus", a structure which lies at the heart of a base protected by defensive structures, although other distinct game modes exist as well. Each League of Legends match is discrete, with all champions starting off fairly weak but increasing in strength by accumulating items and experience over the course of the game. The champions and setting blend a variety of elements, including high fantasy, steampunk, folklore, and Lovecraftian horror.
					</p>
					<p>
						League of Legends has an active and widespread competitive scene. In North America and Europe, Riot Games organizes the League Championship Series (LCS), located in Los Angeles and Berlin respectively, which consists of 10 professional teams in each continent. Similar regional competitions exist in China (LPL), South Korea (LCK), Taiwan (LMS), Southeast Asia (GPL), and various other regions. These regional competitions culminate with the annual World Championship. The 2016 World Championship had 43 million unique viewers and a total prize pool of over 6 million USD.
					</p>
				</div>
				<div class="lom-section">
					<p>
						<strong style="font-size:24px;">MU Online</strong> was created in December 2001 by the Korean gaming company Webzen. Like most MMORPGs, players have to create a character among eight different classes and to set their foot on the MU Continent. In order to gain experience and thus to level up, a players needs to fight monsters (mobs). MU is populated by a large variety of monsters, from simple ones like goblins and golems, to frightening ones such as the Gorgon, Kundun or Selupan. Each monster-type is unique, has different spawn points, and drops different items. Outside of a duel, PvP fighting is possible but discouraged. When one player attacks another, a self-defense system is activated, in which the attacked player may kill the aggressor within a time limit. Self-defense is also activated when a player attacks an Elf's summoned creature. Outlaws have disadvantages during game play, depending on their Outlaw level.
					</p>
					<p>
						At the start of the game the players can choose between three different character classes - Dark Wizard, Dark Knight, Elf. Players can unlock a Magic Gladiator and a Dark Lord as they progress. Also, character cards can be purchased in order to use three more character classes -Summoner, Rage Fighter and Grow Lancer. Each class has its specific powers and items. As characters level up and complete quests, they can transform themselves into stronger classes. Each progressive class change grants, gain access to new spells, skills, weapons and wings as well as an associated change in appearance.
					</p>
					<p>
						Like most RPG games, characters in MU can use many different kinds of magic and special abilities. Each character has its own set of spells and some weapons may be enchanted in order to provide the character with a specific spell. Casting a spell costs MP (mana, or magic point) and sometimes AG or stamina.
					</p>
					<p>
						Mu Online has a built-in chat system that allows all visible players to easily communicate via text. Users can add custom players to their Friends List in-order to make it easy to keep in contact with one-another.
					</p>
					<p>
						Players can choose to team up with other players in a "party", in which players cooperate against enemy monsters to share exp and loot.
					</p>
				</div>
			</div>
		</div>
		
		
		<div style="text-align:center; background-color: #999999;">
				<p style="color: gold; text-align:center; padding-top:16px;">Powered by:</p>
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
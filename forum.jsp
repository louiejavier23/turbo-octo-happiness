<%@page import="java.sql.*"%>
<%@include file="dbConnection.jsp"%>

<!DOCTYPE html>

<html>

<head>

	<title>GAMEZONE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/style-forum.css">
	
	<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css">
	
	<script src="js/jquery-2.1.4.min.js"></script>
	<!--<script src="js/forum-mini-nav.js"></script>-->
<%
	String idname = "";
	
%>
	
</head>
<%
	try{
		if(session.getAttribute("user")==null || session.getAttribute("user")==""){
			//out.print("<script>alert('Login ka muna');</script>");
			response.sendRedirect("login.jsp");
		}
	}
	catch(Exception e){
		//e.printStackTrace
	}
%>
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
	
	<div class="main-container">
	
		<div class="color-gold">
			Forum
		</div>
		
		<div class="store-nav-panel">
			<ul>
				<li id="f-dota-btn">DOTA 2</li>
				<li id="f-lol-btn">LOL</li>
				<li id="f-mu-btn">MU Online</li>
			</ul>
		</div>
		

<!-- -----------------------------Start --------------------------------   -->				
		<div id="forum-dota" class="display-block width-laki" style="margin-top:-16px;">
		<div id="section">
			
			
	<%
			
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url + dbName, userName, passwords);
			Statement st = conn.createStatement();
			
			ResultSet rs = st.executeQuery("SELECT * FROM forum_talk ORDER BY id ASC");
			
			int cnt = 0;
			while(rs.next()){
			%>
				<div class="container">
				<img src="images/01.jpg">
				<p>	<text> <br> <%= rs.getString("user")%>:</text> 
					<%= rs.getString("message")%> </p> 
				</div>
			<%
			}
			
			conn.close();
		}
		catch (Exception e) {
			//e.printStackTrace
			out.print(e);
		}
		
	%>
		
			
			</div>
			
			<div class="form">
				<form action="forum-insert.jsp" method="post">
					<p>Write your comment here...</p>
					<input type="hidden" name="topic" value="dota"/>
					<textarea name="textarea-message" rows="4" cols="50">
					</textarea>
					<button> SUBMIT </button>
				</form>
			</div>
		</div>
			
<!-- -----------------------------End--------------------------------   -->			
			
		<div class="side-section display-block">
			<div class="gallery">
				  <a target="_blank" href="images/view/1.jpg">
					<img src="images/view/1.jpg" width="300" height="200">
				  </a>
			</div>
			<div class="gallery">
				  <a target="_blank" href="images/view/2.jpg">
					<img src="images/view/2.jpg" width="300" height="200">
				  </a>
			</div> <br>
			<div class="gallery">
				  <a target="_blank" href="images/view/3.jpg">
					<img src="images/view/3.jpg" width="300" height="200">
				  </a>
			</div>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br><br><br><br>
			
			
			
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
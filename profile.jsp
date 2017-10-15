<%@page import="java.sql.*"%>
<%@include file="dbConnection.jsp"%>
<!DOCTYPE html>

<%
	if(session.getAttribute("user")==null || session.getAttribute("user")==""){
		//out.print("<script>alert('Login ka muna');</script>");
		response.sendRedirect("login.jsp");
	}
%>

<html>

<head>

	<title>GAMEZONE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<!--<link rel="stylesheet" type="text/css" href="css/style-store.css">-->
	<link rel="stylesheet" type="text/css" href="css/profile-css.css">
	
	<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css">
	
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/hero-category.js"></script>
	<script src="js/index-navigation.js"></script>
	<script>
	
	$(document).ready(function(){
		$("#buy-gcoin").click(function(){
			$("#id01").css("display","block");
		});
	});
	
	</script>
	
</head>
<%
	String uname="",email="",uid="",gcoin="";
	
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
				gcoin = rs.getString("gcoin");
			}
		}
	}
	catch(Exception e){
		//e.printStackTrace
	}
%>
<body>
	<a href="logout.jsp"  id="logout-btn"><button class="buttonout" >Log-out</button></a>

	<nav>
		<div class="web-logo">
			<img src="images/gz_logo.png" height="140"/>
		</div>
		<div class="maximize-nav">
			<ul>
				<li><a href="home.jsp" id="nav-home">HOME</a></li>
				<li>|</li>
				<li><a href="store.jsp" id="nav-about">STORE</a></li>
				<li>|</li>
				<li><a href="forum.jsp" id="nav-forum">FORUM</a></li>
				<li>|</li>
				<li><a href="profile.jsp"><i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 24px;"></i></a></li>
			</ul>
		</div>
		<div class="minimize-nav">
			<button id="btn-toggle-nav"><i class="fa fa-bars" aria-hidden="true" style="font-size: 18px;"></i></button>
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
	
	<div class="profile-main">
		<div class="profile-container">
		<div class="black">
			<p class="goldie">User Profile</p>
		</div>
			<div class="image-part p-inline-display">
				<img src="images/lol/Best LoL skins Arcade Ahri.jpg">
			</div>
			<div class="info-part p-inline-display">
					<p><strong>User ID:</strong></p>
					<p><strong>Username:</strong></p>
					<p><strong>Email:</strong></p>
					<p><strong>Gcoin:</strong></p>
					<br>
			</div>
			<div class="info-part2 p-inline-display">
				<p><%=uid%></p>
				<p><%=uname%></p>
				<p><%=email%></p>
				<p><%=gcoin%> Gcoin &nbsp; <span id="buy-gcoin">Buy Gcoin</span></p>
				<br>
			</div>
				<p class="item">
					MY ITEMS
				</p>
					
				<div class="io">
					
<%
	try{
		Statement st1 = conn.createStatement();
			
		ResultSet rs = st1.executeQuery("SELECT * FROM user_items_tbl WHERE user_id='"+session.getAttribute("user")+"' ORDER BY id ASC");
		while(rs.next()){
%>
					<div class="p-inline-display middle-p">
						<img src="<%=rs.getString("item_dir")%>">
						<p><%=rs.getString("item_name")%></p>
						<p>Qty: <%=rs.getString("item_qty")%></p>
					</div>
<%
		}
	}
	catch(Exception e){
		
	}
%>
				</div>
				
		</div>
		
		<div class="ads-container">
			<img src="images/gif/giphy-downsized-large.gif" width="240"/> <br>
			<img src="images/gif/giphy.gif" width="240"/> <br>
			<img src="images/gif/giphy1.gif" width="240"/> <br>
		</div>
	</div>
	
	
	<div class="footer" style="margin-top:8px;">
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
	
	
	<!-- modaaaaaaaaaaaaaaaaaaal buy gcoiiiiiiiiiiiiiiiiiin! -->
	
	
		
	<div id="id01" class="modal">
	  
	  <form class="modal-content animate" action="addGcoin.jsp" method="post">
		

		<div class="container">
		
			<p>Enter Gcoin Amount</p>
			<input type="number" min="0" max="1000" name="gcoin-field" placeholder="Enter amount" required/>
			<button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Close</button>
		  
			<span class="psw"><button>SUBMIT</button></span>
		</div>

	  </form>
	  
	</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

	
</body>

<%conn.close();%>

</html>
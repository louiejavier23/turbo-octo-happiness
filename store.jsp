<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>

<html>

<head>

	<title>GAMEZONE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/style-store.css">
	
	<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css">
	
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/hero-category.js"></script>
	
	<script>
		$(document).ready(function(){
			$("#cart-btn").click(function(){
				$("#id01").css("display","block");
			});
		});
	</script>
</head>
<%!int grandtotal;%>
<%

	
	try{
		if(session.getAttribute("user")==null || session.getAttribute("user")==""){
			response.sendRedirect("login.jsp");
		}
	}
	catch(Exception e){
		//e.printStackTrace
	}
	
	/*
	List<String> pname = new ArrayList<String>();
	List<String> pqty = new ArrayList<String>();
	List<String> pimg = new ArrayList<String>();
	
	session.setAttribute("pname",pname);
	session.setAttribute("pqty",pqty);
	session.setAttribute("pimg",pimg);
	*/
	
	String logger = String.valueOf(session.getAttribute("kulangGcoin"));
	if(logger.equalsIgnoreCase("true")){
		out.print("<script>alert('Insufficient GCoin!');</script>");
		session.setAttribute("kulangGcoin","false");
	}
%>
<body>

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
					<li><a href="">Register</a></li>
					<li><a href=""><i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 24px;"></i></a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	
	<div class="item-container">
	
		<div class="color-gold">
			Store
			
			<div class="shopping-cart">
				<a href="cancel-cart.jsp" style="color:gold;"><i class="fa fa-ban" aria-hidden="true" style="font-size:32px;margin-right:32px;"></i></a>
				<i id="cart-btn" class="fa fa-shopping-cart" aria-hidden="true" style="font-size:32px;margin-right:32px;"></i>
			</div>
		</div>
		
		<div class="store-nav-panel">
			<ul>
				<li id="mininav-dota">DOTA 2</li>
				<li id="mininav-lol">LOL</li>
				<li id="mininav-mu">MU Online</li>
			</ul>
		</div>
		
<!------------------------------- Dota Products ------------------------------------->
		
		<div class="product-list" id="dota-products">
		
		<div class="select-cat">
			<span>Category:</span>
			<select id="select-cat" name="items">
				<option>Agility</option>
				<option>Strength</option>
				<option>Intelligence</option>
			</select>
			<button id="btn-category">Search</button>
		</div>
		
			<div class="agility-hero">
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/AG_antimage.png">
						<p>Anti-Mage</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Anti-Mage"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/AG_antimage.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/AG_drowranger.png">
						<p>Drow Ranger</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Drow Ranger"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/AG_drowranger.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/AG_juggernaut.png">
						<p>Juggernaut</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Juggernaut"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/AG_juggernaut.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/AG_morphling.png">
						<p>Morphling</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Morphling"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/AG_morphling.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/AG_mirana.png">
						<p>Mirana</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Mirana"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/AG_mirana.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/AG_phantomlancer.png">
						<p>Phantom Lancer</p>
						<p class="golde">70 GCoin</p>
						<input type="hidden" name="name" value="Phantom Lancer"/>
						<input type="hidden" name="amount" value="70"/>
						<input type="hidden" name="img" value="images/dota2/AG_phantomlancer.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/AG_riki.png">
						<p>Riki</p>
						<p class="golde">65 GCoin</p>
						<input type="hidden" name="name" value="Riki"/>
						<input type="hidden" name="amount" value="65"/>
						<input type="hidden" name="img" value="images/dota2/AG_riki.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/AG_sniper.png">
						<p>Sniper</p>
						<p class="golde">70 GCoin</p>
						<input type="hidden" name="name" value="Sniper"/>
						<input type="hidden" name="amount" value="70"/>
						<input type="hidden" name="img" value="images/dota2/AG_sniper.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/AG_templarassassin.png">
						<p>Templar Assassin</p>
						<p class="golde">75 GCoin</p>
						<input type="hidden" name="name" value="Templar Assassin"/>
						<input type="hidden" name="amount" value="75"/>
						<input type="hidden" name="img" value="images/dota2/AG_templarassassin.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/AG_vengefulspirit.png">
						<p>Vengeful Spirit</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Vengeful Spirit"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/AG_vengefulspirit.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
			</div>
			
			<div class="int-hero">
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/INT_crystalmaiden.png">
						<p>Crystal Maiden</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Crystal Maiden"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/INT_crystalmaiden.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/INT_enchantress.png">
						<p>Enchantress</p>
						<p class="golde">65 GCoin</p>
						<input type="hidden" name="name" value="Enchantress"/>
						<input type="hidden" name="amount" value="65"/>
						<input type="hidden" name="img" value="images/dota2/INT_enchantress.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/INT_furion.png">
						<p>Furion</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Furion"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/INT_furion.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/INT_lina.png">
						<p>Lina</p>
						<p class="golde">70 GCoin</p>
						<input type="hidden" name="name" value="Lina"/>
						<input type="hidden" name="amount" value="70"/>
						<input type="hidden" name="img" value="images/dota2/INT_lina.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/INT_puck.png">
						<p>Puck</p>
						<p class="golde">70 GCoin</p>
						<input type="hidden" name="name" value="Puck"/>
						<input type="hidden" name="amount" value="70"/>
						<input type="hidden" name="img" value="images/dota2/INT_puck.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/INT_shadowshaman.png">
						<p>Shadow Shaman</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Shadow Shaman"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/INT_shadowshaman.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/INT_stormspirit.png">
						<p>Storm Spirit</p>
						<p class="golde">70 GCoin</p>
						<input type="hidden" name="name" value="Storm Spirit"/>
						<input type="hidden" name="amount" value="70"/>
						<input type="hidden" name="img" value="images/dota2/INT_stormspirit.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/INT_windrunner.png">
						<p>Windranger</p>
						<p class="golde">65 GCoin</p>
						<input type="hidden" name="name" value="Windranger"/>
						<input type="hidden" name="amount" value="65"/>
						<input type="hidden" name="img" value="images/dota2/INT_windrunner.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/INT_zuus.png">
						<p>Zeus</p>
						<p class="golde">65 GCoin</p>
						<input type="hidden" name="name" value="Zeus"/>
						<input type="hidden" name="amount" value="65"/>
						<input type="hidden" name="img" value="images/dota2/INT_zuus.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
			</div>
			<!-- strength -->
			<div class="str-hero">
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/ST_alchemist.png">
						<p>Alchemist</p>
						<p class="golde">70 GCoin</p>
						<input type="hidden" name="name" value="Alchemist"/>
						<input type="hidden" name="amount" value="70"/>
						<input type="hidden" name="img" value="images/dota2/ST_alchemist.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/ST_beastmaster.png">
						<p>Beast Master</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Beast Master"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/ST_beastmaster.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/ST_bristleback.png">
						<p>Bristleback</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Bristleback"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/ST_beastmaster.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/ST_earthshaker.png">
						<p>Earthshaker</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Earthshaker"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/ST_earthshaker.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/ST_earthspirit.png">
						<p>Earth Spirit</p>
						<p class="golde">65 GCoin</p>
						<input type="hidden" name="name" value="Earth Spirit"/>
						<input type="hidden" name="amount" value="65"/>
						<input type="hidden" name="img" value="images/dota2/ST_earthspirit.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/ST_elder.png">
						<p>Elder Titan</p>
						<p class="golde">65 GCoin</p>
						<input type="hidden" name="name" value="Elder Titan"/>
						<input type="hidden" name="amount" value="65"/>
						<input type="hidden" name="img" value="images/dota2/ST_elder.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/ST_huskar.png">
						<p>Huskar</p>
						<p class="golde">60 GCoin</p>
						<input type="hidden" name="name" value="Huskar"/>
						<input type="hidden" name="amount" value="60"/>
						<input type="hidden" name="img" value="images/dota2/ST_huskar.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/ST_kunkka.png">
						<p>Kunkka</p>
						<p class="golde">65 GCoin</p>
						<input type="hidden" name="name" value="Kunkka"/>
						<input type="hidden" name="amount" value="65"/>
						<input type="hidden" name="img" value="images/dota2/ST_kunkka.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/ST_legio.png">
						<p>Legion Commander</p>
						<p class="golde">70 GCoin</p>
						<input type="hidden" name="name" value="Legion Commander"/>
						<input type="hidden" name="amount" value="70"/>
						<input type="hidden" name="img" value="images/dota2/ST_legio.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/dota2/ST_omniknight.png">
						<p>Omniknight</p>
						<p class="golde">65 GCoin</p>
						<input type="hidden" name="name" value="Omniknight"/>
						<input type="hidden" name="amount" value="65"/>
						<input type="hidden" name="img" value="images/dota2/ST_omniknight.png"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
			</div>
			
		</div>
		
<!------------------------------- MU Products ------------------------------------->
		
		<div class="product-list" id="mu-products">
			<div class="axe">
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/A-battleaxe.jpg">
						<p>Battle Axe</p>
						<p class="golde">20 GCoin</p>
						<input type="hidden" name="name" value="Battle Axe"/>
						<input type="hidden" name="amount" value="20"/>
						<input type="hidden" name="img" value="images/items/A-battleaxe.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/A-chaosaxe.jpg">
						<p>Chaos Axe</p>
						<p class="golde">20 GCoin</p>
						<input type="hidden" name="name" value="Chaos Axe"/>
						<input type="hidden" name="amount" value="20"/>
						<input type="hidden" name="img" value="images/items/A-chaosaxe.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/A-cresentaxe.jpg">
						<p>Cresent Axe</p>
						<p class="golde">25 GCoin</p>
						<input type="hidden" name="name" value="Cresent Axe"/>
						<input type="hidden" name="amount" value="25"/>
						<input type="hidden" name="img" value="images/items/A-cresentaxe.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/A-doubleaxe.jpg">
						<p>Double Axe</p>
						<p class="golde">25 GCoin</p>
						<input type="hidden" name="name" value="Double Axe"/>
						<input type="hidden" name="amount" value="25"/>
						<input type="hidden" name="img" value="images/items/A-doubleaxe.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/A-elevenaxe.jpg">
						<p>Eleven Axe</p>
						<p class="golde">25 GCoin</p>
						<input type="hidden" name="name" value="Eleven Axe"/>
						<input type="hidden" name="amount" value="25"/>
						<input type="hidden" name="img" value="images/items/A-elevenaxe.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/A-handaxe.jpg">
						<p>Hand Axe</p>
						<p class="golde">30 GCoin</p>
						<input type="hidden" name="name" value="Hand Axe"/>
						<input type="hidden" name="amount" value="30"/>
						<input type="hidden" name="img" value="images/items/A-handaxe.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/A-larkanaxe.jpg">
						<p>Larkan Axe</p>
						<p class="golde">30 GCoin</p>
						<input type="hidden" name="name" value="Larkan Axe"/>
						<input type="hidden" name="amount" value="30"/>
						<input type="hidden" name="img" value="images/items/A-larkanaxe.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/A-nikkeaaxe.jpg">
						<p>Nikkea Axe</p>
						<p class="golde">30 GCoin</p>
						<input type="hidden" name="name" value="Nikkea Axe"/>
						<input type="hidden" name="amount" value="30"/>
						<input type="hidden" name="img" value="images/items/A-nikkeaaxe.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/A-tomahawk.jpg">
						<p>Tomahawk</p>
						<p class="golde">35 GCoin</p>
						<input type="hidden" name="name" value="Tomahawk"/>
						<input type="hidden" name="amount" value="35"/>
						<input type="hidden" name="img" value="images/items/A-tomahawk.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/B-aquagoldencrossbow.jpg">
						<p>Aqua Golden Bow</p>
						<p class="golde">35 GCoin</p>
						<input type="hidden" name="name" value="Aqua Golden Bow"/>
						<input type="hidden" name="amount" value="35"/>
						<input type="hidden" name="img" value="images/items/B-aquagoldencrossbow.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/B-battlebow.jpg">
						<p>Battle Bow</p>
						<p class="golde">35 GCoin</p>
						<input type="hidden" name="name" value="Battle Bow"/>
						<input type="hidden" name="amount" value="35"/>
						<input type="hidden" name="img" value="images/items/B-battlebow.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/B-crossbow.jpg">
						<p>Cross Bow</p>
						<p class="golde">40 GCoin</p>
						<input type="hidden" name="name" value="Cross Bow"/>
						<input type="hidden" name="amount" value="40"/>
						<input type="hidden" name="img" value="images/items/B-crossbow.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/items/B-darkstingerbow.jpg">
						<p>Dark Stinger Bow</p>
						<p class="golde">40 GCoin</p>
						<input type="hidden" name="name" value="Dark Stinger Bow"/>
						<input type="hidden" name="amount" value="40"/>
						<input type="hidden" name="img" value="images/items/B-darkstingerbow.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
			</div>
			
		</div>
		
<!------------------------------- LOL Products ------------------------------------->
		
		<div class="product-list" id="lol-products">
			<div>
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/aether wing kayle is badass.jpg">
						<p>Aether Wing Kyle</p>
						<p class="golde">120 GCoin</p>
						<input type="hidden" name="name" value="Aether Wing Kyle"/>
						<input type="hidden" name="amount" value="120"/>
						<input type="hidden" name="img" value="images/lol/aether wing kayle is badass.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/Best LoL skins Arcade Ahri.jpg">
						<p>Arcade Ahri</p>
						<p class="golde">120 GCoin</p>
						<input type="hidden" name="name" value="Arcade Ahri"/>
						<input type="hidden" name="amount" value="120"/>
						<input type="hidden" name="img" value="images/lol/Best LoL skins Arcade Ahri.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/Best LoL skins Bear Cavalry Sejuani.jpg">
						<p>Cavalry Sejuani</p>
						<p class="golde">150 GCoin</p>
						<input type="hidden" name="name" value="Cavalry Sejuani"/>
						<input type="hidden" name="amount" value="150"/>
						<input type="hidden" name="img" value="images/lol/Best LoL skins Bear Cavalry Sejuani.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/Best LoL skins Cosmic Blade Master Yi.jpg">
						<p>Cosmic Blade Yi</p>
						<p class="golde">150 GCoin</p>
						<input type="hidden" name="name" value="Cosmic Blade Yi"/>
						<input type="hidden" name="amount" value="150"/>
						<input type="hidden" name="img" value="images/lol/Best LoL skins Cosmic Blade Master Yi.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/Best LoL skins Dreadnova Darius.jpg">
						<p>Dreadnova Darius</p>
						<p class="golde">150 GCoin</p>
						<input type="hidden" name="name" value="Dreadnova Darius"/>
						<input type="hidden" name="amount" value="150"/>
						<input type="hidden" name="img" value="images/lol/Best LoL skins Dreadnova Darius.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/Best LoL skins Elementalist Lux.jpg">
						<p>Elementalist Lux</p>
						<p class="golde">200 GCoin</p>
						<input type="hidden" name="name" value="Elementalist Lux"/>
						<input type="hidden" name="amount" value="200"/>
						<input type="hidden" name="img" value="images/lol/Best LoL skins Elementalist Lux.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/Best LoL skins Moo Moo Alistar.jpg">
						<p>Moo Moo Alistar</p>
						<p class="golde">200 GCoin</p>
						<input type="hidden" name="name" value="Moo Moo Alistar"/>
						<input type="hidden" name="amount" value="200"/>
						<input type="hidden" name="img" value="images/lol/Best LoL skins Moo Moo Alistar.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/Best LoL skins Pulsefire Caitlyn.jpg">
						<p>Pulsefire Caitlyn</p>
						<p class="golde">200 GCoin</p>
						<input type="hidden" name="name" value="Pulsefire Caitlyn"/>
						<input type="hidden" name="amount" value="200"/>
						<input type="hidden" name="img" value="images/lol/Best LoL skins Pulsefire Caitlyn.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/better reverse annie.jpg">
						<p>Reverse Annie</p>
						<p class="golde">200 GCoin</p>
						<input type="hidden" name="name" value="Reverse Annie"/>
						<input type="hidden" name="amount" value="200"/>
						<input type="hidden" name="img" value="images/lol/better reverse annie.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/definitely not blitzcrank is the best.jpg">
						<p>Not Blitzcrank</p>
						<p class="golde">250 GCoin</p>
						<input type="hidden" name="name" value="Not Blitzcrank"/>
						<input type="hidden" name="amount" value="250"/>
						<input type="hidden" name="img" value="images/lol/definitely not blitzcrank is the best.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/every sona skin.jpg">
						<p>DJ Sona</p>
						<p class="golde">250 GCoin</p>
						<input type="hidden" name="name" value="DJ Sona"/>
						<input type="hidden" name="amount" value="250"/>
						<input type="hidden" name="img" value="images/lol/every sona skin.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/mecha malphite is rad.jpg">
						<p>Mecha Malphite</p>
						<p class="golde">250 GCoin</p>
						<input type="hidden" name="name" value="Mecha Malphite"/>
						<input type="hidden" name="amount" value="250"/>
						<input type="hidden" name="img" value="images/lol/mecha malphite is rad.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/pool party renekton.jpg">
						<p>Party Renekton</p>
						<p class="golde">500 GCoin</p>
						<input type="hidden" name="name" value="Pool Party Renekton"/>
						<input type="hidden" name="amount" value="500"/>
						<input type="hidden" name="img" value="images/lol/pool party renekton.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/projectyasuo.jpg">
						<p>PROJECT Yasuo</p>
						<p class="golde">500 GCoin</p>
						<input type="hidden" name="name" value="PROJECT Yasuo"/>
						<input type="hidden" name="amount" value="500"/>
						<input type="hidden" name="img" value="images/lol/projectyasuo.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
				<div class="display-inline-item">
					<form action="addtocart.jsp" method="post">
						<img src="images/lol/urf corki please.jpg">
						<p>Urf Rider Corki</p>
						<p class="golde">500 GCoin</p>
						<input type="hidden" name="name" value="Urf Rider Corki"/>
						<input type="hidden" name="amount" value="500"/>
						<input type="hidden" name="img" value="images/lol/urf corki please.jpg"/>
						<input type="number" min="0" name="qty" placeholder="Enter Qty"/>
						<button>Buy</button>
					</form>
				</div>
				
			</div>
			
		</div>
		
		<!-- End -->
		
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
	
	<!-- MODAL para sa CART hahahahahahahahahahahaha -->
	
		
	<div id="id01" class="modal">
	  
	  <form class="modal-content animate">
		<div class="imgcontainer">
		<i id="cart-btn" class="fa fa-shopping-cart" aria-hidden="true" style="font-size:32px;"></i>
		  <span onclick="document.getElementById('id01').style.display='none'" style="margin-top:-24px;margin-right:-16px;" class="close" title="Close Modal">&times;</span>
		  
		</div>

		<div class="container">
			
			<table>
				<tr>
					<th>Image</th>
					<th>Description</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Sub-Total</th>
				</tr>
				<%
				try{
					
					List<String> newPName = (List<String>)session.getAttribute("pname");
					List<String> newPQty = (List<String>)session.getAttribute("pqty");
					List<String> newPImg = (List<String>)session.getAttribute("pimg");
					List<String> newPAmt = (List<String>)session.getAttribute("pamt");
					
					grandtotal=0;
					int subtot=0;
					
					for(int a=0;a<newPName.size();a++){
						
						subtot = Integer.parseInt(newPAmt.get(a)) * Integer.parseInt(newPQty.get(a));
						
						out.print("<tr><td><img src='"+newPImg.get(a)+"'</td>");
						out.print("<td>"+newPName.get(a)+"</td>");
						out.print("<td>"+newPQty.get(a)+"</td>");
						out.print("<td>"+newPAmt.get(a)+" GCoin</td>");
						out.print("<td>"+subtot+" GCoin</td>");
						out.print("</tr>");
						grandtotal+=subtot;
					}
				}
				catch(Exception e){
					
				}
				%>
			</table>
			
		</div>

	  </form>
	  
		<div class="container" style="background-color:#2e2e2e;width:37%;margin:auto;padding:20px;border:1px solid #999999;">
		  <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Close</button>
		  <span class="gitnain golde">Grand Total:<%=grandtotal%> GCoin<span>
		  <span class="psw"><a href="check-out.jsp"><button>Check Out</button></a></span>
		</div>
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

</html>
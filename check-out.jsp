<%@page import="java.sql.*,java.util.*"%>
<%@include file="dbConnection.jsp"%>

<%

try{

	Class.forName(driver).newInstance();
	conn = DriverManager.getConnection(url + dbName, userName, passwords);
	
	int myGcoin = 0;
	Statement st1 = conn.createStatement();
			
	ResultSet rs = st1.executeQuery("SELECT * FROM accounts_tbl WHERE user_id='"+session.getAttribute("user")+"'");
	while(rs.next()){
		myGcoin = Integer.parseInt(rs.getString("gcoin"));
	}
		
	List<String> newPName = (List<String>)session.getAttribute("pname");
	List<String> newPQty = (List<String>)session.getAttribute("pqty");
	List<String> newPImg = (List<String>)session.getAttribute("pimg");
	List<String> newPAmt = (List<String>)session.getAttribute("pamt");
	
	
	int subtot=0,grandtot=0;
	for(int z=0;z<newPName.size();z++){
		subtot = Integer.parseInt(newPQty.get(z))*Integer.parseInt(newPAmt.get(z));
		grandtot+=subtot;
	}
	
	if(myGcoin>=grandtot){
		
		int subtractedGcoin = myGcoin - grandtot;
		
		Object uid = session.getAttribute("user");
		//int idu = Integer.parseInt(uid);
		
		for(int a=0;a<newPName.size();a++){
			
			String p_name = newPName.get(a);
			String p_qty = newPQty.get(a);
			String p_img = newPImg.get(a);
			String p_amt = newPAmt.get(a);
			
			Statement st = conn.createStatement();
			
			int i = st.executeUpdate("INSERT INTO user_items_tbl(user_id,item_name,item_qty,item_dir) VALUES ('"+uid+"','"+p_name+"','"+p_qty+"','"+p_img+"');");
			
			Statement state = conn.createStatement();
			
			int j = state.executeUpdate("UPDATE accounts_tbl SET  gcoin='"+subtractedGcoin+"' WHERE user_id='"+uid+"';");
			
		}
		
		conn.close();
		
		//out.print("Okay na! <a href='profile.jsp'>Dito ka punta</a>");
		response.sendRedirect("profile.jsp");
		
	}
	else{
		//out.print("kulang yung Gcoin mo be! <a href='store.jsp'>Dito ka</a>");
		session.setAttribute("kulangGcoin","true");
		response.sendRedirect("store.jsp");
	}
		
	newPName.clear();
	newPQty.clear();
	newPImg.clear();
	newPAmt.clear();
		
		
	session.setAttribute("pname",newPName);
	session.setAttribute("pqty",newPQty);
	session.setAttribute("pimg",newPImg);
	session.setAttribute("pamt",newPAmt);
		
}
catch(Exception e){
	out.print(e);
}		
%>
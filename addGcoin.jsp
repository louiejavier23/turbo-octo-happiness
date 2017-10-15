<%@page import="java.sql.*,java.util.*"%>
<%@include file="dbConnection.jsp"%>

<%
	try{
			
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url + dbName, userName, passwords);
		
		int myGcoin = 0,addedGcoin=0;
		Statement st1 = conn.createStatement();
				
		ResultSet rs = st1.executeQuery("SELECT * FROM accounts_tbl WHERE user_id='"+session.getAttribute("user")+"'");
		while(rs.next()){
			myGcoin = Integer.parseInt(rs.getString("gcoin"));
		}
			
		int gcoin_amount = Integer.parseInt(request.getParameter("gcoin-field"));
		addedGcoin = myGcoin + gcoin_amount;
		
		Statement st = conn.createStatement();
		
		int i = st.executeUpdate("UPDATE accounts_tbl SET gcoin='"+addedGcoin+"' WHERE user_id='"+session.getAttribute("user")+"';");
			
		Statement state = conn.createStatement();
		
		response.sendRedirect("profile.jsp");
			
	}
	catch(Exception e){
		//out.print(e);
	}
%>
<%@ page import="java.sql.*" %>
<%@include file="dbConnection.jsp"%>

<%
	
	String user = request.getParameter("uname"); 
	String pass = request.getParameter("password"); 
	String conPass = request.getParameter("confirmpass");
	String email = request.getParameter("email");
	
	try{
	
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url + dbName, userName, passwords);
		Statement st = conn.createStatement();
		
		int i = st.executeUpdate("INSERT INTO accounts_tbl(username,password,email) VALUES ('"+ user +"','"+ pass +"','"+ email +"')");
			
		response.sendRedirect("login.jsp");
		
		conn.close();
	}
	catch (Exception e) {
		//e.printStackTrace
		out.print(e);
	}
	

%>
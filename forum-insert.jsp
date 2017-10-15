<%@page import="java.sql.*"%>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@include file="dbConnection.jsp"%>

<%

	String message = request.getParameter("textarea-message");
	String topic = request.getParameter("topic");
	
	SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");
	Calendar now = Calendar.getInstance();
	
	int dayOfMonth = now.get(Calendar.DAY_OF_MONTH);
	int month = now.get(Calendar.MONTH) + 1;
	String dayOfMonthStr = ((dayOfMonth < 10) ? "0" : "") + month;
	String monthStr = ((month < 10) ? "0" : "") + month;
	String dateNow = String.valueOf(now.get(Calendar.YEAR))+"-"+dayOfMonthStr+"-"+monthStr;
	
	String uname="";
	
	Object idname = session.getAttribute("user");
	
	try{
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url + dbName, userName, passwords);

		Statement st = conn.createStatement();
			
		ResultSet rs = st.executeQuery("SELECT * FROM accounts_tbl WHERE user_id='"+session.getAttribute("user")+"'");
		while(rs.next()){
			uname = rs.getString("username");
		}
		
		Statement st2 = conn.createStatement();
		int i = st2.executeUpdate("INSERT INTO forum_talk(topic,user,message,date) VALUES ('"+topic+"','"+uname+"','"+ message +"','"+dateNow+"');");
			
		response.sendRedirect("forum.jsp");
		
		conn.close();
	}
	catch (Exception e) {
		//e.printStackTrace
		out.print(e);
	}
	
%>

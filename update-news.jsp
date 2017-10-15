<%@page import="java.sql.*"%>
<%@include file="dbConnection.jsp"%>

<%

	String content="",topic="",title="";
	
try{
	content = request.getParameter("comment-new");
	topic = request.getParameter("topic");
	title = request.getParameter("news-title");
	
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url + dbName, userName, passwords);

	Statement st = conn.createStatement();
	String queryString = "DELETE FROM news_tbl WHERE topic='"+topic+"'";
	
	int i = st.executeUpdate(queryString);
		
	Statement st3 = conn.createStatement();
	String queryString2 = "INSERT INTO news_tbl(topic,title,content) VALUES ('"+topic+"','"+title+"','"+content+"')";
	
	int j = st3.executeUpdate(queryString2);
		
	response.sendRedirect("newsupdate.jsp");
		
	conn.close();
	
}
catch(Exception e){
	//out.print(e);
	//out.print(content+topic+title);
}

%>
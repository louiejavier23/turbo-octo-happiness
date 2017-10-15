<%@page import="java.sql.*,java.util.*"%>

<%
	
	List<String> pname = (List<String>)session.getAttribute("pname");
	List<String> pqty = (List<String>)session.getAttribute("pqty");
	List<String> pimg = (List<String>)session.getAttribute("pimg");
	List<String> pamt = (List<String>)session.getAttribute("pamt");

	pname.clear();
	pqty.clear();
	pimg.clear();
	pamt.clear();
	
	session.setAttribute("pname",pname);
	session.setAttribute("pqty",pqty);
	session.setAttribute("pimg",pimg);
	session.setAttribute("pamt",pamt);
	
	response.sendRedirect("store.jsp");
%>
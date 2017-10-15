<%

	if(session.getAttribute("user")==null || session.getAttribute("user")==""){
		response.sendRedirect("login.jsp");
	}
	session.invalidate();
	response.sendRedirect("index.jsp");
%>
<%@page language="java" import="cmc.mario.interfaces.*"%>
<%@page errorPage="LoginErrorPage.jsp" %>
<html>
<head><title>Login Error Page</title>
</head>
<body>
<font face="verdana">
<%
	AccountUI acctU = new AccountUI();
	String uname = request.getParameter("Username");
	String password = request.getParameter("Password");

	int k = acctU.logOn(uname, password);
	if(k==0){
		session.setAttribute("ui", acctU );
		response.sendRedirect("Admin_Menu.jsp");
	}
	else if(k==1){
		session.setAttribute("ui", acctU );
		response.sendRedirect("User_menu.jsp");
	}

	else{
		out.println("Sorry! Login Unsuccessful! The reason probably is the username is incorrect");
	}
	%>
</font>
</body>
</html>
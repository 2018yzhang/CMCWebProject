<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<%@page errorPage="EditUserErrorPage.jsp" %>
<html>
<head><title>Login Error Page</title>
</head>
<body>
<font face="verdana">
<%
	Account a = (Account)session.getAttribute("a");
	AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");
	String fname =request.getParameter("FirstName");
	String lname =request.getParameter("LastName");
	String uname = request.getParameter("Username");
	String password =request.getParameter("Password");
	char type = request.getParameter("Type").charAt(0);
	char status = request.getParameter("Status").charAt(0);
	int i = ac.editUser(fname, lname, uname, password, type, status);
	if(i == 1){
		response.sendRedirect("manage_Users.jsp");}
	else{
		out.println("Sorry! Login Unsuccessful! The reason probably is the username is incorrect");
	}
%>
</font>
</body>
</html>
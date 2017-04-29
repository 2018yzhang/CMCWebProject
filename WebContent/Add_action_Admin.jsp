<%@page language="java" import="java.util.*" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"%>
<%@page errorPage="AddUserErrorPage.jsp" %>
<html>
<head><title>Add User Error Page</title>
</head>
<body>
<font face="verdana">
<%
	AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");
	String fname =request.getParameter("FirstName");
	String lname =request.getParameter("LastName");
	String uname =request.getParameter("Username");
	String password =request.getParameter("Password");
	char type =request.getParameter("Type").toLowerCase().charAt(0);
	char status =request.getParameter("Status").toUpperCase().charAt(0);
	//User u = new User(fname, lname,uname,password);
	//session.setAttribute("username", uname);

	int t = ac.addUser(fname, lname, uname, password, type);
	
	if(t==0){
		response.sendRedirect("manage_Users.jsp");
	}
	else if(t==1){
		response.sendRedirect("manage_Users.jsp");
	}
	else{
		out.println("Sorry! Login Unsuccessful! The reason probably is the username is incorrect");
	}
	
%>
</font>
</body>
</html>
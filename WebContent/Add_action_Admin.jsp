<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"%>
<%
	AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");
	String fname =request.getParameter("FirstName");
	String lname =request.getParameter("LastName");
	String uname =request.getParameter("Username");
	String password =request.getParameter("Password");
	char type =request.getParameter("Type").charAt(0);
	char status =request.getParameter("Status").charAt(0);
	//User u = new User(fname, lname,uname,password);
	//session.setAttribute("username", uname);
	
	Boolean t = ac.addUser(fname, lname, uname, password, type);
	if(t==true){
		response.sendRedirect("manage_Users.jsp");}
%>
<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>
<%
	UserController uc = new UserController();
	String fname =request.getParameter("FirstName");
	String lname =request.getParameter("LastName");
	String uname =request.getParameter("Username");
	String password =request.getParameter("Password");
	char type =request.getParameter("Type").charAt(0);
	char status =request.getParameter("Status").charAt(0);
	User u = new User(fname, lname,uname,password,type,status);
	
	uc.addUser(u);
	response.sendRedirect("Menu.jsp");
%>
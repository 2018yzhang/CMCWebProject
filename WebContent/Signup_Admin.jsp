<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="cmc.mario.controllers.*, cmc.mario.interfaces.*, cmc.mario.entities.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page errorPage="SignupErrorPage.jsp" %>
<html>
<head><title>Login Error Page</title>
</head>
<body>
<font face="verdana">
<%
	AccountUI au = new AccountUI();
	au.logOn("hl","ld");
	AccountController ac = au.getAccountController();
	Admin a = (Admin)ac.getAcct();
	AdminFuncController afc = new AdminFuncController(a);
	String fname = request.getParameter("Firstname");
	String lname = request.getParameter("Lastname");
	String uname = request.getParameter("Username");
	String password = request.getParameter("Password");

	int k = afc.addUser(fname, lname, uname, password, 'u');
	if(k==0){
		AccountUI acctU = new AccountUI();
		acctU.logOn(uname, password);
		session.setAttribute("ui", acctU );
		response.sendRedirect("Admin_Menu.jsp");
	}
	else if(k==1){
		AccountUI acctU = new AccountUI();
		acctU.logOn(uname, password);
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
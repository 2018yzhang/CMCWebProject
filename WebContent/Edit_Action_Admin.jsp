<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<%
	Account a = (Account)session.getAttribute("a");
	AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");
	String fname =request.getParameter("FirstName");
	String lname =request.getParameter("LastName");
	String uname = a.getUsername();
	String password =request.getParameter("Password");
	char type = request.getParameter("Type").charAt(0);
	char status = request.getParameter("Status").charAt(0);
	boolean editComplete = ac.editUser(fname, lname, uname, password, type, status);
	if(editComplete == true){
		response.sendRedirect("manage_Users.jsp");}
	else{
		response.sendRedirect("Edit_Admin.jsp?Error=1AlreadyExistingUserOrIncorrectInputs");
	}
%>
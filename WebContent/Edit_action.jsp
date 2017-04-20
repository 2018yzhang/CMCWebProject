<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*",java.util.*"%>
<%
	DBController db = new DBController();
	String fname =request.getParameter("FirstName");
	String lname =request.getParameter("LastName");
	String uname =request.getParameter("Username");
	String password =request.getParameter("Password");
	char type =request.getParameter("Type").charAt(0);
	char status =request.getParameter("Status").charAt(0);

	session.setAttribute("username", uname);
	boolean editComplete = db.editUser(fname, lname, uname, password, type, status);
	if(editComplete == true){
		response.sendRedirect("Manage_myprofile.jsp");}
	else{
		response.sendRedirect("Manage_myprofile.jsp?Error=1AlreadyExistingUserOrIncorrectInputs");
	}
%>
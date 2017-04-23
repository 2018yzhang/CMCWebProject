<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*",java.util.*"%>
<%
	DBController db = new DBController();
	request.getAttribute("ui");
	String fname =request.getParameter("FirstName");
	String lname =request.getParameter("LastName");
	String password =request.getParameter("Password");

	//session.setAttribute("username", uname);
	boolean editComplete = db.editUser(fname, lname, uname, password, type, status);
	if(editComplete == true){
		response.sendRedirect("Manage_myprofile.jsp");}
	else{
		response.sendRedirect("Manage_myprofile.jsp?Error=1AlreadyExistingUserOrIncorrectInputs");
	}
%>
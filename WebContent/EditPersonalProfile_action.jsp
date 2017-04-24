<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<%
	UserFuncController uc = (UserFuncController)session.getAttribute("userCtr");
	String fname =request.getParameter("FirstName");
	String lname =request.getParameter("LastName");
	String uname =uc.getUser().getUsername();
	String password =request.getParameter("Password");

	boolean editComplete = uc.editPersonalProfile(uname, fname, lname, password);
	if(editComplete == true){
		response.sendRedirect("User_menu.jsp");}
	else{
		response.sendRedirect("User_menu.jsp?Error=1AlreadyExistingUserOrIncorrectInputs");
	}
%>
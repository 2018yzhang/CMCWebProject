<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" %>
<%
	UserFuncController uc = (UserFuncController)session.getAttribute("user");
	User u = uc.getUser();
	String firstName = u.getFirstName();
	String lastName = u.getLastName();
	String username = u.getUsername();
	String password = u.getPassword();
	char type = u.getType();
	UserUI userU = new UserUI(u);

	User user  = userU.viewPersonalProfile();
	session.setAttribute("user", user);
	
	//response.sendRedirect("AdminMenu.jsp");

%>
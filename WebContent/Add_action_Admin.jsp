<%@page language="java" import="java.util.*" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"%>
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
	System.out.println(t);
	int error=0;
	if(t==2){
		error=1;
		response.sendRedirect("Add_Admin.jsp?Error=1FailedForExsitedAccount");
	}
	else if(t==3){
		error=2;
		response.sendRedirect("Add_Admin.jsp?Error=2FailedForInvalidTypeInput");
	}
	else if(t==4){
		error=3;
		response.sendRedirect("Add_Admin.jsp?Error=3FailedForUnknownError");
		}
	else{
		response.sendRedirect("manage_Users.jsp");
	}
	session.setAttribute("Error", error);
%>
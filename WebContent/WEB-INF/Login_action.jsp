<%@page language="java" import="edu.csbsju.csci230.*"%>
<%
	UserFuncController usrC = new UserFuncController();
	String uname = request.getParameter("Username");
	String password = request.getParameter("Password");

	int k = usrC.login(uname, password);
	if(k==0){
		session.setAttribute("uc", usrC );
		response.sendRedirect("Menu.jsp");
	}
	else if(k==-1){
		response.sendRedirect("index.jsp?Error=1FailedForInvalidUsername");
		
	}
	else if (k==-2){
		response.sendRedirect("index.jsp?Error=2FailedForInvalidPassword");
	}
	else{
		response.sendRedirect("index.jsp?Error=3FailedForAccessDatabase");
	}
%>
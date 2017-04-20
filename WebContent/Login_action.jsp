<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" %>
<%
	
	String uname = request.getParameter("Username");
	String password = request.getParameter("Password");
	AccountUI acctU = new AccountUI();

	int k = acctU.logOn(uname, password);
	if(k==0){
		session.setAttribute("uc", acctU );
		response.sendRedirect("AdminMenu.jsp");
	}
	else if(k==1){
		session.setAttribute("uc", acctU );
		response.sendRedirect("UserMenu.jsp");
	}
	else if(k==2){
		response.sendRedirect("index.jsp?Error=1FailedForDeactiveAccount");
		
	}
	else if (k==3){
		response.sendRedirect("index.jsp?Error=2FailedForInvalidPassword");
	}
	else{
		response.sendRedirect("index.jsp?Error=3FailedForUsername");
	}
%>
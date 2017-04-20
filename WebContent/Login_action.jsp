<%@page language="java" import="cmc.mario.interfaces.*"%>
<%
	AccountUI acctU = new AccountUI();
	String uname = request.getParameter("Username");
	String password = request.getParameter("Password");


	int k = acctU.logOn(uname, password);
	if(k==0){
		session.setAttribute("ui", acctU );
		response.sendRedirect("Admin_Menu.jsp");
	}
	else if(k==1){
		session.setAttribute("ui", acctU );
		response.sendRedirect("User_Menu.jsp");
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
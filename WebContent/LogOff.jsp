<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<%
	
	HttpSession s = request.getSession(false);
	if(session != null)
   		session.invalidate();
		request.getRequestDispatcher("LogOff_action.jsp").forward(request,response);
		
%>


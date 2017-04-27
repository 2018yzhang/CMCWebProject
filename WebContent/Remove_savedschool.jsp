<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" %>
<%
	UserFuncController uc = (UserFuncController)session.getAttribute("userCtr");
	String schoolName = request.getParameter("School");
	boolean removeComplete = uc.removeSavedSchool(schoolName);
	if(removeComplete == true){
		response.sendRedirect("Manage_savedschoolspageUser.jsp");}
	else{
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Remove Error');");
	    out.println("window.location='Manage_savedschoolspageUser.jsp';");
		out.println("</script>");
		
	} 
%>
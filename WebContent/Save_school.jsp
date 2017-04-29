<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" %>
<%
	UserFuncController uc = (UserFuncController)session.getAttribute("userCtr");
	String schoolName = request.getParameter("School");
	boolean saveComplete = uc.saveSchool(schoolName);
	if(saveComplete == true){
		response.sendRedirect("Manage_savedschoolspageUser.jsp");}
	else{
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Save Error');");
	    out.println("window.location='Manage_savedschoolspageUser.jsp';");
		out.println("</script>");
		
	} 
%>
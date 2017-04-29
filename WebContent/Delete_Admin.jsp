<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	 String uname = request.getParameter("Username");
	 AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");
	 boolean r = ac.delateUser(uname);
	 String msg ="";
	 if(r==true){
		 response.sendRedirect("manage_Users.jsp");
	 }
	 else{
		   out.println("<script type=\"text/javascript\">");
		   out.println("alert('Delete Error');");
		   out.println("window.location='manage_Users.jsp';");
		   out.println("</script>");
	 }
	%>  
</body>
</html>
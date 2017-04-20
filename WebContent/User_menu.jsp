<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>
<html>
<head>
<title></title>
</head>
<%
	//UserFuncController uc = (UserFuncController)session.getAttribute("uc");
	//User u = uc.getCurrentUser();
	UserFuncController uc = (UserFuncController)session.getAttribute("uc");
	User u = uc.getUser();
	out.print("Hello User "+u.getUsername());
%>
<body>
<a href="Search_schools.jsp">Search for Schools</a>
<a href="Manage_savedschoolspage.jsp">Search for Schools</a>
<a href="Manage_myprofile.jsp">Search for Schools</a>
</body>
</html>


<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>
<html>
<head>
<title></title>
</head>
<%
	//UserFuncController uc = (UserFuncController)session.getAttribute("uc");
	//User u = uc.getCurrentUser();
// 	UserFuncController uc = (UserFuncController)session.getAttribute("uc");
// 	User u = uc.getUser();
// 	out.print("Hello User "+u.getUsername()); 
	out.print("Hello User ");
%>
<body>
<br>
<a href="Search_schools.jsp">Search for Schools</a><br>
<a href="Manage_savedschoolspage.jsp">Manage My Saved Schools</a><br>
<a href="Manage_myprofile.jsp">Manage My Profile</a><br>
</body>
</html>


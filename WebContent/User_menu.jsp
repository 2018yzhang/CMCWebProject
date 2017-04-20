<%@page language="java" import="cmc.mario.*" import="java.util.ArrayList"%>
<html>
<head>
<title></title>
</head>
<%
	UserFuncController uc = (UserFuncController)session.getAttribute("uc");
	User u = uc.getCurrentUser();
	out.print("Hello User "+u.getUsername());
%>
<body>
<a href="Search_schools.jsp">Search for Schools</a>
<a href="Manage_savedschoolspage.jsp">Search for Schools</a>
<a href="Manage_myprofile.jsp">Search for Schools</a>
</body>
</html>


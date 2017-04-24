<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>
<html>
<head>
<title></title>
</head>
<%
	AccountUI ui = (AccountUI)session.getAttribute("ui");
	AccountController acctCtr = ui.getAccountController();
	User user = (User)acctCtr.getAcct();
 	out.print("Hello User: "+user.getUsername());
%>
<body>
<br>
<a href="Search_schools.jsp">Search for Schools</a><br>
<a href="Manage_savedschoolspageUser.jsp">Manage My Saved Schools</a><br>
<a href="Manage_myprofileUser.jsp">Manage My Profile</a><br>
</body>
</html>


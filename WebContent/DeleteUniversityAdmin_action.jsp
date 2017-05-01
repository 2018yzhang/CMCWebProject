<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log Out</title>
</head>
<body>
You have deleted a University!
<br>
<%	AdminFuncController ac = (AdminFuncController)session.getAttribute("uc");
DBController db = new DBController();
String name = request.getParameter("SchoolName");
boolean delete = db.deleteUniversity(name);%>

<% response.sendRedirect("ViewUniversities.jsp");%>

</body>
</html>
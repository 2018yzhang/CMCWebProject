<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.mario.interfaces.*" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu List</title>
</head>
<body>
<form method="post" action="LogOff.jsp" name="LogOff">
    <input name="Logout" type="submit" value="Logout">
</form>
<br>
<a href="ViewUniversities.jsp">Manage University</a> <br>
<a href="manage_Users.jsp">Manage Users</a> <br>
<% AccountUI ui = (AccountUI)session.getAttribute("ui");
AccountController acctCtr = ui.getAccountController();
Admin a = (Admin)acctCtr.getAcct();
AdminFuncController ac = new AdminFuncController(a);
session.setAttribute("ac", ac );
%>

</body>
</html>
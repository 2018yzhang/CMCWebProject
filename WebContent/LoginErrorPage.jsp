<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Error Page</title>
</head>
<body>
<h2>An exception has occurred!</h2>
<table><tr>
<td>Exception Class:</td>
<td><%=exception.getClass() %></td>
</tr>
<tr>
<td>Message: </td>
<td><%=exception.getMessage() %></td>
</tr>
</table>
<br>
<hr>
To go back to the login page Click login page button
<form name ="f2" action="Login.jsp">
<input type="submit" name="button2" value="Login Page">
</form>
</body>
</html>
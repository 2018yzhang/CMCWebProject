<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log Out</title>
</head>
<body>
You have logged out successfully!
<br>
<a href="Login.jsp">Click</a> here to log back in.
<%
if (!IsPostBack)
{
    if (session.getAttribute("ui") == null)
    {
        response.redirect("Login.jsp");
    }
    else
    {
        response.clearHeaders();
        response.addHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
        response.addHeader("Pragma", "no-cache");
    }
}
%>

</body>
</html>
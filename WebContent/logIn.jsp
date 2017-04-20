<html>
<head>

<title>Login Form</title>
</head>
<body>
<br>
Login form:<br>
<br>
<%
String anyErrors = request.getParameter("ERROR");
out.print(anyErrors);
if (anyErrors.equals("1"))
	out.print("Hello, Provided username is not valid.");
else if (anyErrors.equals("2"))
	out.print("Hello, Provided password is not valid.");
else if (anyErrors.equals("3"))
	out.print("Hello, An error occurred while attempting to access the database");
%>
<form method="post" action="Login_action.jsp" name="Login"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password"> </td>
</tr>

<td style="vertical-align: top;"><input value="Log in"
name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</body>
</html>
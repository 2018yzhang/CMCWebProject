<html>
<head>

<title>Login Form</title>
</head>
<body style="background-color:powderblue;">
<br>
Welcome to Choose My College User!<br><br>Login:<br>
<%
String anyErrors = request.getParameter("Error");

if (anyErrors!=null&&anyErrors.equals("2"))
	out.print("Hello, the account has been deactivated.");
else if (anyErrors!=null&&anyErrors.equals("3"))
	out.print("Hello, the password is incorrect.");
else if (anyErrors!=null&&anyErrors.equals("4"))
	out.print("Hello, the username is incorrect");
%>
<form method="post" action="Login_action.jsp" name="Login"><br>
<table style="text-align: left; width: 266px; height: 228px; background-color: white;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">User name<br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input type="password" name="Password"> </td>
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
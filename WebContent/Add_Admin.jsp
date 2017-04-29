<html>
<head>

<title>Add User Form</title>
</head>
<body>
<form method="post" action="LogOff.jsp" name="LogOff">
    <input name="Logout" type="submit" value="Logout">
</form>
<br>
Add User form:<br>

<br>
<form method="post" action="Add_action_Admin.jsp" name="addUser"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName"><br>
</td>
</tr>
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
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="Status" value="Y" readonly> </td>
</tr>

<tr>
<td style="vertical-align: top;"><input value="Add"
name="Add" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
<%	
String anyErrors = request.getParameter("Error");

if (anyErrors!=null&&anyErrors.equals("1")){
	out.println("<script type=\"text/javascript\">");
	   out.println("alert('Deactive Error');");
	   out.println("window.location='manage_Users.jsp';");
	   out.println("</script>");
}
if(anyErrors!=null&&anyErrors.equals("2")){
out.println("<script type=\"text/javascript\">");
out.println("alert('The type of user can only be 'u'(user) or 'a'(admin)!');");
out.println("window.location='Add_Admin.jsp';");
out.println("</script>");
}
if (anyErrors!=null&&anyErrors.equals("3")){
	 out.println("<script type=\"text/javascript\">");
	   out.println("alert('Unknown Error');");
	   out.println("window.location='Add_Admin.jsp';");
	   out.println("</script>");
}

%>
</body>
</html>


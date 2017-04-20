<%@page language="java" import="cmc.mario.*" import="java.util.ArrayList"%>
<html>
<head>
<title></title>
</head>
<%
	out.print("View/Edit user profile");
// 	UserFuncController uc = (UserFuncController)session.getAttribute("uc");
// 	User u = uc.getUser();
// 	String firstName = u.getFirstName();
// 	String lastName = u.getLastName();
// 	String username = u.getUsername();
// 	String password = u.getPassword();
// 	char type = u.getType();
%>
<body>
<form method="post" action="Manage_myprofile.jsp" name="PersonalProfile">
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">First Name</td>
<td><input type="text" value="<%= session.getAttribute("FirstName") %>" /></td></tr>
<tr>
<td style="vertical-align: top;">Last Name</td>
<td><input type="text" value="<%= session.getAttribute("LastName") %>" /></td></tr>
<tr>
<td style="vertical-align: top; text-align: top;">User name</td>
<td><input type="text" value="<%= session.getAttribute("Username") %>" /></td></tr>
<tr>
<td style="vertical-align: top; text-align: top;">Password</td>
<td><input type="text" value="<%= session.getAttribute("Username") %>" /></td></tr>
<tr>
<td style="vertical-align: top; text-align: top;">Type</td>
<td><input type="text" value="<%= session.getAttribute("Type") %>" /></td></tr>
<tr>
<td style="vertical-align: top; text-align: top;">Status</td>
<td><input type="text" value="<%= session.getAttribute("Status") %>" /></td></tr>
</tbody>
</table>
</tr>
<td style="vertical-align: top;"><input value="Edit User"
name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</form>
</body>

</html>


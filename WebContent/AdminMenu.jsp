<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>
<html>
<head>
<title></title>
</head>
<%
	UserFuncController uc = (UserFuncController)session.getAttribute("uc");
	User u = uc.getUser();
	out.print("Hello User "+u.getUsername());
%>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><a
href="Add.jsp">ADD A USER</a>
</td>
</tr>
<tr>
<td style="vertical-align: top;">
Edit</td>
<td style="vertical-align: top; text-align: center;">Full name
</td>
<td style="vertical-align: top; text-align: center;">Username
</td>
<td style="vertical-align: top; text-align: center;">Password
</td>
<td style="vertical-align: top; text-align: center;">Type
</td>
<td style="vertical-align: top; text-align: center;">Status
</td>
<td style="vertical-align: top;">Delete
</td>
</tr>

<tr>
<%
	ArrayList<User> usrList = uc.getAllUsers(); //Kalila - add getAllUsers method in UserFuncController
%>

<tr>
         	<% for(int c = 0;c<usrList.size();c++) { %>
         	<td style="vertical-align: top;">
<form method="post" action="Edit.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="Username" value="???" type="hidden">
</form>
</td>
               <td><%=usrList.get(c).getFirstName()%></td>
               <td><%=usrList.get(c).getLastName()%></td>
                <td><%=usrList.get(c).getUsername()%></td>
                <td><%=usrList.get(c).getPassword()%></td>
                <td><%=usrList.get(c).getType()%></td>
                <td><%=usrList.get(c).getStatus()%></td>
                <td style="vertical-align: top;">
<form method="post" action="Delete.jsp" name="Delete">
    <input name="Delete" value="Delete" type="submit">
    <input name="Username" value="???" type="hidden">
</form>
</td>
                </tr>
            <% } 
            %>
        
<!-- <td style="vertical-align: top;">??? -->
<!-- </td> -->
<!-- <td style="vertical-align: top;">??? -->
<!-- </td> -->
<!-- <td style="vertical-align: top;">??? -->
<!-- </td> -->
<!-- <td style="vertical-align: top;">??? -->
<!-- </td> -->
<!-- <td style="vertical-align: top;">??? -->
<!-- </td> -->

</tr>
</tbody>
</table>
</body>
</html>


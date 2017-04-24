<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<html>
<head>
<title></title>
</head>
<%
	AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");

%>
<td colspan="8" rowspan="1"><a
href="Admin_Menu.jsp">Go Back To Main Menu</a>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><a
href="Add_Admin.jsp">ADD A USER</a>
</td>
</tr>
<tr>
<td style="vertical-align: top;">
Edit</td>
<td style="vertical-align: top; text-align: center;">First
</td>
<td style="vertical-align: top; text-align: center;">Last
</td>
<td style="vertical-align: top; text-align: center;">Username
</td>
<td style="vertical-align: top; text-align: center;">Password
</td>
<td style="vertical-align: top; text-align: center;">Type
</td>
<td style="vertical-align: top; text-align: center;">Status
</td>
<td style="vertical-align: top;">Deactive
</td>
</tr>

<tr>
<%
	List<Account> usrList = ac.viewAccount();
%>

<tr>
         	<% for(int c = 0;c<usrList.size();c++) { %>
         	<td style="vertical-align: top;">
<form method="post" action="Edit_Admin.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <%String uname = usrList.get(c).getUsername(); %>
    <input name="Username" value=uname type="hidden">
</form>
</td>
               <td><%=usrList.get(c).getFirstName()%></td>
               <td><%=usrList.get(c).getLastName()%></td>
                <td><%=usrList.get(c).getUsername()%></td>
                <td><%=usrList.get(c).getPassword()%></td>
                <td><%=usrList.get(c).getTypeOfUser()%></td>
                <td><%=usrList.get(c).getStatus()%></td>
                <td style="vertical-align: top;">
<form method="post" action="Deactive_Admin.jsp" name="Deactive">
    <input name="Deactive" value="Deactive" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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


<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.List"%>
<html>
<head>
<title></title>
</head>
<%
	AccountUI ui = (AccountUI)session.getAttribute("ui");
	AccountController acctCtr = ui.getAccountController();
	User user = (User)acctCtr.getAcct();
	UserFuncController userCtr = new UserFuncController(user);
	String anyErrors = request.getParameter("Error");
	
	session.setAttribute("userCtr", userCtr );
	List<University> univList = userCtr.viewSavedSchools();
%>
<body>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td top;><br>
</td>
<td style="vertical-align: center;">School<br>
</td>
</tr>
<tr>
         	<% for(int c = 0; c < univList.size();c++){  %>
         	<td style="vertical-align: top;">
<form method="post" action="Remove_schoolactionUser.jsp" name="Remove">
    <input name="Remove" value="Remove" type="submit">
    <input name="Username" value=<%=user.getUsername()%> type="hidden">
</form>
</td>
               <td><%=univList.get(c).getSchoolName()%></td>
                <td style="vertical-align: top;">
<form method="post" action="View_savedschooldetailsactionUser.jsp" name="ViewSavedSchoolDetails">
	<input name="ViewSavedSchoolDetails" value="View Saved School" type="submit">
    <input name="SchoolName" value=<%=univList.get(c).getSchoolName()%> type="hidden">
</form>
</td>
</tr>
<% } 
            %>
</tbody>
</table>
<br>
<br>
</body>
</html>
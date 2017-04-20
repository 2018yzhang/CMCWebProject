<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.List"%>
<html>
<head>
<title></title>
</head>
<%
	DBController db = (DBController)session.getAttribute("uc");
	out.print("View/Edit user profile");
	String anyErrors = request.getParameter("Error");
	if (anyErrors!=null&&anyErrors.equals("1"))
	out.print("Unable to edit user");
	List<University> univList = db.getUniversities();
%>
<body>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td style="vertical-align: center;">School<br>
</td>
<tr>
         	<% for(int c = 0; c < univList.size();c++){  %>
         	<td style="vertical-align: top;">
<form method="post" action="Remove_school.jsp" name="Remove">
    <input name="Remove" value="Remove" type="submit">
    <input name="Username" value="???" type="hidden">
</form>
</td>
               <td><%=univList.get(c).getSchoolName()%></td>
                <td style="vertical-align: top;">
<form method="post" action="View_specificschool.jsp" name="ViewSpecificSchool">
    <input name="ViewSpecificSchool" value="ViewSpecificSchool" type="submit">
    <input name="Username" value="???" type="hidden">
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
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
<table style="text-align: left; width: 400px; height: 300px;"
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
<form method="post" action="Remove_savedschoolUser.jsp" name="Remove">
    <input name="Remove" value="Remove" type="submit">
     <input name="SchoolName" value=<%=univList.get(c).getSchoolName()%> type="hidden">
</form>
</td>
               <td><%=univList.get(c).getSchoolName()%></td>
                <td style="vertical-align: top;">
<form method="post" action="View_savedschooldetailsactionUser.jsp" name="ViewSavedSchoolDetails">
	<input name="ViewSavedSchoolDetails" value="View Saved School" type="submit">
    <input name="SchoolName" value=<%=univList.get(c).getSchoolName()%> type="hidden" >
     <input name="State" value=<%=univList.get(c).getState()%> type="hidden">
      <input name="Location" value=<%=univList.get(c).getLocation()%> type="hidden">
       <input name="Control" value=<%=univList.get(c).getControl()%> type="hidden">
       <input name="NumberOfStudents" value=<%=univList.get(c).getNumOfStu()%> type="hidden">
       <input name="FemalePercent" value=<%=univList.get(c).getPerFem()%> type="hidden">
       <input name="SatVerbal" value=<%=univList.get(c).getSatVerbal()%> type="hidden">
       <input name="SatMath" value=<%=univList.get(c).getSatMath()%> type="hidden">
       <input name="Expenses" value=<%=univList.get(c).getPrice()%> type="hidden">
       <input name="FinAid" value=<%=univList.get(c).getFinAid()%> type="hidden">
       <input name="NumApp" value=<%=univList.get(c).getNumOfApp()%> type="hidden">
       <input name="PerAdmit" value=<%=univList.get(c).getPerAdmit()%> type="hidden">
       <input name="PerEnroll" value=<%=univList.get(c).getPerEnroll()%> type="hidden">
       <input name="AcademicScale" value=<%=univList.get(c).getAcademicScale()%> type="hidden">
       <input name="LifeScale" value=<%=univList.get(c).getLifeScale()%> type="hidden">
		<input name="PopMajors" value=<%=univList.get(c).getPopMajors()%> type="hidden">
       
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
<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" 
import ="java.util.*"%>
<%
%>
<html>
<head>

<title>Manage Universities  Form</title>
<form method="post" action="LogOff.jsp" name="LogOff">
    <input name="Logout" type="submit" value="Logout">
</form>
</head>
<body>
<a href="AddUniversityAdmin.jsp">Add University</a> <br>
<br>
View Universities form:<br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<%
DBController db = new DBController();
List<University> list = db.getUniversities();
%>
<tr>
<td>School Name</td>
<td>State</td>
<td>Location</td>
<td>Control</td>
<td># of Students</td>
<td>% of Females</td>
<td>SAT Verbal</td>
<td>SAT Math</td>
<td>Expenses</td>	
<td>% with Financial Aid</td>
<td># of Applicants</td>
<td>% Admited</td>
<td>% Enrolled</td>
<td>Academics Scale(1-5)</td>
<td>Social Scale(1-5)</td>
<td>Quality of Life(1-5)</td>




<% for(int i = 0;i<list.size();i++){%>
<tr>
<td><%=list.get(i).getSchoolName()%></td>
<td><%=list.get(i).getState() %></td>
<td><%=list.get(i).getLocation() %></td>
<td><%=list.get(i).getControl()%></td>
<td><%=list.get(i).getNumOfStu() %></td>
<td><%=list.get(i).getPerFem()%></td>
<td><%=list.get(i).getSatVerbal()%></td>
<td><%=list.get(i).getSatMath() %></td>
<td><%=list.get(i).getPrice() %></td>
<td><%=list.get(i).getFinAid()%></td>
<td><%=list.get(i).getNumOfApp() %></td>
<td><%=list.get(i).getPerAdmit() %></td>
<td><%=list.get(i).getPerEnroll()%></td>
<td><%=list.get(i).getAcademicScale() %></td>
<td><%=list.get(i).getSocialScale() %></td>
<td><%=list.get(i).getLifeScale() %></td>
<td>
<form method="post" action="ViewUniversityAdmin.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="SchoolName" value="<%= list.get(i).getSchoolName()%>" type="hidden">
    <input name="State" value="<%= list.get(i).getState()%>" type="hidden">
    <input name="Location" value="<%= list.get(i).getLocation()%>" type="hidden">
    <input name="Control" value="<%=list.get(i).getControl()%>" type="hidden">
    <input name="NumberOfStudents" value="<%= list.get(i).getNumOfStu()%>" type="hidden">
    <input name="PercentOfFemales" value="<%= list.get(i).getPerFem()%>" type="hidden">
    <input name="SATVerbal" value="<%= list.get(i).getSatVerbal()%>" type="hidden">
    <input name="SATMath" value="<%= list.get(i).getSatMath()%>" type="hidden">
    <input name="Price" value="<%= list.get(i).getPrice()%>" type="hidden">
    <input name="FinancialAid" value="<%=list.get(i).getFinAid()%>" type="hidden">
    <input name="NumberofApplicants" value="<%= list.get(i).getNumOfApp()%>" type="hidden">
    <input name="PercentAdmitted" value="<%= list.get(i).getPerAdmit()%>" type="hidden">
    <input name="PercentEnrolled" value="<%= list.get(i).getPerEnroll()%>" type="hidden">
    <input name="AcademicScale" value="<%= list.get(i).getAcademicScale()%>" type="hidden">
    <input name="SocialScale" value="<%= list.get(i).getSocialScale()%>" type="hidden">
    <input name="QualityofLife" value="<%=list.get(i).getLifeScale()%>" type="hidden">

    <input name="Emphasis" value="<%= list.get(i).getPopMajors()%>" type="hidden">
    <input name="Emphasis2" value="<%= list.get(i).getPopMajors()%>" type="hidden">
    <input name="Emphasis3" value="<%= list.get(i).getPopMajors()%>" type="hidden">
    <input name="Emphasis4" value="<%= list.get(i).getPopMajors()%>" type="hidden">
    <input name="Emphasis5" value="<%= list.get(i).getPopMajors()%>" type="hidden">
    

</form>
</td>
<td>
<form method="post" action="DeleteUniversityAdmin.jsp" name="Delete">
    <input name="Delete" type="submit" value="delete">
       <input name="SchoolName1" value="<%= list.get(i).getSchoolName()%>" type="hidden">
</form>
</td>


</tr>
<%} %>

</table>
<br>
<br>
</body>
</html>

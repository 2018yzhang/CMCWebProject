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
	session.setAttribute("userCtr", userCtr );
	String anyErrors = request.getParameter("Error");
	if (anyErrors!=null&&anyErrors.equals("1"))
		out.print("Unable to view school");
%>
<body>
   <form method="post" action="LogOff.jsp" name="LogOff">
    <input name="Logout" type="submit" value="Logout">
</form>
<form method="post" action="Save_school.jsp" name="Save"><input value="Save"
name="Save" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table style="text-align: left; width: 500px; height: 350px;"
border="1" >
<tbody>

<tr>

<td style="vertical-align: top;">SCHOOL<br>
</td>
<td style="vertical-align: top;"><input name="School" SIZE="60" style="width: 250px"; value="<%=request.getParameter("SchoolName")%>" readonly></td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">STATE<br>
</td>
<td style="vertical-align: top;"><input name="State" style="width: 250px";  value=<%=request.getParameter("State")%> readonly>
</td>
</tr>
<tr>
<td style="vertical-align: top;">LOCATION<br>
</td>
<td style="vertical-align: top;"><input name = "Location" style="width: 250px"; value=<%=request.getParameter("Location")%> readonly></td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><input name="Control" style="width: 250px";  value=<%=request.getParameter("Control")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top;"><input name="NumberOfStudents" style="width: 250px";  value=<%=request.getParameter("NumberOfStudents")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% FEMALE<br>
</td>
<td style="vertical-align: top;"><input name= "Female"  style="width: 250px";  value=<%=request.getParameter("FemalePercent")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT VERBAL<br>
</td>
<td style="vertical-align: top;"><input name="SATVerbal"  style="width: 250px";  value=<%=request.getParameter("SatVerbal")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT MATH<br>
</td>
<td style="vertical-align: top;"><input name="SATMath" style="width: 250px";  value=<%=request.getParameter("SatMath")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">EXPENSES<br>
</td>
<td style="vertical-align: top;"><input name="Expenses" style="width: 250px";  value=<%=request.getParameter("Expenses")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top;"><input name="FinacialAid" style="width: 250px";  value=<%=request.getParameter("FinAid")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
</td>
<td style="vertical-align: top;"><input name="NumberApplicants" style="width: 250px";  value=<%=request.getParameter("NumApp")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% ADMITTED<br>
</td>
<td style="vertical-align: top;"><input name="Admitted" style="width: 250px";  value=<%=request.getParameter("PerAdmit")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% ENROLLED<br>
</td>
<td style="vertical-align: top;"><input name="Enrolled" style="width: 250px";  value=<%=request.getParameter("PerEnroll")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">ACADEMICS SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="AcademicScale" style="width: 250px";  value=<%=request.getParameter("AcademicScale")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">SOCIAL SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="SocialScale" style="width: 250px";  value=<%=request.getParameter("SocialScale")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">QUALITY OF LIFE SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="LifeScale"  style="width: 250px";  value=<%=request.getParameter("LifeScale")%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">EMPHASES<br>
</td>
<td style="vertical-align: top;"><input name="Emphases" style="width: 250px";  value=<%=request.getParameter("PopMajors")%> readonly>  
</td>
</tr>

</tbody>
</table>
<br>
<br>
</form>
</body>
</html>
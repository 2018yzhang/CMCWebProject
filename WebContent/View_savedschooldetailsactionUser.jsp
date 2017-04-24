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
	if (anyErrors!=null&&anyErrors.equals("1"))
		out.print("Unable to view school");
	
	session.setAttribute("userCtr", userCtr );
	String schoolName = request.getParameter("SchoolName");
	University univ = userCtr.viewSpecificSchool(schoolName);
%>
<body>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td style="vertical-align: top;">SCHOOL<br>
</td>
<td style="vertical-align: top;"><input name="SchoolName" value=<%=univ.getSchoolName()%> readonly>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">STATE<br>
</td>
<td style="vertical-align: top;"><input name="State" value=<%=univ.getState()%> readonly>
</td>
</tr>
<tr>
<td style="vertical-align: top;">LOCATION<br>
</td>
<td style="vertical-align: top;"><input value=<%=univ.getLocation()%> readonly></td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><input name="Password" value=<%=univ.getControl()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top;"><input name="NumberOfStudents" value=<%=univ.getNumOfStu()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% FEMALE<br>
</td>
<td style="vertical-align: top;"><input name= "Female" value=<%=univ.getPerFem()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT VERBAL<br>
</td>
<td style="vertical-align: top;"><input name="SATVerbal" value=<%=univ.getSatVerbal()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT MATH<br>
</td>
<td style="vertical-align: top;"><input name="SATMath" value=<%=univ.getSatMath()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">EXPENSES<br>
</td>
<td style="vertical-align: top;"><input name="Expenses" value=<%=univ.getPrice()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top;"><input name="FinacialAid" value=<%=univ.getFinAid()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
</td>
<td style="vertical-align: top;"><input name="NumberApplicants" value=<%=univ.getNumOfApp()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% ADMITTED<br>
</td>
<td style="vertical-align: top;"><input name="Admitted" value=<%=univ.getPerAdmit()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% ENROLLED<br>
</td>
<td style="vertical-align: top;"><input name="Enrolled" value=<%=univ.getPerEnroll()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">ACADEMICS SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="AcademicScale" value=<%=univ.getAcademicScale()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">SOCIAL SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="SocialScale" value=<%=univ.getSocialScale()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">QUALITY OF LIFE SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="LifeScale" value=<%=univ.getLifeScale()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">EMPHASES<br>
</td>
<td style="vertical-align: top;"><input name="Emphases" value=
<% 
	List<String> listPop = univ.getPopMajors();
	for(int c = 0; c < listPop.size(); c++){
		listPop.get(c);
	}
%> readonly> </td>
</tr>

<tr>
<td style="vertical-align: top;"><input value="Edit"
name="Edit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
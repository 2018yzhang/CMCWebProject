<%@page language="java" import="java.util.ArrayList"
	import="java.util.List" import="cmc.mario.controllers.*"
	import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"
	import="java.util.ArrayList"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<%
List<University> ayee = (List<University>)request.getSession().getAttribute("results");
//System.out.println(ayee.size());
// for(int i =0; i<ayee.size();i++){
//	University x = ayee.get(i);
University x= new University();

for(int i =0; i<ayee.size();i++){
	x=ayee.get(i);

	%>
		

<tr>
<td style="vertical-align: top;"><form method="post" action="Save_school.jsp" name="Save"><input value="Save"
name="Save" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="School" SIZE="60" value="<%=x.getSchoolName()%>" type="hidden"><br></form>
</td>
<td style="vertical-align: top;"> <%=x.getSchoolName()%><br>
</td>

<td style="vertical-align: top;"><form method="post" action="View_specificschool.jsp" name="View"><input value="View"
name="View" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="SchoolName" value="<%=x.getSchoolName()%>" type="hidden" >
     <input name="State" value=<%=x.getState()%> type="hidden">
      <input name="Location" value=<%=x.getLocation()%> type="hidden">
       <input name="Control" value=<%=x.getControl()%> type="hidden">
       <input name="NumberOfStudents" value=<%=x.getNumOfStu()%> type="hidden">
       <input name="FemalePercent" value=<%=x.getPerFem()%> type="hidden">
       <input name="SatVerbal" value=<%=x.getSatVerbal()%> type="hidden">
       <input name="SatMath" value=<%=x.getSatMath()%> type="hidden">
       <input name="Expenses" value=<%=x.getPrice()%> type="hidden">
       <input name="FinAid" value=<%=x.getFinAid()%> type="hidden">
       <input name="NumApp" value=<%=x.getNumOfApp()%> type="hidden">
       <input name="PerAdmit" value=<%=x.getPerAdmit()%> type="hidden">
       <input name="PerEnroll" value=<%=x.getPerEnroll()%> type="hidden">
       <input name="AcademicScale" value=<%=x.getAcademicScale()%> type="hidden">
       <input name="SocialScale" value=<%=x.getSocialScale()%> type="hidden">
       <input name="LifeScale" value=<%=x.getLifeScale()%> type="hidden">
		<input name="PopMajors" value=<%=x.getPopMajors()%> type="hidden"><br></form>
</td>
</tr>
<%} %>


</tbody>

</table>
</body>
</html>
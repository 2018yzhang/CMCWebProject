<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Menu</title>
</head>
<body>
<form method="post" action="LogOff.jsp" name="LogOff">
    <input name="Logout" type="submit" value="Logout">
</form>
<form action="search_action.jsp" name="SearchForSchools">
<div style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
style="font-family: URW Chancery L;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<big style="font-weight: bold;"><big><big>Search Menu</big></big></big></span><br>
</div>
<table style="text-align: left; width: 1623px; height: 622px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">by SCHOOL NAME<br>
</td>
<td style="vertical-align: top;">contains <input
name="schoolname"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">by STATE </td>
<td style="vertical-align: top;">contains <input name="state">
</td>
</tr>
<tr>
<td style="vertical-align: top;">by LOCATION </td>
<td style="vertical-align: top;"><input name="location">
(SUBURBAN, URBAN,SMALL-CITY, OR -1 for UNKNOWN)<br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">by CONTROL </td>
<td style="vertical-align: top;"><input name="control">
(PRIVATE, STATE, CITY, OR -1 for UNKNOWN)<br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">by NUMBER OF STUDENTS </td>
<td style="vertical-align: top;">between <input
name="numStuMin"> and <input name="numStuMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by % FEMALE </td>
<td style="vertical-align: top;">between <input
name="numFemMin"> and <input name="numFemMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by SAT VERBAL&nbsp; </td>
<td style="vertical-align: top;">between <input
name="satVerbMin"> and <input name="satVerbMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by SAT MATH&nbsp; </td>
<td style="vertical-align: top;">between <input
name="satMathMin"> and <input name="satMathMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by EXPENSES </td>
<td style="vertical-align: top;">between <input name="expMin">
and <input name="expMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by % FINANCIAL AID </td>
<td style="vertical-align: top;">between <input
name="finAidMin"> and <input name="finAidMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by NUMBER OF APPLICANTS&nbsp; </td>
<td style="vertical-align: top;">between <input name="appMin">
and <input name="appMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by % ADMITTED </td>
<td style="vertical-align: top;">between <input name="admitMin">
and <input name="admitMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by % ENROLLED </td>
<td style="vertical-align: top;">between <input
name="enrollMin"> and <input name="enrollMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by ACADEMICS SCALE (1-5) </td>
<td style="vertical-align: top;">between <input
name="aScaleMin"> and <input name="aScaleMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by SOCIAL SCALE (1-5) </td>
<td style="vertical-align: top;">between <input
name="socScaleMin"> and <input name="socScaleMax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by QUALITY OF LIFE SCALE (1-5)
</td>
<td style="vertical-align: top;">between <input
name="qScaleMin"> and <input name="qScaleMiax"> </td>
</tr>
<tr>
<td style="vertical-align: top;">by EMPHASES </td>
<td style="vertical-align: top;">contains either<br>
<input name="emp"><br>
<input name="emp2"><br>
<input name="emp3"><br>
<input name="emp4"><br>
<input name="emp5"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input
value="Search For Schools" name="searchForSchools" type="submit"><br>
</td>
<td style="vertical-align: top;"><input name="reset"
value="reset" type="reset"><br>
</td>
</tr>
</tbody>
</table>
</form>
</body>
</html>
<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.List"%>
<html>
<head>
<title></title>
<style type="text/css">
body{
margin:0;
padding:0;
font-family:Titillium Web;

color:black;
background:#f3f3f3;
}
.container {
    max-width:960px;
    width:96%
}
header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
.logo{
float:left;
margin-top:10px;
url:logo.PNG;
}
nav{
float:right;
line-height:70px;
}
nav li{
display:inline-block;
padding:5px 20px;
margin-left:10px;
background:#ff4719;
line-height:normal;
}
nav li a{
	color: white;
	 text-decoration: none;
}
.content h2{
color:black;
background: #f1f1c1;
padding:10px;
border-radius:Spx;
margin-bottom:20px;
}

.content ul {
	list-style-position:outside;
}
.content ul a{
 text-decoration: none;
}
</style>
</head>

<body>
<header>
<div class="container">
<div class="logo">
	<img src="welcome2.png" width="65" alt="" title="">
</div>
<nav>
<li><a href="LogOff.jsp">Logout</a></li>
</nav>
<h1>Choose My College</h1>
</div>
</header>
</head>
<div class="container">
<div class="content">
<h2><a href="User_menu.jsp">Main Menu</a></h2>
<tbody>
<tr align="center">
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

<%
University u = new University(request.getParameter("SchoolName"),request.getParameter("State"),request.getParameter("Location"),request.getParameter("Control"),
		Integer.parseInt(request.getParameter("NumberOfStudents")),Integer.parseInt(request.getParameter("FemalePercent")),Integer.parseInt(request.getParameter("SatVerbal")),Integer.parseInt(request.getParameter("SatMath")),
		Integer.parseInt(request.getParameter("Expenses")),Integer.parseInt(request.getParameter("FinAid")),Integer.parseInt(request.getParameter("NumApp")),
		Integer.parseInt(request.getParameter("PerAdmit")),Integer.parseInt(request.getParameter("PerEnroll")),Double.parseDouble(request.getParameter("AcademicScale")),
		Double.parseDouble(request.getParameter("SocialScale")),Double.parseDouble(request.getParameter("LifeScale")));
%>
<div style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
style="font-family: URW Chancery L;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<big style="font-weight: bold;"><big><big>May we also recommend</big></big></big></span><br>
</div>
<% 
		List<University> lUni = userCtr.viewRecommendation(u);
		for(University x: lUni){
%>
<form method="post" action="Save_school.jsp" name="Save"><input value="Save"
name="Save" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table style="text-align: left; width: 500px; height: 350px;"
border="1" >
<tbody>

<tr>

<td style="vertical-align: top;">SCHOOL<br>
</td>
<td style="vertical-align: top;"><input name="School" SIZE="60" style="width: 250px"; value="<%=x.getSchoolName()%>" readonly></td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">STATE<br>
</td>
<td style="vertical-align: top;"><input name="State" style="width: 250px";  value=<%=x.getState()%> readonly>
</td>
</tr>
<tr>
<td style="vertical-align: top;">LOCATION<br>
</td>
<td style="vertical-align: top;"><input name = "Location" style="width: 250px"; value=<%=x.getLocation()%> readonly></td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><input name="Control" style="width: 250px";  value=<%=x.getControl()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top;"><input name="NumberOfStudents" style="width: 250px";  value=<%=x.getNumOfStu()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% FEMALE<br>
</td>
<td style="vertical-align: top;"><input name= "Female"  style="width: 250px";  value=<%=x.getPerFem()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT VERBAL<br>
</td>
<td style="vertical-align: top;"><input name="SATVerbal"  style="width: 250px";  value=<%=x.getSatVerbal()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT MATH<br>
</td>
<td style="vertical-align: top;"><input name="SATMath" style="width: 250px";  value=<%=x.getSatMath()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">EXPENSES<br>
</td>
<td style="vertical-align: top;"><input name="Expenses" style="width: 250px";  value=<%=x.getPrice()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top;"><input name="FinacialAid" style="width: 250px";  value=<%=x.getFinAid()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
</td>
<td style="vertical-align: top;"><input name="NumberApplicants" style="width: 250px";  value=<%=x.getNumOfApp()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% ADMITTED<br>
</td>
<td style="vertical-align: top;"><input name="Admitted" style="width: 250px";  value=<%=x.getPerAdmit()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">% ENROLLED<br>
</td>
<td style="vertical-align: top;"><input name="Enrolled" style="width: 250px";  value=<%=x.getPerEnroll()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">ACADEMICS SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="AcademicScale" style="width: 250px";  value=<%=x.getAcademicScale()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">SOCIAL SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="SocialScale" style="width: 250px";  value=<%=x.getSocialScale()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">QUALITY OF LIFE SCALE (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="LifeScale"  style="width: 250px";  value=<%=x.getLifeScale()%> readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">EMPHASES<br>
</td>
<td style="vertical-align: top;"><input name="Emphases" style="width: 250px";  value=<%=x.getPopMajors()%> readonly>  
</td>
</tr>

</tbody>
</table>
</form>
<%
		}
%>

</body>
</html>
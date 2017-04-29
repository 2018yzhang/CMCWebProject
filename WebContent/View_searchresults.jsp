<%@page language="java" import="java.util.ArrayList"
	import="java.util.List" import="cmc.mario.controllers.*"
	import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"
	import="java.util.ArrayList"%>

<html>
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
<h1>Choose Your College</h1>
</div>
</header>
</head>
<div class="container">
<div class="content">
<h2><a href="User_menu.jsp">Main Menu</a></h2>
<tbody>
<tr align="center">
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
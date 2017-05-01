<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" 
import ="java.util.*"%>
<html>
<head>
<title>Manage Universities  Form</title>
<style type="text/css">
body{
margin:0;
padding:0;
font-family:Titillium Web;
color:darkgrey;
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
.content ul{
	list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
	clear: left;
    background-color: #f1f1c1;
}
.content li{
float: left;
}
li a, .dropbtn {
    display: inline-block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: #ff4719;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1c1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #ff4719}

.dropdown:hover .dropdown-content {
    display: block;
}
table#t01{
color:black;
background-color:#f1f1c1;
}
h3{
color: black;
}
</style>
</head>
<body>
<header>
<div class="container">
<div class="logo">
	<img src="welcom2.png" width="65" alt="" title="">
</div>
<nav>
<li><a href="LogOff.jsp">Logout</a></li>
</nav>
<h1>Choose Your College</h1>
</div>
</header>
<div class="container">
<div class="content">
<ul>
<li class="dropdown">
<a href="Admin_Menu.jsp" class="dropbtn"><strong>Main Menu</strong></a>
    <div class="dropdown-content">
      <a href="ViewUniversities.jsp">Manage Universities</a>
      <a href="manage_Users.jsp">Manage Users</a>
    </div>
  </li>
</ul>
<h3>Manage Universities</h3>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2" id="t01">
<tbody>
<tr align="center">
<td colspan="18" rowspan="1" style="vertical-align: top;"><a
href="AddUniversityAdmin.jsp">ADD A UNIVERSITY</a>
</td> </tr>
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
    <input name="Edit" value="Edit" type="submit" style="color: white; background-color:black; padding:3px; float:center" >
    <input name="SchoolName" value="<%= list.get(i).getSchoolName()%>" type='hidden' size='100'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
</form>
</td>
<td>
<form >
      <input name="Delete" value="Delete" type="submit" onclick="if (confirm('Are you sure you want to delete?')) { form.method='post'; form.action='DeleteUniversityAdmin.jsp'; } else { return false; }"
      style="color: white; background-color:black; padding:3px; float:center">
    <input name="SchoolName1" value="<%= list.get(i).getSchoolName()%>" type="hidden">
   </form>
</td>
</tr>
<%} %>
</table>
</div>
</div>
</body>
</html>


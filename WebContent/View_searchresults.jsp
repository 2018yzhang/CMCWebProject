<%@page language="java" import="java.util.ArrayList"
	import="java.util.List" import="cmc.mario.controllers.*"
	import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"
	import="java.util.ArrayList"%>

<html>
<head>
<title>Search Results</title>
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
margin-top:-30px;
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
    display: inline-b.content h2{
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
}lock;
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

</style>
</head>
<body>
<header>
<div class="container">
<div class="logo">
	<img src="logo.PNG" width="65" alt="" title="">
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
<ul>
<li class="dropdown">
<a href="User_menu.jsp" class="dropbtn"><strong>Main Menu</strong></a>
    <div class="dropdown-content">
      <a href="Search_schools.jsp">Search</a>
      <a href="Manage_savedschoolspageUser.jsp">Manage Saved Schools</a>
       <a href="Manage_myprofileUser.jsp">Manage Personal Profile</a>
    </div>
  </li>
</ul>
<tr align="center"><br>
<h3>Search Results</h3>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2" id="t01">
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
name="Save" type="submit" style="color: white; background-color:black; padding:3px; float:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="School" SIZE="60" value="<%=x.getSchoolName()%>" type="hidden"><br></form>
</td>
<td style="vertical-align: top;"> <%=x.getSchoolName()%><br>
</td>

<td style="vertical-align: top;"><form method="post" action="View_specificschool.jsp" name="View"><input value="View"
name="View" type="submit" style="color: white; background-color:black; padding:3px; float:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>
</html>
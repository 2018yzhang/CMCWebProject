<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Search</title>
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
	<img src="welcome2.png" width="65" alt="" title="">
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
<a href="User_menu.jsp" class="dropbtn"><strong>Main Menu</strong></a>
    <div class="dropdown-content">
      <a href="Search_schools.jsp">Search</a>
      <a href="Manage_savedschoolspageUser.jsp">Manage Saved Schools</a>
       <a href="Manage_myprofileUser.jsp">Manage Personal Profile</a>
    </div>
  </li>
</ul>
<form method="post" action="search_action.jsp" name="SearchForSchools">
<div style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
style="font-family: URW Chancery L;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<big style="font-weight: bold;"><big><big>Search Menu</big></big></big></span><br>
</div>
<table style="text-align: left; width: 1623px; height: 622px;"
border="1" cellpadding="2" cellspacing="2" id="t01">
<tbody>
<tr>
<td style="vertical-align: top;">by SCHOOL NAME<br>
</td>
<td style="vertical-align: top;">contains <input
name="schoolname" type="text"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">by STATE </td>
<td style="vertical-align: top;">contains <input name="state" type="text">
</td>
</tr>
<tr>
<td style="vertical-align: top;">by LOCATION </td>
<td style="vertical-align: top;"><input name="location" type="text">
(SUBURBAN, URBAN,SMALL-CITY, OR LEAVE BLANK for UNKNOWN)<br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">by CONTROL </td>
<td style="vertical-align: top;"><input name="control" type="text">
(PRIVATE, STATE, CITY, OR LEAVE BLANK for UNKNOWN)<br>
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
value="Search For Schools" name="searchForSchools" type="submit" style="color: white; background-color:black; padding:3px; float:center"><br>
</td>
<td style="vertical-align: top;"><input name="reset"
value="Cancel" type="reset" style="color: white; background-color:black; padding:3px; float:center"><br>
</td>
</tr>
</tbody>
</table>
</form>
</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>
</html>
<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.List"%>
<html>
<head>
<title>Manage Saved School</title>
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
<h3>Saved School List</h3>

<%
	AccountUI ui = (AccountUI)session.getAttribute("ui");
	AccountController acctCtr = ui.getAccountController();
	User user = (User)acctCtr.getAcct();
	UserFuncController userCtr = new UserFuncController(user);
	String anyErrors = request.getParameter("Error");
	session.setAttribute("userCtr", userCtr );
	List<University> univList = userCtr.viewSavedSchools();
%>
<table style="text-align: left; width: 800px; height: 300px;"
border="1" id="t01" >
<tbody>
<tr>
<td top;>
</td>
<td style="vertical-align: center;">School<br>
</td>
</tr>
<tr>
         	<% for(int c = 0; c < univList.size();c++){  %>
         	<td style="vertical-align: top;">
<form method="post" action="Remove_savedschool.jsp" name="Remove">
    <input name="Remove" value="Remove" type="submit" style="color: white; background-color:black; padding:3px; float:center">
    <input name="School" SIZE="60" value="<%=univList.get(c).getSchoolName()%>" type="hidden">
</form>
</td>
               <td><%=univList.get(c).getSchoolName()%></td>
                <td style="vertical-align: top;">
<form method="post" action="View_savedschooldetailsactionUser.jsp" name="ViewSavedSchoolDetails">
	<input name="ViewSavedSchoolDetails" value="View Saved School" type="submit" style="color: white; background-color:black; padding:3px; float:center">
  	<input name="SchoolName" value="<%=univList.get(c).getSchoolName()%>" type="hidden" >
     <input name="State" value=<%=univList.get(c).getState()%> type="hidden">
      <input name="Location" value=<%=univList.get(c).getLocation()%> type="hidden">
       <input name="Control" value=<%=univList.get(c).getControl()%> type="hidden">
       <input name="NumberOfStudents" value=<%=univList.get(c).getNumOfStu()%> type="hidden">
       <input name="FemalePercent" value=<%=univList.get(c).getPerFem()%> type="hidden">
       <input name="SatVerbal" value=<%=univList.get(c).getSatVerbal()%> type="hidden">
       <input name="SatMath" value=<%=univList.get(c).getSatMath()%> type="hidden">
       <input name="Expenses" value=<%=univList.get(c).getPrice()%> type="hidden">
       <input name="FinAid" value=<%=univList.get(c).getFinAid()%> type="hidden">
       <input name="NumApp" value=<%=univList.get(c).getNumOfApp()%> type="hidden">
       <input name="PerAdmit" value=<%=univList.get(c).getPerAdmit()%> type="hidden">
       <input name="PerEnroll" value=<%=univList.get(c).getPerEnroll()%> type="hidden">
       <input name="AcademicScale" value=<%=univList.get(c).getAcademicScale()%> type="hidden">
       <input name="SocialScale" value=<%=univList.get(c).getSocialScale()%> type="hidden">
       <input name="LifeScale" value=<%=univList.get(c).getLifeScale()%> type="hidden">
		<input name="PopMajors" value=<%=univList.get(c).getPopMajors()%> type="hidden">
       
</form>
</td>
</tr>
<% } 
 %>
<br>
</tbody>
</table>
</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>
</html>
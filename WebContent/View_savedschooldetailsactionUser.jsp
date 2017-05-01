<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.List"%>
<html>
<head>
<title>Details of School</title>
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
<body>
<header>
<div class="container">
<div class="logo">
	<img src="logo.PNG" width="65" alt="" title="">
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
<h3>View Saved School</h3>
<table style="text-align: left; width: 500px; height: 350px;"
border="1" id="t01">
<tbody>
<tr>
<td style="vertical-align: top;">SCHOOL<br>
</td>
<td style="vertical-align: top;"><input name="SchoolName" SIZE="60" style="width: 250px"; value="<%=request.getParameter("SchoolName")%>" readonly></td>
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
</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>
</html>
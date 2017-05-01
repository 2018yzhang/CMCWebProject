<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>
<html>
<head>
<title>Manage Personal Profile</title>
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
<br><h3>View/Edit Personal Profile</h3>
<%
	UserFuncController ui = (UserFuncController)request.getSession().getAttribute("userCtr");
	User user = ui.getUser();
	
// 	else if(session.getAttribute("loggedIn").equals("admin")) {
// 	     response.sendRedirect("admin.jsp");
// 	} else if(!session.getAttribute("loggedIn").equals("user")) {
// 	     response.sendRedirect("index.jsp");
// 	}
%>
<form method="post" action="EditPersonalProfile_action.jsp" name="editUser"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" id="t01" >
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName" value=<%=user.getFirstName()%>><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName" value=<%=user.getLastName()%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input value=<%=user.getUsername()%> readonly></td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password" value=<%=user.getPassword()%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input value=<%=user.getTypeOfUser()%> readonly> </td>
</tr>

<tr>
<td style="vertical-align: top;"><input value="Edit"
name="Edit" type="submit" style="color: white; background-color:black; padding:3px; float:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Cancel"
name="Reset" type="reset" style="color: white; background-color:black; padding:3px; float:center"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.mario.interfaces.*" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Menu</title>
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
<% AccountUI ui = (AccountUI)session.getAttribute("ui");
AccountController acctCtr = ui.getAccountController();
Admin a = (Admin)acctCtr.getAcct();
AdminFuncController ac = new AdminFuncController(a);
session.setAttribute("ac", ac );
%>
<header>
<div class="container">
<div class="logo">
	<img src="logo.PNG" width="65" alt="" title="">
</div>
<nav>
<li><a href="LogOff.jsp"><strong><%=a.getUsername()%>|Logout</strong></a></li>
</nav>
<h1>Choose My College</h1>
</div>
</header>
<!-- <form method="post" action="LogOff.jsp" name="LogOff">
    <input name="Logout" type="submit" value="Logout">
</form> -->
<div class="container">
<div class="content">
<h2>Main Menu</h2>
<ul class="a">
<li><a href="ViewUniversities.jsp">Manage University</a></li>
<li><a href="manage_Users.jsp">Manage Users</a></li>
</ul>

</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>

</html>
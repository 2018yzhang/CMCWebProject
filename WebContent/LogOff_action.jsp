<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Log out Page</title>
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
.content marquee{
	color:#ff4719
}
.content h2{
color:black;
background: #f1f1c1;
padding:10px;
border-radius:Spx;
margin-bottom:20px;
}
.content p{
color:black;
}
</style>
</head>
<body>
<header>
<div class="container">
<div class="logo">
	<img src="welcom2.png" width="65" alt="" title="">
</div>
<h1>Choose Your College</h1>
</div>
</header>
<div class="container">
<div class="content">
<h3><marquee>See you next time!</marquee></h3>
<h2>Log Out</h2>
<p>You have logged out successfully!</p>
<br>
<p><a href="Login.jsp">Click</a> here to log back in.</p>
</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>
</html>
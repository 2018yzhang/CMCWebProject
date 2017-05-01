<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome Home Page</title>
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
.content form{
float: left;
width: 266px;
}
table#t01{
color:black;
background-color:#f1f1c1;
}
.content article{
float: right;
width: 300px;
background-color: black;
padding:20px;
border:radius:10px;
}
</style>
</head>
<body >
<header>
<div class="container">
<div class="logo">
	<img src="logo.PNG" width="65" alt="" title="">
</div>
<nav>
<li><a href="Login.jsp">Login</a></li>
</nav>

<h1>Choose Your College</h1>
</div>
</header>
<div class="container">
<div class="content">
<h2>Welcome</h2>
<form method="post" action="Signup_Admin.jsp" name="Signup" ><br>
<table style="text-align: left; width: 266px; height: 228px; "
id="t01">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br></td>
<td style="vertical-align: top;"><input name="Firstname"> </td>
<td style="vertical-align: top;">Last Name<br></td>
<td style="vertical-align: top;"><input name="Lastname"> </td>
</tr>
<tr>
<td style="vertical-align: top;">User name<br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input type="password" name="Password"> </td>
</tr>

<td style="vertical-align: top; "><input value="Create Account"
name="Signup" type="submit" style="color: white; background-color:black; padding:3px; float:left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Cancel"
name="Reset" type="reset" style="color: white; background-color:black; padding:3px;float: right;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"></td>
</tr>
</tbody>
</table>
<br>
</form>
<article><p>Mario Choose System helps high school students 
and parents to learn more about universities in the United States.</p>
<p>Let us help you find your wonderful future!</p></article>
</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>
</html>
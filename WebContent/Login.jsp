<html>
<head>

<title>Login Page</title>
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
.content marquee{
	color:#ff4719
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
<marquee>Welcome Back Mario Great User!</marquee>
<h2>Login</h2>
<form method="post" action="Login_action.jsp" name="Log in" ><br>
<table style="text-align: left; width: 266px; height: 200px; "
id="t01">
<tbody>
<tr>
<td style="vertical-align: top;">User name<br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input type="password" name="Password"> </td>
</tr>

<td style="vertical-align: top;"><input value="Log in"
name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Cancel"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
</form>
<br>
</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>
</html>
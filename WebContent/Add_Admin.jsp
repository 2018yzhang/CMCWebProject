<html>
<head>

<title>Add User Form</title>
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
 li{
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
<!-- <form method="post" action="LogOff.jsp" name="LogOff">
    <input name="Logout" type="submit" value="Logout">
</form> -->
<div class="container">
<div class="content">
<ul>
<li class="dropdown">
<a href="Admin_Menu.jsp" class="dropbtn"><strong>Main Menu</strong></a>
    <div class="dropdown-content">
      <a href="manage_Universities.jsp">Manage Universities</a>
      <a href="manage_Users.jsp">Manage Users</a>
    </div>
  </li>
</ul>
<br>
<h3>
Add User form</h3><br>
<form method="post" action="Add_action_Admin.jsp" name="addUser"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2" id="t01">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="Status" value="Y" readonly> </td>
</tr>

<tr>
<td style="vertical-align: top; "><input value="Add"
name="Add" type="submit" style="color: white; background-color:black; padding:3px; float:left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Cancel"
name="Reset" type="reset" style="color: white; background-color:black; padding:3px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

</tr>
</tbody>
</table>
<br>
</form>
<br>
<%	
String anyErrors = request.getParameter("Error");

if (anyErrors!=null&&anyErrors.equals("1")){
	out.println("<script type=\"text/javascript\">");
	   out.println("alert('Deactive Error');");
	   out.println("window.location='manage_Users.jsp';");
	   out.println("</script>");
}
if(anyErrors!=null&&anyErrors.equals("2")){
out.println("<script type=\"text/javascript\">");
out.println("alert('The type of user can only be 'u'(user) or 'a'(admin)!');");
out.println("window.location='Add_Admin.jsp';");
out.println("</script>");
}
if (anyErrors!=null&&anyErrors.equals("3")){
	 out.println("<script type=\"text/javascript\">");
	   out.println("alert('Unknown Error');");
	   out.println("window.location='Add_Admin.jsp';");
	   out.println("</script>");
}

%>
</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>
</html>


<html>
<head>
<title>Add Unviersity Form</title>
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
	<img src="welcom2.png" width="65" alt="" title="">
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
<a href="Admin_Menu.jsp" class="dropbtn"><strong>Main Menu</strong></a>
    <div class="dropdown-content">
      <a href="ViewUniversities.jsp">Manage Universities</a>
      <a href="manage_Users.jsp">Manage Users</a>
    </div>
  </li>
</ul>
<h3>Add University </h3>
<form method="post" action="AddUniversityAdmin_action.jsp" name="addUniversity"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2" id="t01">
<tbody>
<tr>
<td style="vertical-align: top;">School Name<br>
</td>
<td style="vertical-align: top;"><input name="SchoolName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><input name="State"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input name="Location"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input name="Control"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Students<br>
</td>
<td style="vertical-align: top;"><input name="NumOfStu"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent of Females<br>
</td>
<td style="vertical-align: top;"><input name="PerFem"> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal Score<br>
</td>
<td style="vertical-align: top;"><input name="SatVerbal"> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math Score<br>
</td>
<td style="vertical-align: top;"><input name="SatMath"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Price<br>
</td>
<td style="vertical-align: top;"><input name="Price"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Financial Aid<br>
</td>
<td style="vertical-align: top;"><input name="FinAid"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number of Applicants<br>
</td>
<td style="vertical-align: top;"><input name="NumOfApp"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Admitted<br>
</td>
<td style="vertical-align: top;"><input name="PerAdmit"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Enrolled<br>
</td>
<td style="vertical-align: top;"><input name="PerEnroll"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Academic Scale Rating<br>
</td>
<td style="vertical-align: top;"><input name="AcademicScale"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Social Scale Rating<br>
</td>
<td style="vertical-align: top;"><input name="SocialScale"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Life Scale Rating<br>
</td>
<td style="vertical-align: top;"><input name="LifeScale"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Popular Majors<br>
</td>
<td style="vertical-align: top;"><input name="PopMajors1"> 
<input name="PopMajors2"><br>
<input name="PopMajors3"><br>
<input name="PopMajors4"><br>
<input name="PopMajors5"><br>

</td>

</tr>
<tr>
<td style="vertical-align: top;"><input value="Add"
name="Add" type="submit" style="color: white; background-color:black; padding:3px; float:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset" style="color: white; background-color:black; padding:3px; float:center"></td>
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


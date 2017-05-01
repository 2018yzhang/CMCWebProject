<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<html>
<head>
<title>Manage Users</title>
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
<%
	AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");

%>
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
      <a href="ViewUniversities.jsp">Manage Universities</a>
      <a href="manage_Users.jsp">Manage Users</a>
    </div>
  </li>
</ul>
<br>
<h3>Manage Users</h3>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2" id="t01">
<tbody>
<tr align="center">

<td colspan="10" rowspan="1" style="vertical-align: top;"><a
href="Add_Admin.jsp">ADD A USER</a>
</td>
</tr>
<tr>
<td style="vertical-align: top;">
Edit</td>
<td style="vertical-align: top; text-align: center;">First
</td>
<td style="vertical-align: top; text-align: center;">Last
</td>
<td style="vertical-align: top; text-align: center;">Username
</td>
<td style="vertical-align: top; text-align: center;">Password
</td>
<td style="vertical-align: top; text-align: center;">Type
</td>
<td style="vertical-align: top; text-align: center;">Status
</td>
<td style="vertical-align: top;">Deactivate
</td>
<td style="vertical-align: top;">Reactivate
</td>
<td style="vertical-align: top;">Delete
</td>
</tr>

<tr>
<%
	List<Account> usrList = ac.viewAccount();
%>

<tr>
         	<% for(int c = 0;c<usrList.size();c++) { %>
         	<td style="vertical-align: top;">
<form method="post" action="Edit_Admin.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit" style="color: white; background-color:black; padding:3px; float:center">
    <input name="Username" value="<%= usrList.get(c).getUsername()%>" type="hidden">
    <input name="Firstname" value="<%= usrList.get(c).getFirstName()%>" type="hidden">
    <input name="Lastname" value="<%= usrList.get(c).getLastName()%>" type="hidden">
    <input name="Password" value="<%=usrList.get(c).getPassword()%>" type="hidden">
    <input name="Type" value="<%= usrList.get(c).getTypeOfUser()%>" type="hidden">
    <input name="Status" value="<%= usrList.get(c).getStatus()%>" type="hidden">
</form>
</td>
               <td><%=usrList.get(c).getFirstName()%></td>
               <td><%=usrList.get(c).getLastName()%></td>
                <td><%=usrList.get(c).getUsername()%></td>
                <td><%=usrList.get(c).getPassword()%></td>
                <td><%=usrList.get(c).getTypeOfUser()%></td>
                <td><%=usrList.get(c).getStatus()%></td>
                <td style="vertical-align: top;">

<form >
      <input name="Deactive" value="Deactivate" type="submit" onclick="if (confirm('Are you sure you want to deactivate this account?')) { form.method='post'; form.action='Deactive_Admin.jsp'; } else { return false; }" 
      style="color: white; background-color:black; padding:3px; float:center">
    <input name="Username" value="<%= usrList.get(c).getUsername()%>" type="hidden">
   
</form>
<td style="vertical-align: top;">
<form >
      <input name="Reactive" value="Reactivate" type="submit" onclick="if (confirm('Are you sure you want to reactivate?')) { form.method='post'; form.action='Reactive_Admin.jsp'; } else { return false; }"
      style="color: white; background-color:black; padding:3px; float:center">
    <input name="Username" value="<%= usrList.get(c).getUsername()%>" type="hidden">
   
</form>
<td style="vertical-align: top;">
<form >
      <input name="Delete" value="Delete" type="submit" onclick="if (confirm('Are you sure you want to delete?')) { form.method='post'; form.action='Delete_Admin.jsp'; } else { return false; }"
      style="color: white; background-color:black; padding:3px; float:center">
    <input name="Username" value="<%= usrList.get(c).getUsername()%>" type="hidden">
   
</form>
</td>
                </tr>
            <% } 
            %>
        
<!-- <td style="vertical-align: top;">??? -->
<!-- </td> -->
<!-- <td style="vertical-align: top;">??? -->
<!-- </td> -->
<!-- <td style="vertical-align: top;">??? -->
<!-- </td> -->
<!-- <td style="vertical-align: top;">??? -->
<!-- </td> -->
<!-- <td style="vertical-align: top;">??? -->
<!-- </td> -->

</tr>
</tbody>
</table>
</div>
</div>
<footer>
Copyright &copy; MarioChoose.com
</footer>
</body>
</html>


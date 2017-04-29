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
.content h2{
color:black;
background: #f1f1c1;
padding:10px;
border-radius:Spx;
margin-bottom:20px;
}
.content h2 a{
text-decoration: none;
}
table#t01{
color:black;
background-color:#f1f1c1;
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
<h2><a href="Admin_Menu.jsp">Main Menu</a></h2>
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
    <input name="Edit" value="Edit" type="submit">
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
      <input name="Deactive" value="Deactivate" type="submit" onclick="if (confirm('Are you sure you want to deactivate this account?')) { form.method='post'; form.action='Deactive_Admin.jsp'; } else { return false; }">
    <input name="Username" value="<%= usrList.get(c).getUsername()%>" type="hidden">
   
</form>
<td style="vertical-align: top;">
<form >
      <input name="Reactive" value="Reactivate" type="submit" onclick="if (confirm('Are you sure you want to reactivate?')) { form.method='post'; form.action='Reactive_Admin.jsp'; } else { return false; }">
    <input name="Username" value="<%= usrList.get(c).getUsername()%>" type="hidden">
   
</form>
<td style="vertical-align: top;">
<form >
      <input name="Delete" value="Delete" type="submit" onclick="if (confirm('Are you sure you want to delete?')) { form.method='post'; form.action='Delete_Admin.jsp'; } else { return false; }">
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


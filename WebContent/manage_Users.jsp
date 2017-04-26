<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<html>
<head>
<title></title>
</head>
<%
	AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");

%>
<form method="post" action="LogOff.jsp" name="LogOff">
    <input name="Logout" type="submit" value="Logout">
</form>
<td colspan="8" rowspan="1"><a
href="Admin_Menu.jsp">Go Back To Main Menu</a>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><a
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
<td style="vertical-align: top;">Deactive
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
<script type="text/javascript">

function sub1(){
    var r = confirm('Are you sure you want to deactive this user?');
    if(r==true){
    	 var f = document.Deactive;
    	 f.method = "post";
    	 f.action="Deactive_Admin.jsp";
    	 f.submit();
    }
    else{
    	
    }
}
</script>
<form method="post" name="Deactive" action="Deactive_Admin.jsp" onclick="sub1();" >
      <input name="Deactive" value="Deactive" type="submit">
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
</body>
</html>


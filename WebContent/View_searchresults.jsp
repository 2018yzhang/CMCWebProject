<%@page language="java" import="java.util.ArrayList"
	import="java.util.List" import="cmc.mario.controllers.*"
	import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"
	import="java.util.ArrayList"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<%
List<University> ayee = (List<University>)request.getSession().getAttribute("results");
//System.out.println(ayee.size());
// for(int i =0; i<ayee.size();i++){
//	University x = ayee.get(i);
University x= new University();

for(int i =0; i<ayee.size();i++){
	x=ayee.get(i);

	%>
		

<tr>
<td style="vertical-align: top;">save<br>
</td>
<td style="vertical-align: top;"> <%=x.getSchoolName()%><br>
</td>

<td style="vertical-align: top;">view<br>
</td>
</tr>
<%} %>
</tbody>

</table>
</body>
</html>
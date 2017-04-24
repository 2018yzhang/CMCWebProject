<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" 
import ="java.util.*"%>
<%
%>
<html>
<head>

<title>Manage Universities  Form</title>
</head>
<body>
<a href="AddUniversityAdmin.jsp">Add University</a> <br>
<br>
View Universities form:<br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<% 
	DBController db = new DBController();
	List<University> list = db.getUniversities();
	for(int i = 0;i<list.size();i++){
		out.println("<tr>");
		for(int k = 0 ; k <17;k++){
			if(k==0){
				out.print("<td>"+list.get(i).getSchoolName()+"</td>");
			}
			else if(k==1){
				out.print("<td>"+list.get(i).getLocation()+"</td>");
			}
			else if(k==2){
				out.print("<td>"+list.get(i).getControl()+"</td>");
			}
			else if(k==3){
				out.print("<td>"+list.get(i).getNumOfStu()+"</td>");
			}
			else if(k==4){
				out.print("<td>"+list.get(i).getPerFem()+"</td>");
			}
			else if(k==5){
				out.print("<td>"+list.get(i).getSatVerbal()+"</td>");
			}
			else if(k==6){
				out.print("<td>"+list.get(i).getSatMath()+"</td>");
			}
			else if(k==7){
				out.print("<td>"+list.get(i).getPrice()+"</td>");
			}
			else if(k==8){
				out.print("<td>"+list.get(i).getFinAid()+"</td>");
			}
			else if(k==9){
				out.print("<td>"+list.get(i).getNumOfApp()+"</td>");
			}
			else if(k==10){
				out.print("<td>"+list.get(i).getPerAdmit()+"</td>");
			}
			else if(k==11){
				out.print("<td>"+list.get(i).getPerEnroll()+"</td>");
			}
			else if(k==12){
				out.print("<td>"+list.get(i).getAcademicScale()+"</td>");
			}
			else if(k==13){
				out.print("<td>"+list.get(i).getSocialScale()+"</td>");
			}
			else if(k==14){
				out.print("<td>"+list.get(i).getLifeScale()+"</td>");
			}
			else if(k==15){
				out.print("<td>"+list.get(i).getPopMajors()+"</td>");
			}

		}
		out.println("</tr>");
	}
	
%>

</tbody>
</table>
<br>
<br>
</body>
</html>


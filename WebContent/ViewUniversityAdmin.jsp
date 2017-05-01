
<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<html>
<head>
<title>Edit University</title>
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
<%
	AdminFuncController ac = (AdminFuncController)session.getAttribute("uc");
	int numOfStu1,perFem1,satVerbal1,satMath1,price1,finAid1,numOfApp1,perAdmit1,perEnroll1;
	double academicScale1,socialScale1,lifeScale1;
	String schoolName =request.getParameter("SchoolName");
	String state = request.getParameter("State");
	String location =request.getParameter("Location");
	String control =request.getParameter("Control");
	String numOfStu =request.getParameter("NumberOfStudents");
	String perFem =request.getParameter("PercentOfFemales");
	String satVerbal =request.getParameter("SATVerbal");
	String satMath =request.getParameter("SATMath");
	String price =request.getParameter("Price");	
	String finAid =request.getParameter("FinancialAid");
	String numOfApp =request.getParameter("NumberofApplicants");
	String perAdmit =request.getParameter("PercentAdmitted");
	String perEnroll =request.getParameter("PercentEnrolled");
	String academicScale =request.getParameter("AcademicScale");
	String socialScale =request.getParameter("SocialScale");	
	String lifeScale =request.getParameter("QualityofLife");
	String popMajors = request.getParameter("Emphasis");
// 	List<String> popMajors2 = new ArrayList<String>();
// 	for(int i=0;i<popMajors.length();i++){
// 		if(popMajors.charAt(i)==' '||popMajors.charAt(i)==','){
// 			int lastSpaceOrComma=i;
// 			String major = popMajors.substring(i-lastSpaceOrComma,i);
// 			popMajors2.add(major);
// 		}
// 	}
// 	String[] popMajors1 = new String[popMajors2.size()];

// 	for(int i = 0;i<popMajors2.size();i++){
// 		String major =popMajors2.get(i);
	
// 		popMajors1[i]=major;
		
// 	}	  
/* System.out.println("********************************************************************************************************");
	System.out.println("schoo1 Name VIEW UNIVERSITY ADMIN	:"+schoolName);
	System.out.println("state1 VIEW UNIVERSITY ADMIN	:"+state);
	System.out.println("location1 VIEW UNIVERSITY ADMIN	:"+location);
	System.out.println("control1 VIEW UNIVERSITY ADMIN	:"+control);
	System.out.println("numOfStu VIEW UNIVERSITY ADMIN	:"+numOfStu);
		  	System.out.println("perFem VIEW UNIVERSITY ADMIN	:"+perFem);
		  	System.out.println("satVerbal VIEW UNIVERSITY ADMIN	:"+satVerbal);
		  	System.out.println("satMath VIEW UNIVERSITY ADMIN	:"+satMath);
		  	System.out.println("price VIEW UNIVERSITY ADMIN	:"+price);
		  	System.out.println("finAid VIEW UNIVERSITY ADMIN	:"+finAid);
		  	System.out.println("numOfApp VIEW UNIVERSITY ADMIN	:"+numOfApp);
		  	System.out.println("perAdmit VIEW UNIVERSITY ADMIN	:"+perAdmit);
		  	System.out.println("perEnroll VIEW UNIVERSITY ADMIN	:"+perEnroll);
		  	System.out.println("socialScale VIEW UNIVERSITY ADMIN	:"+socialScale);
		  	System.out.println("lifeScale VIEW UNIVERSITY ADMIN	:"+lifeScale);
		  	System.out.println("academicScale VIEW UNIVERSITY ADMIN	:"+academicScale); */
	String anyErrors = request.getParameter("Error");
	if (anyErrors!=null&&anyErrors.equals("1")){
	out.print("Unable to edit University");}
%>
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
<h3>Edit University</h3>
<form method="post" action="ViewUniversityAdmin_action.jsp" name="editUniversity">
<table style="text-align: left; width: 266px; height: 228px;"
border="1" id="t01" >
<tbody>
<tr>
<td style="vertical-align: top;">School Name<br>
</td>
<td style="vertical-align: top;"><input name="SchoolName" value=<%=schoolName%>  >
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><input name="State" value=<%=state%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input name = "Location" value=<%=location%> ></td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input name="Control" value=<%=control%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number Of Students<br>
</td>
<td style="vertical-align: top;"><input name="NumberOfStudents" value=<%=numOfStu%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Of Females<br>
</td>
<td style="vertical-align: top;"><input name="PercentOfFemales" value=<%=perFem%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><input name="SATVerbal" value=<%=satVerbal%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><input name="SATMath" value=<%=satMath%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Price<br>
</td>
<td style="vertical-align: top;"><input name = "Price" value=<%=price%> ></td>
</tr>
<tr>
<td style="vertical-align: top;">Financial Aid<br>
</td>
<td style="vertical-align: top;"><input name="FinancialAid" value=<%=finAid%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Number Of Applicants<br>
</td>
<td style="vertical-align: top;"><input name="NumberofApplicants" value=<%=numOfApp%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Admitted<br>
</td>
<td style="vertical-align: top;"><input name="PercentAdmitted" value=<%=perAdmit%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Enrolled<br>
</td>
<td style="vertical-align: top;"><input name = "PercentEnrolled" value=<%=perEnroll%> ></td>
</tr>
<tr>
<td style="vertical-align: top;">Academic Scale<br>
</td>
<td style="vertical-align: top;"><input name="AcademicScale" value=<%=academicScale%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Social Scale<br>
</td>
<td style="vertical-align: top;"><input name="SocialScale" value=<%=socialScale%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Quality Of Life<br>
</td>
<td style="vertical-align: top;"><input name="QualityOfLife" value=<%=lifeScale%>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Emphasis<br>
</td>
<td style="vertical-align: top;"><input name="Emphasis" value=<%=popMajors%>> </td>
</tr>


<tr>
<td style="vertical-align: top;"><input value="Edit"
name="Edit" type="submit" style="color: white; background-color:black; padding:3px; float:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

<td style="vertical-align: top;"><input value="Reset"
name="Cancel" type="reset" style="color: white; background-color:black; padding:3px; float:center"></td>
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
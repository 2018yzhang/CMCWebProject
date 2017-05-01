
<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<html>
<head>
<title></title>
</head>
<%

	out.print("View/Edit University");
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
System.out.println("********************************************************************************************************");
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
		  	System.out.println("academicScale VIEW UNIVERSITY ADMIN	:"+academicScale);
	String anyErrors = request.getParameter("Error");
	if (anyErrors!=null&&anyErrors.equals("1")){
	out.print("Unable to edit University");}
	

%>
<body>
<form method="post" action="LogOff.jsp" name="LogOff">
    <input name="Logout" type="submit" value="Logout">
</form>
<br>
<form method="post" action="ViewUniversityAdmin_action.jsp" name="editUniversity"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
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
name="Edit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>

</tbody>
</table>
<br>

<br>
</body>
</html>
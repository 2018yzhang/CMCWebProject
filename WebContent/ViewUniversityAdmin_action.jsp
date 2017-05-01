<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<%
	Account a = (Account)session.getAttribute("a");
	AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");
	int numOfStu1,perFem1,satVerbal1,satMath1,price1,finAid1,numOfApp1,perAdmit1,perEnroll1;
	double academicScale1,socialScale1,lifeScale1;
	boolean noName = false;
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
	String lifeScale =request.getParameter("QualityOfLife");
	String popMajors = request.getParameter("Emphasis");


 		 numOfStu1 =Integer.parseInt(numOfStu);
			 perFem1=Integer.parseInt(perFem);
			 satVerbal1=Integer.parseInt(satVerbal);
			 satMath1=Integer.parseInt(satMath);
			 price1=Integer.parseInt(price);
			 finAid1=Integer.parseInt(finAid);
			 numOfApp1=Integer.parseInt(numOfApp);
			 perAdmit1=Integer.parseInt(perAdmit);
			 perEnroll1=Integer.parseInt(perEnroll);
			 socialScale1=Double.parseDouble(socialScale);
			 lifeScale1=Double.parseDouble(lifeScale);
		  	academicScale1=Double.parseDouble(academicScale);
		  	System.out.println("********************************************************************************************************");
		  	System.out.println("schoo1 Name VIEW UNIVERSITY ADMIN:"+schoolName);
		  	System.out.println("state1 VIEW UNIVERSITY ADMIN	:"+state);
		  	System.out.println("location1 VIEW UNIVERSITY ADMIN	:"+location);
		  	System.out.println("control1 VIEW UNIVERSITY ADMIN	:"+control);
		  	System.out.println("numOfStu1 VIEW UNIVERSITY ADMIN	:"+numOfStu1);
		  	System.out.println("perFem1 VIEW UNIVERSITY ADMIN	:"+perFem1);
		  	System.out.println("satVerbal1 VIEW UNIVERSITY ADMIN:"+satVerbal1);
		  	System.out.println("satMath1 VIEW UNIVERSITY ADMIN	:"+satMath1);
		  	System.out.println("price1 VIEW UNIVERSITY ADMIN	:"+price1);
		  	System.out.println("finAid1 VIEW UNIVERSITY ADMIN	:"+finAid1);
		  	System.out.println("numOfApp1 VIEW UNIVERSITY ADMIN	:"+numOfApp1);
		  	System.out.println("perAdmit1 VIEW UNIVERSITY ADMIN	:"+perAdmit1);
		  	System.out.println("perEnroll1 VIEW UNIVERSITY ADMIN:"+perEnroll1);
		  	System.out.println("socialScale1 VIEW UNIVERSITY ADMIN:"+socialScale1);
		  	System.out.println("lifeScale1 VIEW UNIVERSITY ADMIN:"+lifeScale1);
		  	System.out.println("academicScale1 VIEW UNIVERSITY ADMIN:"+academicScale1);

	DBController db = new DBController();
	boolean editComplete = db.editUniversity(schoolName, state, location, control, numOfStu1, perFem1, satVerbal1, satMath1, price1, finAid1, numOfApp1, perAdmit1, perEnroll1, academicScale1, socialScale1, lifeScale1);
	System.out.println("DID IT FREAKING ADD"+editComplete);
	if(editComplete == true){
		response.sendRedirect("ViewUniversities.jsp");}
	else{
		response.sendRedirect("ViewUniversityAdmin.jsp?Error=1AlreadyExistingUniversityOrIncorrectInputs");
	}
%>
<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<%
	Account a = (Account)session.getAttribute("a");
	AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");
	int numOfStu1,perFem1,satVerbal1,satMath1,price1,finAid1,numOfApp1,perAdmit1,perEnroll1;
	double academicScale1,socialScale1,lifeScale1;
	boolean noName = false;
	String schoolName =request.getParameter("SchoolName1");
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
	String[] poplist = {popMajors};
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
		 

	DBController db = new DBController();
	boolean editComplete = db.editUniversity(schoolName, state, location, control, numOfStu1, perFem1, satVerbal1, satMath1, price1, finAid1, numOfApp1, perAdmit1, perEnroll1, academicScale1, socialScale1, lifeScale1);
	db.setEmphasisForUniversity(schoolName, poplist);
	if(editComplete == true){
		response.sendRedirect("ViewUniversities.jsp");}
	else{
		response.sendRedirect("ViewUniversityAdmin.jsp?Error=1AlreadyExistingUniversityOrIncorrectInputs");
	}
%>
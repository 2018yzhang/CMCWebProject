<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"
import = "java.util.*"%>
<%
	//AccountUI ui = (AccountUI)session.getAttribute("ui");
	int numOfStu1,perFem1,satVerbal1,satMath1,price1,finAid1,numOfApp1,perAdmit1,perEnroll1;
	double academicScale1,socialScale1,lifeScale1;
	boolean noName = false;
	String schoolName =request.getParameter("SchoolName");
	String state = request.getParameter("State");
	String location =request.getParameter("Location");
	String control =request.getParameter("Control");
	String numOfStu =request.getParameter("NumOfStu");
	String perFem =request.getParameter("PerFem");
	String satVerbal =request.getParameter("SatVerbal");
	String satMath =request.getParameter("SatMath");
	String price =request.getParameter("Price");	
	String finAid =request.getParameter("FinAid");
	String numOfApp =request.getParameter("NumOfApp");
	String perAdmit =request.getParameter("PerAdmit");
	String perEnroll =request.getParameter("PerEnroll");
	String academicScale =request.getParameter("AcademicScale");
	String socialScale =request.getParameter("SocialScale");	
	String lifeScale =request.getParameter("LifeScale");
	String popMajors = request.getParameter("PopMajors1");
	String popMajors1 = request.getParameter("PopMajors2");
	String popMajors2 = request.getParameter("PopMajors3");
	String popMajors3 = request.getParameter("PopMajors4");
	String popMajors4 = request.getParameter("PopMajors5");
	String[] popList={popMajors,popMajors1,popMajors2,popMajors3,popMajors4};
	


 	if(schoolName==""||schoolName==null||schoolName==""){
		
 	}
 	 if(state==""||state==null){
 		state=Integer.toString(-1);
 	}
 	 if(location==""||location==null){
 		location=Integer.toString(-1);
 	}
 	 if(control==""||control==null){
 		control=Integer.toString(-1);
 	} 	
 	 if(numOfStu==""||numOfStu == null||numOfStu instanceof String){
 		 numOfStu1=-1;
 	}
 	 else{
 		 numOfStu1 =Integer.parseInt(numOfStu);
 	 }
	 if(perFem==""||perFem == null||perFem instanceof String){
		 perFem1=-1;
 	}
	 else{
			 perFem1=Integer.parseInt(perFem);
	 }
	 if(satVerbal==""||satVerbal == null||satVerbal instanceof String){
		 satVerbal1=-1;
 	}
	 else{
			 satVerbal1=Integer.parseInt(satVerbal);
	 }
	 if(satMath==""||satMath == null||satMath instanceof String){
 		 satMath1=-1;
 	}
	 else{
			 satMath1=Integer.parseInt(satMath);
	 }
	 if(price==""||price == null|| price instanceof String){
 		 price1=-1;
 	}
	 else{
			 price1=Integer.parseInt(price);
	 }
	 if(finAid==""||finAid == null|| finAid instanceof String){
		 finAid1=-1;
 	}
	 else{
			 finAid1=Integer.parseInt(finAid);
	 }
	 if(numOfApp==""||numOfApp == null||numOfApp instanceof String){
 		 numOfApp1=-1;
 	}
	 else{
			 numOfApp1=Integer.parseInt(numOfApp);
	 }
	 if(perAdmit==""||perAdmit == null|| perAdmit instanceof String){
 		 perAdmit1=-1;
 	}
	 else{
			 perAdmit1=Integer.parseInt(perAdmit);
	 }
	 if(perEnroll==""||perEnroll == null||perEnroll instanceof String){
		 perEnroll1=-1;
 	}
	 else{
			 perEnroll1=Integer.parseInt(perEnroll);
	 }
	 if(socialScale==""||socialScale == null||socialScale instanceof String){
 		 socialScale1=-1;
 	}
	 else{
			 socialScale1=Double.parseDouble(socialScale);
			
	 }
	 if(lifeScale==""||lifeScale == null||lifeScale instanceof String){
 		 lifeScale1=-1;
 	}
	 else{
			 lifeScale1=Double.parseDouble(lifeScale);
	 }

	 if(academicScale==""||academicScale == null||academicScale instanceof String){
 		 academicScale1=-1;
 	}
	 else{
		  academicScale1=Double.parseDouble(academicScale);
	
	 }
 	
 	
 	
		
	


	//User u = new User(fname, lname,uname,password);
	//session.setAttribute("username", uname);
	DBController db = new DBController();
	boolean a = false;
 	if(schoolName.equals("")||schoolName==null||schoolName.trim().isEmpty()){
		a =false;
 	}
 	else{
 		 a = db.addUniversity(schoolName, state, location, control, numOfStu1, perFem1, satVerbal1, satMath1, price1, finAid1, numOfApp1, perAdmit1, perEnroll1, academicScale1, socialScale1, lifeScale1,popList);
 		db.setEmphasisForUniversity(schoolName, popList);
 	}
	
	if(a==false){

		response.sendRedirect("AddUniversityAdmin.jsp");
		out.println("University has not been added");
	
	}
	else{
		out.println("University has been successfully added");
		response.sendRedirect("ViewUniversities.jsp");
	}
%>
<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"
import = "java.util.*"%>
<%
	//AccountUI ui = (AccountUI)session.getAttribute("ui");
	String schoolName =request.getParameter("SchoolName");
	String state = request.getParameter("State");
	String location =request.getParameter("Location");
	String control =request.getParameter("Control");
	String numOfStu =request.getParameter("NumOfStu");
	int numOfStu1=Integer.parseInt(numOfStu);
	String perFem =request.getParameter("PerFem");
	int perFem1=Integer.parseInt(perFem);
	String satVerbal =request.getParameter("SatVerbal");
	int satVerbal1=Integer.parseInt(satVerbal);
	String satMath =request.getParameter("SatMath");
	int satMath1=Integer.parseInt(satMath);
	String price =request.getParameter("Price");	
	int price1=Integer.parseInt(price);
	String finAid =request.getParameter("FinAid");
	int finAid1=Integer.parseInt(finAid);
	String numOfApp =request.getParameter("NumOfApp");
	int numOfApp1=Integer.parseInt(numOfApp);
	String perAdmit =request.getParameter("PerAdmit");
	int perAdmit1=Integer.parseInt(perAdmit);
	String perEnroll =request.getParameter("PerEnroll");
	int perEnroll1=Integer.parseInt(perEnroll);
	String academicScale =request.getParameter("AcademicScale");
	double academicScale1=Double.parseDouble(academicScale);
	String socialScale =request.getParameter("SocialScale");	
	double socialScale1=Double.parseDouble(socialScale);
	String lifeScale =request.getParameter("LifeScale");
	double lifeScale1=Double.parseDouble(lifeScale);
	String popMajors = request.getParameter("PopMajors");

	List<String> popMajors2 = new ArrayList<String>();
	for(int i=0;i<popMajors.length();i++){
		if(popMajors.charAt(i)==' '||popMajors.charAt(i)==','){
			int lastSpaceOrComma=i;
			String major = popMajors.substring(i-lastSpaceOrComma,i);
			popMajors2.add(major);
		}
	}
	String[] popMajors1 = new String[popMajors2.size()];

	for(int i = 0;i<popMajors2.size();i++){
		String major =popMajors2.get(i);
	
		popMajors1[i]=major;
		
	}
		
	


	//User u = new User(fname, lname,uname,password);
	//session.setAttribute("username", uname);
	DBController db = new DBController();
	boolean a = db.addUniversity(schoolName, state, location, control, numOfStu1, perFem1, satVerbal1, satMath1, price1, finAid1, numOfApp1, perAdmit1, perEnroll1, academicScale1, socialScale1, lifeScale1,popMajors1);
	if(a==false){
		response.sendRedirect("AddUniversity.jsp");
	
	}
	else{
		response.sendRedirect("ViewUniversities.jsp");
	}
%>
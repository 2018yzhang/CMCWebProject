<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*"
import = "java.util.*"%>
<%@page errorPage="AddUniversityErrorPage.jsp" %>
<%
	AdminFuncController ac = (AdminFuncController)session.getAttribute("ac");
	boolean noName = false;
	String schoolName =request.getParameter("SchoolName");
	String state = request.getParameter("State");
	String location =request.getParameter("Location");
	String control =request.getParameter("Control");
	String numOfStu1 =request.getParameter("NumOfStu");
	String perFem1 =request.getParameter("PerFem");
	String satVerbal1 =request.getParameter("SatVerbal");
	String satMath1 =request.getParameter("SatMath");
	String price1 =request.getParameter("Price");	
	String finAid1=request.getParameter("FinAid");
	String numOfApp1 =request.getParameter("NumOfApp");
	String perAdmit1 =request.getParameter("PerAdmit");
	String perEnroll1 =request.getParameter("PerEnroll");
	String academicScale1 =request.getParameter("AcademicScale");
	String socialScale1 =request.getParameter("SocialScale");	
	String lifeScale1 =request.getParameter("LifeScale");
	String popMajors = request.getParameter("PopMajors1");
	String popMajors1 = request.getParameter("PopMajors2");
	String popMajors2 = request.getParameter("PopMajors3");
	String popMajors3 = request.getParameter("PopMajors4");
	String popMajors4 = request.getParameter("PopMajors5");
	ArrayList<String> arr = new ArrayList<String>();
	arr.add(popMajors);
	arr.add(popMajors1);
	arr.add(popMajors2);
	arr.add(popMajors3);
	arr.add(popMajors4);
	//System.out.println(arr.size());
	String[] test=new String[arr.size()];
for(int i =0; i<arr.size();i++ ){
test[i]=arr.get(i);
}
if(test[0]==""&&test[1]==""&&test[2]==""&&test[3]==""&&test[4]=="")
{
test = new String[0];
}
	boolean i = ac.addUniversity(schoolName, state, location, control, numOfStu1, perFem1, satVerbal1, satMath1, price1, finAid1, numOfApp1, perAdmit1, perEnroll1, academicScale1, socialScale1, lifeScale1,test);
	if(i==true){
		response.sendRedirect("ViewUniversities.jsp");
	}
	else{
		out.println("Unknown Error");
	}
%>
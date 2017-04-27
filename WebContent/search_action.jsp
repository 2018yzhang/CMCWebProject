<%@page language="java" import="java.util.ArrayList" import="java.util.List" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>

<% 
	AccountUI ui = (AccountUI)session.getAttribute("ui");
	AccountController acctCtr = ui.getAccountController();
	User user = (User)acctCtr.getAcct();
	UserUI usr = new UserUI(user); 
	String schoolname = request.getParameter("schoolname");
	String state = request.getParameter("state");
	String location = request.getParameter("location");
	String control = request.getParameter("control");
	int numStuMax = Integer.parseInt(request.getParameter("numStuMax"));
	int numStuMin = Integer.parseInt(request.getParameter("numStuMin"));
	int numFemMin = Integer.parseInt(request.getParameter("numFemMin"));
	int numFemMax = Integer.parseInt(request.getParameter("numFemMax"));
	int satVerbMin = Integer.parseInt(request.getParameter("satVerbMin"));
	int satVerbMax = Integer.parseInt(request.getParameter("satVerbMax"));
	int satMathMin = Integer.parseInt(request.getParameter("satMathMin"));
	int satMathMax = Integer.parseInt(request.getParameter("satMathMax"));
	int expMin = Integer.parseInt(request.getParameter("expMin"));
	int expMax = Integer.parseInt(request.getParameter("expMax"));
	int finAidMin = Integer.parseInt(request.getParameter("finAidMin"));
	int finAidMax = Integer.parseInt(request.getParameter("finAidMax"));
	int appMin = Integer.parseInt(request.getParameter("appMin"));
	int appMax = Integer.parseInt(request.getParameter("appMax"));
	int admitMin = Integer.parseInt(request.getParameter("admitMin"));
	int admitMax = Integer.parseInt(request.getParameter("admitMax"));
	int enrollMax = Integer.parseInt(request.getParameter("enrollMax"));
	int enrollMin = Integer.parseInt(request.getParameter("enrollMin"));
	double aScaleMin = Double.parseDouble(request.getParameter("aScaleMin"));
	double aScaleMax = Double.parseDouble(request.getParameter("aScaleMax"));
	double socScaleMin = Double.parseDouble(request.getParameter("socScaleMin"));
	double socScaleMax = Double.parseDouble(request.getParameter("socScaleMax"));
	double qScaleMin = Double.parseDouble(request.getParameter("qScaleMin"));
	double qScaleMax = Double.parseDouble(request.getParameter("qScaleMiax"));
	String emp = request.getParameter("emp");
	String emp2 = request.getParameter("emp2");
	String emp3 = request.getParameter("emp3");
	String emp4 = request.getParameter("emp4");
	String emp5 = request.getParameter("emp5");
	String[] empList = new String[]{emp,emp2,emp3,emp4,emp5};
	List<University> uni = usr.search(schoolname, state, location, control, numStuMin, numStuMax, numFemMin, numFemMax, satVerbMin, satVerbMax,satMathMin, satMathMax, expMin, expMax, finAidMin, finAidMax, appMin, appMax, admitMin,admitMax, enrollMin, enrollMax, aScaleMin, aScaleMax, socScaleMin, socScaleMax,qScaleMin, qScaleMax, empList);
	
	if(uni.isEmpty())
	{
		response.sendRedirect("Search_schools.jsp?Error=1NoSchoolsFound");	
	}
	else{
		response.sendRedirect("View_searchresults.jsp");
	}
%>

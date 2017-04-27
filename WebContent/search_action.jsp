<%@page language="java" import="java.util.ArrayList" import="java.util.List" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>

<% 
	int numStuMax,numStuMin,numFemMin,numFemMax,satVerbMin,satVerbMax,satMathMin,satMathMax,expMin,expMax,finAidMin,finAidMax,appMin,appMax,admitMin,admitMax,enrollMin,enrollMax;
	double aScaleMin,aScaleMax,socScaleMin,socScaleMax,qScaleMin,qScaleMax;
	AccountUI ui = (AccountUI)session.getAttribute("ui");
	AccountController acctCtr = ui.getAccountController();
	User user = (User)acctCtr.getAcct();
	UserUI usr = new UserUI(user); 
	String schoolname = request.getParameter("schoolname");

	String state = request.getParameter("state");

	String location = request.getParameter("location");

	String control = request.getParameter("control");

	
	if(request.getParameter("numStuMax")==null)
	{
		 numStuMax = -1;
	}
	else
	{
		 numStuMax = Integer.parseInt(request.getParameter("numStuMax"));
	}
	
	//int numStuMin = Integer.parseInt(request.getParameter("numStuMin"));
	if(request.getParameter("numStuMin")==null)
	{
		 numStuMin = -1;
	}
	else
	{
		 numStuMin = Integer.parseInt(request.getParameter("numStuMin"));
	}
	
	//int numFemMin = Integer.parseInt(request.getParameter("numFemMin"));
	if(request.getParameter("numFemMin")==null)
	{
		 numFemMin = -1;
	}
	else
	{
		 numFemMin = Integer.parseInt(request.getParameter("numFemMin"));
	}
	
	//int numFemMax = Integer.parseInt(request.getParameter("numFemMax"));
	if(request.getParameter("numFemMax")==null)
	{
		 numFemMax = -1;
	}
	else
	{
		 numFemMax = Integer.parseInt(request.getParameter("numFemMax"));
	}
	
	//int satVerbMin = Integer.parseInt(request.getParameter("satVerbMin"));
	if(request.getParameter("satVerbMin")==null)
	{
		 satVerbMin = -1;
	}
	else
	{
		 satVerbMin = Integer.parseInt(request.getParameter("satVerbMin"));
	}
	
	//int satVerbMax = Integer.parseInt(request.getParameter("satVerbMax"));
	if(request.getParameter("satVerbMax")==null)
	{
		 satVerbMax = -1;
	}
	else
	{
		 satVerbMax = Integer.parseInt(request.getParameter("satVerbMax"));
	}
	
	//int satMathMin = Integer.parseInt(request.getParameter("satMathMin"));
	if(request.getParameter("satMathMin")==null)
	{
		 satMathMin = -1;
	}
	else
	{
		 satMathMin = Integer.parseInt(request.getParameter("satMathMin"));
	}
	
	//int satMathMax = Integer.parseInt(request.getParameter("satMathMax"));
	if(request.getParameter("satMathMax")==null)
	{
		 satMathMax = -1;
	}
	else
	{
		 satMathMax = Integer.parseInt(request.getParameter("satMathMax"));
	}
	
	//int expMin = Integer.parseInt(request.getParameter("expMin"));
	if(request.getParameter("expMin")==null)
	{
		 expMin = -1;
	}
	else
	{
		 expMin = Integer.parseInt(request.getParameter("expMin"));
	}
	
	//int expMax = Integer.parseInt(request.getParameter("expMax"));
	if(request.getParameter("expMax")==null)
	{
		 expMax = -1;
	}
	else
	{
		 expMax = Integer.parseInt(request.getParameter("expMax"));
	}
	
	//int finAidMin = Integer.parseInt(request.getParameter("finAidMin"));
	if(request.getParameter("finAidMin")==null)
	{
		 finAidMin = -1;
	}
	else
	{
		 finAidMin = Integer.parseInt(request.getParameter("finAidMin"));
	}
	
	//int finAidMax = Integer.parseInt(request.getParameter("finAidMax"));
	if(request.getParameter("finAidMax")==null)
	{
		 finAidMax = -1;
	}
	else
	{
		 finAidMax = Integer.parseInt(request.getParameter("finAidMax"));
	}
	
	//int appMin = Integer.parseInt(request.getParameter("appMin"));
	if(request.getParameter("appMin")==null)
	{
		 appMin = -1;
	}
	else
	{
		 appMin = Integer.parseInt(request.getParameter("appMin"));
	}
	
	//int appMax = Integer.parseInt(request.getParameter("appMax"));
	if(request.getParameter("appMax")==null)
	{
		 appMax = -1;
	}
	else
	{
		 appMax = Integer.parseInt(request.getParameter("appMax"));
	}	
	
	//int admitMin = Integer.parseInt(request.getParameter("admitMin"));
	if(request.getParameter("admitMin")==null)
	{
		 admitMin = -1;
	}
	else
	{
		 admitMin = Integer.parseInt(request.getParameter("admitMin"));
	}
	
	//int admitMax = Integer.parseInt(request.getParameter("admitMax"));
	if(request.getParameter("admitMax")==null)
	{
		 admitMax = -1;
	}
	else
	{
		 admitMax = Integer.parseInt(request.getParameter("admitMax"));
	}
	
	//int enrollMax = Integer.parseInt(request.getParameter("enrollMax"));
	if(request.getParameter("enrollMax")==null)
	{
		 enrollMax = -1;
	}
	else
	{
		 enrollMax = Integer.parseInt(request.getParameter("enrollMax"));
	}
	
	//int enrollMin = Integer.parseInt(request.getParameter("enrollMin"));
	if(request.getParameter("enrollMin")==null)
	{
		 enrollMin = -1;
	}
	else
	{
		 enrollMin = Integer.parseInt(request.getParameter("enrollMin"));
	}
	
	//double aScaleMin = Double.parseDouble(request.getParameter("aScaleMin"));
	if(request.getParameter("aScaleMin")==null)
	{
		 aScaleMin = -1.0;
	}
	else
	{
		 aScaleMin = Integer.parseInt(request.getParameter("aScaleMin"));
	}
	
	//double aScaleMax = Double.parseDouble(request.getParameter("aScaleMax"));
	if(request.getParameter("aScaleMax")==null)
	{
		 aScaleMax = -1.0;
	}
	else
	{
		 aScaleMax = Integer.parseInt(request.getParameter("aScaleMax"));
	}
	
	//double socScaleMin = Double.parseDouble(request.getParameter("socScaleMin"));
	if(request.getParameter("socScaleMin")==null)
	{
		 socScaleMin = -1.0;
	}
	else
	{
		 socScaleMin = Integer.parseInt(request.getParameter("socScaleMin"));
	}
	
	//double socScaleMax = Double.parseDouble(request.getParameter("socScaleMax"));
	if(request.getParameter("socScaleMax")==null)
	{
		 socScaleMax = -1.0;
	}
	else
	{
		 socScaleMax = Integer.parseInt(request.getParameter("socScaleMax"));
	}
	
	//double qScaleMin = Double.parseDouble(request.getParameter("qScaleMin"));
	if(request.getParameter("qScaleMin")==null)
	{
		 qScaleMin = -1.0;
	}
	else
	{
		 qScaleMin = Integer.parseInt(request.getParameter("qScaleMin"));
	}
	
	if(request.getParameter("qScaleMiax")==null)
	{
		 qScaleMax = -1.0;
	}
	else
	{
		 qScaleMax = Integer.parseInt(request.getParameter("qScaleMiax"));
	}
	//double qScaleMax = Double.parseDouble(request.getParameter("qScaleMiax"));

	String emp = request.getParameter("emp");

	String emp2 = request.getParameter("emp2");

	String emp3 = request.getParameter("emp3");

	String emp4 = request.getParameter("emp4");

	String emp5 = request.getParameter("emp5");

	String[] empList = {emp,emp2,emp3,emp4,emp5};
 	List<University> uni = usr.search(schoolname, state, location, control, numStuMin, numStuMax, numFemMin, numFemMax, satVerbMin, satVerbMax,satMathMin, satMathMax, expMin, expMax, finAidMin, finAidMax, appMin, appMax, admitMin,admitMax, enrollMin, enrollMax, aScaleMin, aScaleMax, socScaleMin, socScaleMax,qScaleMin, qScaleMax, empList);
	//System.out.print(uni.get(0).getSchoolName());
	if(uni.isEmpty())
	{
		response.sendRedirect("Search_schools.jsp?Error=1NoSchoolsFound");	
	}
	else{
		session.setAttribute("results", uni );
		response.sendRedirect("View_searchresults.jsp");
	}
%>

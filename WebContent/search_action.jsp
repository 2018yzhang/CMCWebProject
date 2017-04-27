<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>
<%
	AccountUI ui = (AccountUI)session.getAttribute("ui");
	AccountController acctCtr = ui.getAccountController();
	User user = (User)acctCtr.getAcct();
	UserUI usr = new UserUI(user); 
	String schoolname = request.getParameter("schoolname");
	String state = request.getParameter("state");
	String location = request.getParameter("location");
	String control = request.getParameter("control");
	String numStuMax = request.getParameter("numStuMax");
	String numStuMin = request.getParameter("numStuMin");
	String numFemMin = request.getParameter("numFemMin");
	String numFemMax = request.getParameter("numFemMax");
	String satVerbMin = request.getParameter("satVerbMin");
	String satVerbMax = request.getParameter("satVerbMax");
	String satMathMin = request.getParameter("satMathMin");
	String satMathMax = request.getParameter("satMathMax");
	String expMin = request.getParameter("expMin");
	String expMax = request.getParameter("expMax");
	String finAidMin = request.getParameter("finAidMin");
	String finAidMax = request.getParameter("finAidMax");
	String appMin = request.getParameter("appMin");
	String appMax = request.getParameter("appMax");
	String admitMin = request.getParameter("admitMin");
	String admitMax = request.getParameter("admitMax");
	String enrollMax = request.getParameter("enrollMax");
	String enrollMin = request.getParameter("enrollMin");
	String aScaleMin = request.getParameter("aScaleMin");
	String aScaleMax = request.getParameter("aScaleMax");
	String socScaleMin = request.getParameter("socScaleMin");
	String socScaleMax = request.getParameter("socScaleMax");
	String qScaleMin = request.getParameter("qScaleMin");
	String qScaleMax = request.getParameter("qScaleMiax");
	String emp = request.getParameter("emp");
	String emp2 = request.getParameter("emp2");
	String emp3 = request.getParameter("emp3");
	String emp4 = request.getParameter("emp4");
	String emp5 = request.getParameter("emp5");
	
	String anyErrors = request.getParameter("Error");
	if (anyErrors!=null&&anyErrors.equals("1"))
		out.print("Unable to search");
	
	
%>

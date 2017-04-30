		<%@page language="java" import="java.util.*" import="java.util.List" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>
<%@page errorPage="SearchErrorPage.jsp" %>
<html>
<head><title>Login Error Page</title>
</head>
<body>
<font face="verdana">		
		<% 
			UserFuncController uct = (UserFuncController)request.getSession().getAttribute("userCtr");
		
			String schoolname = request.getParameter("schoolname").toUpperCase();
			
			String state = request.getParameter("state").toUpperCase();
		
			String location = request.getParameter("location").toUpperCase();
		
			String control = request.getParameter("control").toUpperCase();
			
			String numStuMax = request.getParameter("numStuMax");
			
			String  numStuMin= request.getParameter("numStuMin");
			
			String  numFemMin = request.getParameter("numFemMin");
			
			String numFemMax = request.getParameter("numFemMax");
			
			String satVerbMin = request.getParameter("satVerbMin");
			
			
			String satVerbMax = request.getParameter("satVerbMax");
			
			String satMathMin = request.getParameter("satMathMin");
			
			String satMathMax = request.getParameter("satMathMax");
			
			String  expMin= request.getParameter("expMin");
			
			String  expMax= request.getParameter("expMax");
						
			String  finAidMin= request.getParameter("finAidMin");
			
			String  finAidMax= request.getParameter("finAidMax");
						
			String appMin = request.getParameter("appMin");
						
			String appMax = request.getParameter("appMax");
						
			String admitMin = request.getParameter("admitMin");	
			
			String admitMax = request.getParameter("admitMax");
					
			String enrollMin = request.getParameter("enrollMin");
						
			String enrollMax = request.getParameter("enrollMax");
						
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
			ArrayList<String> arr = new ArrayList<String>();
			arr.add(emp);
			arr.add(emp2);
			arr.add(emp3);
			arr.add(emp4);
			arr.add(emp5);
			//System.out.println(arr.size());
			String[] test=new String[arr.size()];
	for(int i =0; i<arr.size();i++ ){
		test[i]=arr.get(i);
	}
	if(test[0]==""&&test[1]==""&&test[2]==""&&test[3]==""&&test[4]=="")
	{
		test = new String[0];
	}
	
			List<University> uni = uct.search(schoolname,state,location,control,numStuMin,numStuMax,numFemMin,numFemMax,satVerbMin,satVerbMax,satMathMin,satMathMax,expMin,expMax,finAidMin,finAidMax,appMin,appMax,admitMin,admitMax,enrollMin,enrollMax,aScaleMin,aScaleMax,socScaleMin,socScaleMax,qScaleMin,qScaleMax,test);

			if(!uni.isEmpty()){
				session.setAttribute("results", uni );
				response.sendRedirect("View_searchresults.jsp");
		}
			else{
				out.println("Sorry! Search Unsuccessful! The reason probably is no match results!");
			}
		%>
</font>
</body>
</html>

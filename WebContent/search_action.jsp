		<%@page language="java" import="java.util.*" import="java.util.List" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.ArrayList"%>
		
		<% 
		 	int numMax=-1,numMin=-1,FemMin=-1,FemMax=-1,VerbMin=-1,VerbMax=-1,MathMin=-1,MathMax=-1,expenMin=-1,expenMax=-1,AidMin=-1,
		 	AidMax=-1,apMin=-1,apMax=-1,admMin=-1,admMax=-1,enrMin=-1,enrMax=-1;
		 	double aScalMin=-1.0,aScalMax=-1.0,socScalMin=-1.0,socScalMax=-1.0,qScalMin=-1.0,qScalMax=-1.0;
	//		DBController dbc = new DBController();
			UserFuncController uct = (UserFuncController)session.getAttribute("userCtr");
		
			String schoolname = request.getParameter("schoolname");
			
			String state = request.getParameter("state");
		
			String location = request.getParameter("location");
		
			String control = request.getParameter("control");
			
			String numStuMax = request.getParameter("numStuMax");
			if(numStuMax!="")
			{
				numMax = Integer.parseInt(numStuMax);
			}
			
			String  numStuMin= request.getParameter("numStuMin");
			if(numStuMin!="")
			{
				numMin = Integer.parseInt(numStuMin);
			}
			
			String  numFemMin = request.getParameter("numFemMin");
			if(numFemMin!="")
			{
				FemMin = Integer.parseInt(numFemMin);
			}	
			
			String numFemMax = request.getParameter("numFemMax");
			if(numFemMax!="")
			{
				FemMax = Integer.parseInt(numFemMax);
			}
			
			String satVerbMin = request.getParameter("satVerbMin");
			if(satVerbMin!="")
			{
				VerbMin = Integer.parseInt(satVerbMin);
			}
			
			String satVerbMax = request.getParameter("satVerbMax");
			if(satVerbMax!="")
			{
				VerbMax = Integer.parseInt(satVerbMax);
			}
			
			String satMathMin = request.getParameter("satMathMin");
			if(satMathMin!="")
			{
				MathMax = Integer.parseInt(satMathMin);
			}
			
			String satMathMax = request.getParameter("satMathMax");
			if(satMathMax!="")
			{
				MathMax = Integer.parseInt(satMathMax);
			}	
			
			String  expMin= request.getParameter("expMin");
			if(expMin!="")
			{
				expenMin = Integer.parseInt(expMin);
			}
			
			String  expMax= request.getParameter("expMax");
			if(expMax!="")
			{
				expenMax = Integer.parseInt(expMax);
			}
			
			String  finAidMin= request.getParameter("finAidMin");
			if(finAidMin!="")
			{
				AidMin = Integer.parseInt(finAidMin);
			}
			
			String  finAidMax= request.getParameter("finAidMax");
			if(finAidMax!="")
			{
				AidMax = Integer.parseInt(finAidMax);
			}
			
			String appMin = request.getParameter("appMin");
			if(appMin!="")
			{
				apMin = Integer.parseInt(appMin);
			}
			
			String appMax = request.getParameter("appMax");
			if(appMax!="")
			{
				apMax = Integer.parseInt(appMax);
			}
			
			String admitMin = request.getParameter("admitMin");
			if(admitMin!="")
			{
				admMin = Integer.parseInt(admitMin);
			}
			
			String admitMax = request.getParameter("admitMax");
			if(admitMax!="")
			{
				admMax = Integer.parseInt(admitMax);
			}
			
			String enrollMin = request.getParameter("enrollMin");
			if(enrollMin!="")
			{
				enrMin = Integer.parseInt(enrollMin);
			}
			
			String enrollMax = request.getParameter("enrollMax");
			if(enrollMax!="")
			{
				enrMax = Integer.parseInt(enrollMax);
			}
			
			String aScaleMin = request.getParameter("aScaleMin");
			if(aScaleMin!="")
			{
				aScalMin = Double.parseDouble(aScaleMin);
			}
			
			String aScaleMax = request.getParameter("aScaleMax");
			if(aScaleMax!="")
			{
				aScalMax = Double.parseDouble(aScaleMax);
			}
			
			String socScaleMin = request.getParameter("socScaleMin");
			if(socScaleMin!="")
			{
				socScalMin = Double.parseDouble(socScaleMin);
			}
			
			String socScaleMax = request.getParameter("socScaleMax");
			if(socScaleMax!="")
			{
				socScalMax = Double.parseDouble(socScaleMax);
			}
			
			String qScaleMin = request.getParameter("qScaleMin");
			if(qScaleMin!="")
			{
				qScalMin = Double.parseDouble(qScaleMin);
			}
			
			String qScaleMax = request.getParameter("qScaleMiax");
			if(qScaleMax!="")
			{
				qScalMax = Double.parseDouble(qScaleMax);
			}
		
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
			System.out.println(arr.size());
			String[] test=new String[arr.size()];
	for(int i =0; i<arr.size();i++ ){
		test[i]=arr.get(i);
	}
	if(test[0]==""&&test[1]==""&&test[2]==""&&test[3]==""&&test[4]=="")
	{
		test = new String[0];
	}
	
			List<University> uni = uct.search(schoolname,state,location,control,numMax,numMin,FemMin,FemMax,VerbMin,VerbMax,MathMin,MathMax,expenMin,expenMax,AidMin,AidMax,apMin,apMax,admMin,admMax,enrMin,enrMax,aScalMin,aScalMax,socScalMin,socScalMax,qScalMin,qScalMax,test);
			if(uni.isEmpty()){
			response.sendRedirect("Search_schools.jsp?Error=1");
			}
			else{
		// 		session.setAttribute("results", uni );
		// 		response.sendRedirect("View_searchresults.jsp");
				out.println(uni.get(0).getSchoolName());
		}
		%>

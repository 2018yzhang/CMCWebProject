<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<%
	AccountUI ui = (AccountUI)session.getAttribute("ui");
	AccountController acctCtr = ui.getAccountController();
	User user = (User)acctCtr.getAcct();
	UserFuncController userCtr = new UserFuncController(user);
	String anyErrors = request.getParameter("Error");
	String schoolName = request.getParameter("SchoolName");
	boolean removeComplete = userCtr.removeSavedSchool(schoolName);
	if(removeComplete == true){
		response.sendRedirect("Manage_savedschooldetailsactionUser.jsp");}
	else{
		response.sendRedirect("Manage_savedschooldetailsactionUser.jsp?Error=1RemovedSchoolUnsuccessfully");
		
	}
	session.setAttribute("userCtr", userCtr );
%>
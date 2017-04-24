<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<%
	AccountUI ui = (AccountUI)session.getAttribute("ui");
	AccountController acctCtr = ui.getAccountController();
	User user = (User)acctCtr.getAcct();
	UserFuncController userCtr = new UserFuncController(user);
	String anyErrors = request.getParameter("Error");
	if (anyErrors!=null&&anyErrors.equals("1"))
		out.print("Unable to remove school");
	String uname = request.getParameter("Username");
	boolean removeComplete = userCtr.removeSavedSchool(uname);
	if(removeComplete == true){
		response.sendRedirect("Manage_savedschooldetailsactionUser.jsp");}
	else{
		response.sendRedirect("Manage_savedschooldetailsactionUser.jsp?Error=1RemovedSchoolUnsuccessfully");
	}
%>
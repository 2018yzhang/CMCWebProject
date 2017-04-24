<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*",java.util.*"%>
<%
	DBController db = new DBController();
	AccountUI ui = (AccountUI)session.getAttribute("ui");
	AccountController acctCtr = ui.getAccountController();
	Account acct = acctCtr.getAcct();
	String fname =request.getParameter("FirstName");
	String lname =request.getParameter("LastName");
	String uname = acct.getUsername();
	String password =request.getParameter("Password");
	char type = ui.typeOfUser(uname);
	char status = acct.getStatus();

	boolean editComplete = db.editUser(fname, lname, uname, password, type, status);
	if(editComplete == true){
		response.sendRedirect("Manage_myprofile.jsp");}
	else{
		response.sendRedirect("Manage_myprofile.jsp?Error=1AlreadyExistingUserOrIncorrectInputs");
	}
%>
<%@page language="java" import="cmc.mario.controllers.*" import="cmc.mario.entities.*" import="cmc.mario.interfaces.*" import="java.util.*"%>
<%
	UserFuncController uc = (UserFuncController)session.getAttribute("userCtr");
	User user = uc.getUser();
	String fname =request.getParameter("FirstName");
	String lname =request.getParameter("LastName");
	String uname =uc.getUser().getUsername();
	String password =request.getParameter("Password");

	boolean editComplete = uc.editPersonalProfile(uname, fname, lname, password);
	if(editComplete == true){
		user.setUsername(uname);
		user.setFirstName(fname);
		user.setLastName(lname);
		user.setPassword(password);
		response.sendRedirect("User_menu.jsp");	
	}
	else{
			   out.println("<script type=\"text/javascript\">");
			   out.println("alert('Editing Error');");
			   out.println("window.location='User_menu.jsp';");
			   out.println("</script>");
		 }
%>
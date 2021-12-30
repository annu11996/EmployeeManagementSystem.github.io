<%
String username1 =request.getParameter("uname");
String password1 =request.getParameter("pwd");

if(username1.equalsIgnoreCase("admin") && password1.equalsIgnoreCase("admin")){
	response.sendRedirect("MidPage.jsp");
	
}
else{
	response.sendRedirect("");
}
%>
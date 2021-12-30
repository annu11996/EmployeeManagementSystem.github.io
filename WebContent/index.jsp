<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background : url(front.jpg) no-repeat;
font-family : san-sarif;
}
ul li a:hover{
color : red;
background-color : white;
border : 2px solid white;

}
li{
float : vertical;
padding : 1px;
margin : 1px;
list-style-type : none;
font-size : 15px;
overflow : hidden;
margin-top : 30px;
font-weight : bold; 
text-decoration : none;
}
</style>
<body>
	<ul>
		<li><a href="#">Home</a></li>
		<li><a href="EmpLogin.jsp">Employee Login</a></li>
		<li><a href="AdminLogin.jsp">Admin Login</a></li>
		<li><a href="ContactUsForm.jsp">Contact us</a></li>
	</ul>
</body>
</html>
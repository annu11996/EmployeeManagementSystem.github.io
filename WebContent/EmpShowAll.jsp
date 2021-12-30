<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background : url(MidPage.jpg) no-repeat;
font-family : san-sarif;
}
ul li a:hover{
color : red;
background-color : white;
border : 2px solid white;

}
li{
float : left;
padding : 1px;
margin : 20px;
list-style-type : none;
font-size : 20px;
overflow : hidden;
margin-top : 30px;
font-weight : bold; 
text-decoration : none;
}
</style>
<body>
<ul>
		<li><a href="NewEmp.jsp">Add Employee</a></li>
		<li><a href="EmpShowAll.jsp">View Employee</a></li>
		<li><a href="index.jsp">Logout</a></li>
	</ul>





<form action="NewEmp" method="post">

	<div class="table">
		<table border="1" width="100%">
			<colgroup>
				<col span="4">
			</colgroup>
			<tr>
				<th>emp_id</th>
				<th>firstname</th>
				<th>lastname</th>
				<th>dob</th>
				<th>Status</th>
				<th>gender</th>
				<th>phoneno</th>
				<th>Address</th>
				<th>email</th>
				

			</tr>
			<%
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;

				String user = "system";
				String pwd = "root";
				String url = "jdbc:oracle:thin:@localhost:1521:XE";

				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					con = DriverManager.getConnection(url, user, pwd);
					stmt = con.createStatement();
					String sql = "select * from emp";
					rs = stmt.executeQuery(sql);

					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("emp_id")%></td>
				<td><%=rs.getString("firstname")%></td>
				<td><%=rs.getString("lastname")%></td>
				<td><%=rs.getString("dob")%></td>
				<td><%=rs.getString("Status")%></td>
				<td><%=rs.getString("gender")%></td>
				<td><%=rs.getString("phoneno")%></td>
				<td><%=rs.getString("Address")%></td>
				<td><%=rs.getString("email")%></td>
				<td><a href="#">delete</a> &nbsp; <a href="#">update</a>
					&nbsp;</td>
			</tr>

			<%
				}//end of while
				} catch (Exception e) {
					System.out.println(e);
				}
			%>
		</table>

	</div>

</form>


</body>
</html>
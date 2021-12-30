<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<Html>
<head>
<title>Employee detail</title>
</head>
<style>
body {
	background: url(addEmp.jpg) no-repeat;
	font-family: san-sarif;
}
</style>
<body bgcolor="Lightskyblue">
	<br>
	<br>
	<form action="NewEmp" method="post">
        <label>Emp ID</label>
        <input type="text" name="emp_id"
			size="15" /> <br> <br> 
		<label> Firstname </label> <input type="text" name="firstname"
			size="15" /> <br> <br> 
			<label> Lastname: </label> <input
			type="text" name="lastname" size="15" /> <br> <br> <label>
			Date Of Birth </label> <input type="date" name="dob"
			placeholder="dd-mm-yyyy" value="" min="2000-01-01" max="2030-12-31">
		<br> <br> <label> Status : </label> <input type="text"
			name="Status" /> <br> <br> <label> Gender : </label><br>
		<input type="text" name="gender" /> Gender <br> <br> <label>
			Phone : </label> <input type="text" name="phoneno" size="10" /> <br> <br>
		Address <br>
		<textarea cols="80" rows="5" value="address" name="address">  
</textarea>
		<br> <br> Email: <input type="email" id="email" name="email" />
		<br> <br> <br> <input type="submit" value="Submit" />
	</form>
</body>
</html>
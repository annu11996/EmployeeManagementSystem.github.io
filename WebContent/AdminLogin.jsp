<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login Form</title>
<style> 
  
Body {  
  font-family: Calibri, Helvetica, sans-serif;  
   background : url(fingerprint-login-mobile-security-unlock-ss-1920.jpg) no-repeat;
font-family : san-sarif;
}  
button {   
       background-color: #4CAF50;   
       width: 50%;  
        color: orange;   
        padding: 15px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;   
         }   
  
 input[type=text], input[type=password] {   
        width: 50%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px solid green;   
        box-sizing: border-box;   
    }  
 button:hover {   
        opacity: 0.7;   
    }   
  .cancelbtn {   
        width: auto;   
        padding: 10px 18px;  
        margin: 10px 5px;  
    }   
        
     
   
</style>   
</head>
<body>
<center> <h1> Admin Login Form </h1> </center>   
    <form action="Login.jsp" method="post">  
        <div class="container">   
            <label>Admin ID : </label>   
            <input type="text" placeholder="Enter Employee ID" name="uname" required>  <br> <br>
            <label>Password : </label>   
            <input type="password" placeholder="Enter Password" name="pwd" required>    <br> <br>
            <input type="submit" value="login">   
             
            <input type="reset" value="reset" >   
              
        </div>   
    </form>     
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Login Form</title>
<style> 
  
Body {  
  font-family: Calibri, Helvetica, sans-serif;  
   background : url(fingerprint-login-mobile-security-unlock-ss-1920.jpg) no-repeat;
font-family : san-sarif;
}  
button {   
       background-color: #4CAF50;   
       width: 70px;  
        color: orange;   
        padding: 10px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;
        margin-left : 85px;   
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
<center> <h1> Employee Login Form </h1> </center>   
    <form action="EmpDetail" method="post">  
        <div class="container">   
            <label>Employee ID : </label>   
            <input type="text" placeholder="Enter Employee ID" name="Employee ID" required>  <br> <br>
            
            <button type="submit">submit</button>   
             <button type="reset" >reset</button>   
              
        </div>   
    </form>     
</body>
</html>
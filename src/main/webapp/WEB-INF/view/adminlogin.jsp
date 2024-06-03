<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login </title>
<style>
    .loginform{  
        padding:80px;  
        border:5px solid pink;  
        border-radius:20px;  
        float:left;  
        margin-top:150px;  
        background-color:grey;
        margin-left:420px;
    }  
    .formheading{  
        background-color:red;  
        color:white;  
        padding:8px;  
        text-align:center;  
    }  
    .sub{  
    background-color:blue;  
    padding: 7px 40px 7px 40px;  
    color:white;  
    font-weight:bold;  
    margin-left:70px;  
    border-radius:5px;  
    }  
</style>
</head>
<body bgcolor="black" text="solid red">

 
<div class="loginform">  
    <h2 class="formheading">Admin Login Page</h2>  
    <form action="admloginproc" method="POST">  
    <table>  
    <tr><td>Email:</td><td><input type="email" name="uemail"/></td></tr>  
    <tr><td>Password:</td><td><input type="password" name="upass"/></td></tr>  
    <tr><td colspan="2" style="text-align:center"><input class="sub" type="submit" value="login"/></td></tr>  
    </table> 
    <h3>${msg} </h3> 
    </form>  
    


    </div>  
</body>
</html>
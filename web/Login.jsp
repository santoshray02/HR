<%-- 
    Document   : Login
    Created on : Oct 16, 2015, 12:10:01 PM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <script>
        function UserType_onchange() 
{
	var mUserType;
	mUserType=LoginForm.Utype.value;
	if (mUserType == 'Customer')
	{
	   
           LoginForm.username.placeholder  ="Username";
	}
	else if (mUserType=='Hotel')
	{
	   
           LoginForm.username.placeholder  ="Hotel id";
	}
	else
	{
	   
           LoginForm.username.placeholder  ="Admin id";
	}
}
        </script>
	<title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    
</head>
<body>
<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#bs-HR-navbar-collapse-1" >
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Home.jsp">Hotel Reservation</a>
            </div>
            <div class="collapse navbar-collapse navbar-right" id="bs-HR-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="Aboutus.jsp">About</a></li>
                    <li><a href="Contact.jsp">Contact Us</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>
<% 
            if(request.getAttribute("msg1")!=null){
                %>
                
<%
    out.println(request.getAttribute("msg1"));
}%>
        <% 
            if(request.getAttribute("msg")!=null){
                %>
                
                <div class="alert alert-warning text-center" role="alert"><%=request.getAttribute("msg")%></div>
        <%
}%>
<div class="login-card">
    <h1>Log-in</h1><br>
<form name="LoginForm" action="Loginservlet" method="post">
<select style="height: 30; width: 173;" name=Utype onchange="UserType_onchange()">
    <option value="Admin">Admin</option>
<option value="Hotel">Hotel</option>
<option value="Customer" selected>Customer</option>
</select>
     <input type="text" name="username"  placeholder="Username">
    <input type="password" name="password"  placeholder="Password">
    <input type="submit" name="login" class="login login-submit" value="login">




</form>
<div class="login-help">
    <a href="register.jsp">Register</a> • <a href="forgotpass.jsp">Forgot Password</a>
</div>
        </div>
</body>
</html>
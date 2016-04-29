<%-- 
    Document   : forgotpass
    Created on : Oct 16, 2015, 12:10:01 PM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>

	<title>Password recovery</title>
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
                    <li><a href="Contactus.jsp">Contact Us</a></li>
                   
                </ul>
            </div>
        </div>
    </nav>
    <div class=" centering">
        <h3>Password Recovery panel <span class="label label-default"></span></h3>
   

    <% 
            if(request.getAttribute("password")!=null){
                %>
           <div class="alert alert-info text-center" role="alert">
               Your Password : <%=request.getAttribute("password")%>
           </div>     
               
               <a href="Login.jsp" >click here for login</a>
<%
   
}else{%>

        <% 
            if(request.getAttribute("msg")!=null){
                %>
           <div class="alert alert-warning text-center" role="alert">
                : <%=request.getAttribute("msg")%>
           </div>     
<%
   
}        
   %>             

<form action="Forgotpass" class="navbar-form" role="submit">
  <div class="form-group">
    <input type="username" name="username" class="form-control" placeholder="username">
    <input type="email" name="email" class="form-control" placeholder="Enter Email address">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
                        <%
}%>
</div> 

 <footer class="navbar-fixed-bottom footercolor">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3><span class="copyright">Copyright &copy; <a href="http://www.santoshray.com">Santosh Ray</a></span></h3>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
<%-- 
    Document   : hotelhome
    Created on : 8 Mar, 2016, 5:31:16 PM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Panel</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/hrs.js"></script>
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
                    <li><a href="hotelhome.jsp">Home</a></li>
                    <li><a href="support.jsp">Support</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>
        <nav class="navbar header">
        <div class="container-fluid">
            <div class="navbar-header navbar-right">
    <%
       if(session.getAttribute("user")!=null)
       {
    %>
                <ul class="nav navbar-nav">
                    <li><a href="userdetails?username=<%=session.getAttribute("user")%>" class="active"><span><%=session.getAttribute("user")%></span></a></li>
                    <li><a href="Logoutservlet?h=h"><span>Logout</span></a></li>
                   
                </ul> 
    <%
       }else{
           %>
                <ul class="nav navbar-nav">
                    <% 
           if(request.getAttribute("msg")!=null)
                {
    %>
    <li><div class="alert alert-success text-center" role="alert"><%=request.getAttribute("msg")%></div></li>
                
    <%
       } 
    %>
                    <li><a href="Login.jsp">Login</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signup</a>
                        <ul class="dropdown-menu">
                        <li><a href="register.jsp">Customer</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="hotelsignup.jsp">Hotel</a></li>
                        </ul>
                    </li> 
                </ul>
                   <%
       }
%>
   
            </div>
        </div>
    </nav>
<%
       if(session.getAttribute("user")!=null)
       {
    %>
<div class="header">
    
    <div id="navigation">
      <ul>
        <li><a href="viewyourbookservlet" class="active"><span>View your booking</span></a></li>
        <li><a href="Hoteldetailsservlet"><span>View your details</span></a></li>
      </ul>
    </div>
	
    
    
    </div>
        <%
       }else{
           %>
           <h4><a href="Login.jsp">click here for login again</a></h4>
           <%
       }
           %>
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

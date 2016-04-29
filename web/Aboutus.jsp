<%-- 
    Document   : Aboutus
    Created on : Nov 26, 2015, 8:10:30 PM
    Author     : Santosh Ray
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
    <title>About us</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    </head>

<body >
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
    <nav class="navbar header">
        <div class="container-fluid">
            <div class="navbar-header navbar-right">
    <%
       if(session.getAttribute("user")!=null)
       {
    %>
                <ul class="nav navbar-nav">
                    <li><a href="userdetails?username=<%=session.getAttribute("user")%>" class="active"><span><%=session.getAttribute("user")%></span></a></li>
                    <li><a href="Logoutservlet"><span>Logout</span></a></li>
                   
                </ul> 
    <%
       }else{
            if(request.getAttribute("msg")!=null)
                {
    %>
                <div class="alert alert-success" role="alert">You successfully read this important alert message.</div>
                <%=request.getAttribute("msg")%>
    <%
       } 
    %>
                <ul class="nav navbar-nav">
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

<table border="0" cellspacing="0" cellpadding="1">
<tr id="id1"><td><font color="red" size="5" face="arial">About <font face="italic" color="yellow" size="7"> HRS</font></font></td></tr>
</table>
<br />
<font color="teal" face="Cooper Black" size="5">

Positioned as a brand that believes in "Creating Happy Booking",
HRS.com provides information, pricing, availibility and booking facility for a few very popular Hotels in India. 
<br />
<br />
The Hotels are highly facilitated with Air-Conditioned, Wi-Fi services,Swimming pool, Mineral Water and with some other Basic Facilities. 
The most important thing is the Security, world class security with Cameras providing clear vision during bad weather.
<br />
<br />
Through continued excellence in providing booking solutions, responses to booking hotel online through HRS.com have also reached in new heights.


</font>
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

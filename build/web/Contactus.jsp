<%-- 
    Document   : Contactus
    Created on : Nov 26, 2015, 7:29:21 PM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
           <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/hrs.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    </head>
    <body background="N8.jpg">
        <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#bs-HR-navbar-collapse-1" >
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="\HRS1">Hotel Reservation</a>
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
        <br>
    <hr size="2" color="#8080FF"><center>

   <table align='center' width="35%" align="left" cellspacing="3" border="2" cellpadding="5" bordercolor=lightgrey>
     <tr align="left"><td bgcolor="purple"><font color="white" size="5">Contact Us</font></td></tr>
     <tr><td>
             <ul><li style="border: none;"><b>Call Us</b>
     <ul><li style="border: none;"><font size="4"><br /> 8986594708&nbsp;&nbsp;(Santosh Kumar)</font><br /> <font color="#7B1604">(*charges applicable)</font><br /><br />
     <font face="italic" color="navy">Happy to Help You, 24 hrs a Day!!!</font></li></ul>
     </li></ul></td></tr>
     <tr><td><ul><li style="border: none;"><b>Email Us</b><br />
                     <ul><li style="border: none;"><font>Mail us </font><br /><br /><font color="green" face="MS Serif" size="5">rayskumar02@gmail.com</font></li></ul>
     </li></ul></td></tr>
   </table>
</center>
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

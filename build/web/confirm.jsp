<%-- 
    Document   : confirm
    Created on : Nov 19, 2015, 9:40:39 AM
    Author     : Santosh Ray
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<title>Confirm</title>
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
                    if(session.getAttribute("user")!=null){
                %>
                <ul class="nav navbar-nav">
                    <li><a href="userdetails?username=<%=session.getAttribute("user")%>" class="active"><span><%=session.getAttribute("name")%></span></a></li>
                    <li><a href="Logoutservlet?h=c"><span>Logout</span></a></li>
                   
                </ul> 
                <%
                }
                else{
                %>
                <ul class="nav navbar-nav">
                <% 
                    if(request.getAttribute("msg")!=null){
                %>
                    <li><div class="alert alert-success text-center" role="alert"><%=request.getAttribute("msg")%>
                        </div>
                    </li>              
                <%
                    } 
                %>
                    <li><a href="Login.jsp">Login</a>
                    </li>
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
<table align="center">
<td colspan="2"><center><font size="5" color="red"><h2>!!! Thank you !!!</h2></font></center></td></tr>

<% 
            
            if(request.getAttribute("msg")!=null){  
                
            %>
<tr>
    <td>
             
        <h1><%= request.getAttribute("msg")%></h1>
        <br>
        <br>
        <h3 align="center"><font color="yellow"><a style="text-decoration: none" href="Viewbook">View Your Booking</a> </h3>
    </td>
</tr>
<%}
            
            else{
               
        %>
        <tr>
        <td colspan=3 align="center" style="background-color: #66ff66"<b> <h1><%= request.getAttribute("msg")%></h1> </b>
    </tr>
    <%}%>
</table>
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

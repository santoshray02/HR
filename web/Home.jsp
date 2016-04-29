<%-- 
    Document   : index
    Created on : Oct 16, 2015, 12:06:36 PM
    Author     : Santosh Ray
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
    <title>Hotel Reservation</title>
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
   
<div class="container">
  <div class="row">
    <div class="col-md-12">
    <div class="jumbotron text-center">
      <h1>Search Hotels</h1>
        <form action="Searchservlet">
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" name="search" class="form-control input-lg" placeholder="Type city" />
                    <span class="input-group-btn">
                        <button class="btn btn-color btn-lg" type="submit">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        </form>
      <br><br>
    </div>
  </div>
  </div>
</div>
 <h3 align="center"><font size='5' color="yellow"><Marquee onmouseover="stop();" onmouseout="start();"><a href="Viewbook">!!! View Your Booking !!!</a></marquee> </h3>   
 <div class="container-fluid footerpadding">
 <div class="row">
     <p class="text-center">Top destinations around world have looasdfghjkl;'k</p>
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail imagesize">
      <img src="Viewservlet?hid=h0009" alt="...">
      <div class="caption">
        <h3 ><strong>Hotel The Panache</strong></h3>
          <h5 >Hotel short description</h5>
        <p><a href="#" class="btn btn-primary" role="button">View</a> <a href="#" class="btn btn-default" role="button">Book a room</a></p>
      </div>
    </div>
      
  </div>
     <div class="col-sm-6 col-md-4">
    <div class="thumbnail imagesize">
        <img src="Viewservlet?hid=h0008" alt="...">
      <div class="caption">
        <h3 ><strong>Hotel Chanakya</strong></h3>
          <h5 >Hotel short description</h5>
        <p><a href="#" class="btn btn-primary" role="button">View</a> <a href="#" class="btn btn-default" role="button">Book a room</a></p>
      </div>
    </div>
      
</div>
    <div class="col-sm-6 col-md-4">
        <div class="thumbnail imagesize">
        <img src="Viewservlet?hid=h0011" alt="...">
            <div class="caption">
                <h3 ><strong>Hotel Varun</strong></h3>
                <h5 >Hotel short description</h5>
                <p><a href="#" class="btn btn-primary" role="button">View</a> <a href="#" class="btn btn-default" role="button">Book a room</a></p>
            </div>
        </div>  
    </div>
    </div>
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

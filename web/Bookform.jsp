<%-- 
    Document   : Bookfrom
    Created on : Nov 16, 2015, 9:59:37 PM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Booking</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.js"></script>
<link href="Style1.css" type="text/stylesheet" rel="stylesheet"/>
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
    <form action="Bookservlet" method="post">

<% 
    String s=request.getParameter("hid");
    if(s!=null){
   %>
<input type='hidden' name='hotelid' value=<%=s %> />
<%
       }
%>
<table align="center" cellspacing="5">

<b><h3 align="right"><a style="text-decoration: none"; href="index.jsp"><font color="black">Back</font></a></h3></b>

<tr>
<td colspan="2"><center><hr size="10" color="green"><font size="5" color="red"><h2>BOOKING</h2></font><hr size="10" color="green"></center></td></tr>

<tr>
<td><b><font size="5">Name</font></b></td>
<td>
<input type="text" style="height: 30; width: 250;" name="name" placeholder="Enter Name" required>
</td>
</tr>
<tr>
<td><b><font size="5">Check in</font></b></td>
<td><input type=date style="height: 30; width: 250;" name="checkin" placeholder="Enter Arrival Date" required></td>
</tr>

<tr>
<td><b><font size="5">Check out</font></b></td>
<td><input type=date style="height: 30; width: 250;" name="checkout" placeholder="Enter Departure Date" required></td>
</tr>

<tr>
<td colspan="1"><b><font size="5">Room</font></b></td>
<td>
<select style="height: 30; width: 250;" name=room>
<option selected>Single Bed</option>
<option>Double Bed</option>
</select>
</td>
</tr>
<br>

<tr>
<td colspan="1"><b><font size="5">Category</font></b></td>
<td>
<select style="height: 30; width: 250;" name="category">
<option selected>Non Deluxe</option>
<option>Deluxe</option>
</select>
</td>
</tr> 

<tr>
<td><b><font size="5">No. of Rooms</font></b></td>
<td><input type="text" style="height: 30; width: 250;" name="nor" placeholder="Enter no of Room" required></td>
</tr>



<tr style="height: 50;">
<td colspan="2" align="right">
    <input type="submit" style="height: 30;" name="booking" value="BOOK"></td>
</tr>

</table>

</form>
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

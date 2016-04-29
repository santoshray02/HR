<%-- 
    Document   : userdetails
    Created on : Nov 17, 2015, 11:59:32 AM
    Author     : Santosh Ray
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Details</title>
        <link href="Style1.css" type="text/stylesheet" rel="stylesheet"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    </head>
    <body background="N11.jpg">
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
                    <li><a href="Contact.jsp">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </nav>
        <%
            
            if(request.getAttribute("pid_list")!=null){  
                ArrayList al= (ArrayList)(request.getAttribute("pid_list"));
                Iterator itr=al.iterator();
                while(itr.hasNext()){
                    ArrayList plist=(ArrayList)itr.next();
            %>
            <table align="center">
<b><h2 align="left"><a style="text-decoration: none"; href="Viewbook"><font color="black">View your Booking</font></a></h2></b>

<tr>
<td colspan="2"><center><hr size="10" color="green"><font size="4" color="red"><h2>Detail</h2></font><hr size="10" color="green"></center></td></tr>

<tr>
<td><b><font size="5">User Type :</font></b></td>
<td>
            <%= plist.get(0)%>
        </td>
</tr>

<tr>
<td><b><font size="5">User Name :</font></b></td>
<td>
            <%= plist.get(1)%>
        </td>
</tr>

<tr>
<td><b><font size="5">Name :</font></b></td>
<td>
    <%= plist.get(2)%>&nbsp;<%= plist.get(3)%>
        </td>
</tr>

<tr>
<td><b><font size="5">Gender :</font></b></td>
<td>
            <%= plist.get(9)%>
        </td>
</tr>

<tr>
<td><b><font size="5">Date Of Birth :</font></b></td>
<td>
            <%= plist.get(5)%>
        </td>
</tr>

<tr>
<td><b><font size="5">Mobile no :</font></b></td>
<td>
    <%= plist.get(8)%>
           
        </td>
</tr>

<tr>
<td><b><font size="5">Email :</font></b></td>
<td>
     <%= plist.get(7)%>        
   
        </td>
</tr>

<tr>
<td><b><font size="5">Address :</font></b></td>
<td>
     <%= plist.get(6)%>        
    
        </td>
</tr>


            <%}
            }
 
               
        %>
        </table>
        <% out.print("<font size=5 color=black><b>");
            if(request.getAttribute("name")!=null){
    out.println(request.getAttribute("name"));
    out.print("</font></b>");
}%>
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

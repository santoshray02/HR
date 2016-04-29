<%-- 
    Document   : viewyourbook
    Created on : 8 Mar, 2016, 6:27:47 PM
    Author     : Santosh Ray
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
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
        <h2><a href="hotelhome.jsp">Home</a></h2>
        <%
       
       if(session.getAttribute("user")!=null)
       {
           out.print("<b>");
        //out.print(session.getAttribute("user"));
        out.print("</b>");
    %>
    <h2 align="right"><font color="white" >Welcome <a style="color: red" href="userdetails?username=<%=session.getAttribute("user")%>"><%=session.getAttribute("user")%></a></font>&nbsp;&nbsp;&nbsp;&nbsp;<a style="text-decoration: none" href="Logoutservlet"><font color="black">Logout</font></a></h2></b>  
 <table>
<% 
            
            if(request.getAttribute("pid_list")!=null){
                out.print("<tr align='left'><th width='300'>Booking id</th><th width='300'>Name</th><th width='300'>Hotel</th><th width='300'>Check In</th><th width='300'>Check Out</th><th width='300'>Room Type</th><th width='300'>Category</th><th width='300'>No of Rooms</th></tr>");
                ArrayList al= (ArrayList)(request.getAttribute("pid_list"));
                Iterator itr=al.iterator();
                while(itr.hasNext()){
                    ArrayList plist=(ArrayList)itr.next();
            %>
        <tr>
    <td width='300'>
             
        <h3><%= plist.get(0)%></h3>
    </td>
    <td width='300'>
             
        <h3><%= plist.get(1)%></h3>
    </td>
    <td width='300'>
             
        <h3><%= plist.get(2)%></h3>
    </td>
    <td width='300'>
             
        <h3><%= plist.get(3)%></h3>
    </td>
    <td width='300'>
             
        <h3><%= plist.get(4)%></h3>
    </td>
    <td width='300'>
             
        <h3><%= plist.get(5)%></h3>
    </td>
    <td width='300'>
             
        <h3><%= plist.get(6)%></h3>
    </td>
    <td width='300'>
             
        <h3><%= plist.get(7)%></h3>
    </td>
    <td width='300'>
             
        <h3><a href="Cancelbook?id=<%= plist.get(0)%>">Cancel</a></h3>
    </td>
</tr>


<%}
            }
            else{
               
        %>
        <tr>
            <td colspan=3 align="center" style="background-color: #66ff66"<b><%=request.getAttribute("msg")%> </b>
    </tr>
    <%}%>
</table>
        
<%
       }else{
    %>
    
<b><h2 align="right"><a href="Login.jsp"><font color="white">Login</font></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="SignUp.jsp"><font color="white">Sign Up</font></a></h2></b>
<%
       }
%>

    </body>
</html>

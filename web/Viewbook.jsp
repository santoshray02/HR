<%-- 
    Document   : Viewbook
    Created on : Nov 26, 2015, 3:29:47 PM
    Author     : Santosh Ray
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Booking </title>
    
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
    <%
                    if(session.getAttribute("user")!=null){
                %>
        <nav class="navbar header">
        <div class="container-fluid">
            <div class="navbar-header navbar-right">
                
                <ul class="nav navbar-nav">
                    <li><a href="userdetails?username=<%=session.getAttribute("user")%>" class="active"><span><%=session.getAttribute("name")%></span></a></li>
                    <li><a href="Logoutservlet?h=c"><span>Logout</span></a></li>
                   
                </ul> 
                
            </div>
        </div>
    </nav>
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
                }
                else{
             request.setAttribute("msg","plz login first");
             response.sendRedirect("Login.jsp");
                }
            %>


    </body>
</html>

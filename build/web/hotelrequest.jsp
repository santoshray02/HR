<%-- 
    Document   : hotelrequest
    Created on : 8 Mar, 2016, 6:00:42 PM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Request</title>
    </head>
    <body>
        <center>
        <h1>Your request is submitted for Admin approval </h1>
<% 
            if(request.getAttribute("hid")!=null){
                %>
                
                <div class="alert alert-success text-center" role="alert">your login id/ hotelid : <%=request.getAttribute("hid")%></div>
        <%
}
        %>
        <h3>you will be able to login once your account is verified</h3>
        <h2><a href="Login.jsp">click here to Login to hotel account</a></h2>
        </center>
    </body>
</html>

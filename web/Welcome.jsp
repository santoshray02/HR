<%-- 
    Document   : Welcome
    Created on : Oct 16, 2015, 12:27:48 PM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to HRS</title>
    </head>
    <body><center>
        <%  
            if(session.getAttribute("user")!=null){
    out.println("Hello " +session.getAttribute("user"));
}%>
    </center>
    </body>
</html>

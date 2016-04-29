<%-- 
    Document   : uploadprofile
    Created on : Nov 4, 2015, 10:05:12 AM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile </title>
    </head>
    <body><center>
        <h1>Update profile</h1>
        <form action="Uploadservlet" enctype="multipart/form-data">
            enter id<input type="text" name="id" />
            select a file to upload<br>
            <input type="file" name="file" size="50"/>
            <br><br>
            <input type="submit" value="upload file"/>
        </form>
    </center>
    </body>
</html>

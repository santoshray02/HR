<%-- 
    Document   : imgupload
    Created on : 7 Mar, 2016, 3:27:52 PM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <form  method="post" action="Uploadservlet" enctype="multipart/form-data">
           Name: <br>
                    <input type="text" name="name" size="50"/></td>
               
        <br><input type="file" name="photo" size="50"/></td>
                
                   
                        <input type="submit" value="Save">
                    
        </form>
        <form action="Viewservlet">
            Enter name for photo :<input type="text" name="name" >
            <input type="submit">
        </form>
    </body>
</html>

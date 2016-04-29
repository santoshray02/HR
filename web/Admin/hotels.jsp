<%-- 
    Document   : hotels
    Created on : 15 Mar, 2016, 9:24:37 PM
    Author     : Santosh Ray
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>hotel</title>
    </head>
    <body>
        <% int i=0;
        String color;
            
            if(request.getAttribute("pid_list")!=null){  
                out.print("<table align='center' cellspacing='0'><tr><th></th><th colspan='4'><font size='7'>Hotels Details</font></th><th></th></tr>");
        
                ArrayList al= (ArrayList)(request.getAttribute("pid_list"));
                Iterator itr=al.iterator();
                while(itr.hasNext()){
                    if(i%2==0)
                        color="#99CC99";
                    else
                        color="#f9b569";
                    i++;
                    ArrayList plist=(ArrayList)itr.next();
            
            %>
            
    <tr style="background-color: <%=color%>;">
        <td>
            <img src="Viewservlet?hid=<%= plist.get(0)%>" height="200" width="300"/>
        </td>
        <td width="300">
            <%= plist.get(0)%>
        </td>
        <td width="300">
            <%= plist.get(1)%>
        </td>
        <td width="300">
            <%= plist.get(2)%>
        </td>
        <td width="300">
            <%= plist.get(3)%>
        </td>
        <td width="300">
            <%= plist.get(4)%>
        </td>
        <td width="300">
            <%= plist.get(5)%>
        </td>
        <td width="300">
            <%= plist.get(6)%>
        </td>
        <td width="300">
            <%= plist.get(7)%>
        </td>
      
        <%
       
       if(session.getAttribute("user")!=null)
       {
    %>
        <td width="300">
            <a href="#">delete hotel</a>
        </td>
        <%
       }
       }
            }
            if(i==0){
               
        %>
    <tr>
        <td colspan=3 align="center" style="background-color: #66ff66"<b> NO Hotel Found</b>
    </tr>
    <%}%>
    </table>     
    </body>
</html>

<%-- 
    Document   : viewdetails
    Created on : 12 Mar, 2016, 2:36:24 PM
    Author     : Santosh Ray
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel edit</title>
        <link href="css/style1.css" type="text/stylesheet" rel="stylesheet"/>
    </head>
    <body>
        <div align="center">
<div class="header">
    <div class="logo-holder">
      <h1 id="logo"><a href="Home.jsp">Hotel reservation</a></h1>
      
    </div>
    <div id="navigation">
      <ul>
        <li><a href="viewyourbookservlet" class="active"><span>View your booking</span></a></li>
        <li><a href="Hoteldetailsservlet"><span>View your details</span></a></li>

        <li><a href="#"><span>Support</span></a></li>
        <li><a href="Contact"><span>Contact</span></a></li>
      </ul>
    </div>
	
    <div class="cl">&nbsp;</div>
  </div>
        <%
       
       if(session.getAttribute("user")!=null)
       {
           out.print("<b>");
        //out.print(session.getAttribute("user"));
        out.print("</b>");
    %>
    <h2 align="right"><font color="white" >Welcome <a style="color: red" href="userdetails?username=<%=session.getAttribute("user")%>"><%=session.getAttribute("user")%></a></font>&nbsp;&nbsp;&nbsp;&nbsp;<a style="text-decoration: none" href="Logoutservlet"><font color="black">Logout</font></a></h2></b>  
        <%
        if(request.getAttribute("msg")!=null)
       {
           out.print("<b>");
        out.print(request.getAttribute("msg"));
        out.print("</b>");
        }
    %>
       
            <table>
<% 
            
            if(request.getAttribute("al")!=null){
                
                ArrayList al= (ArrayList)(request.getAttribute("al"));
                
           
            %>
     <form action="Edithotelservlet" method="post">       
        <tr>
            <td width='300'>Hotel id</td>
    <td width='300'>
             
        
        <input type="text" value="<%= al.get(0)%>" name="hid" >
    </td>
   
    </tr>
<tr>
    <td width='300'>Hotel name</td>
    <td width='300'>
         <input type="text" value="<%= al.get(1)%>" name="hname">    
       
    </td>
    </tr>
<tr>
    <td width='300'>City</td>
    <td width='300'>
        <input type="text" value="<%= al.get(2)%>" name="city">    
        
    </td>
    </tr>
<tr>
    <td width='300'>PHone</td>
    <td width='300'>
         <input type="text" value="<%= al.get(3)%>" name="mob">    
       
    </td>
    </tr>
<tr>
    <td width='300'>Email</td>
    <td width='300'>
       <input type="email" value="<%= al.get(4)%>" name="email">     
        
    </td>
    </tr>
<tr>
    <td width='300'>rank</td>
    <td width='300'>
         <input type="text" value="<%= al.get(5)%>" disabled>  
        
    </td>
        </tr>
<tr>
    <td width='300'>State</td>
    
    <td width='300'>
         <input type="text" value="<%= al.get(6)%>" name="state">    
     
    </td>
    </tr>
<tr>
    <td width='300'>Password</td>
    <td width='300'>
             
        <input type="text" value="<%= al.get(7)%>" name="password">
    </td>
    </tr>
    <tr>
    <td width='300' >
             
        <input type="submit" value="Edit">
    </td>
</tr>
<tr>        </form>

<%
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

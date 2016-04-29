<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
    <title>Hotel Reservation</title>
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
<tr>
<td colspan="2"><center><font size="5" color="red"><h2>!!! Thank you !!!</h2></font></center></td></tr>

<% 
            
            if(request.getAttribute("msg")!=null){  
                
            %>
<tr>
    <td>
             
        <h1><%= request.getAttribute("msg")%></h1>
        <br>
        <br>
        <h3 align="center"><font color="yellow"><a style="text-decoration: none" href="Viewbook">View Your Booking</a> </h3>
    </td>
</tr>
<%}
            
            else{
               
        %>
        <tr>
        <td colspan=3 align="center" style="background-color: #66ff66"<b> <h1><%= request.getAttribute("msg")%></h1> </b>
    </tr>
    <%}%>
</table>

</body>
</html>

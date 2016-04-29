<%-- 
    Document   : hotelsignup
    Created on : 6 Mar, 2016, 2:07:03 PM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/hrs.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
        <title>Register</title>
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
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="Aboutus.jsp">About</a></li>
                    <li><a href="Contactus.jsp">Contact Us</a></li>
                    <li><a href="Contactus.jsp">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </nav>
                <div class="container">
            
    <%
       
       if(request.getAttribute("msg")!=null)
       {
        %>
        
        <div class="alert alert-warning text-center" role="alert"><%=request.getAttribute("msg")%></div>
        <%} 
    %>
<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        <form method="Post" action="Hotelregisterservlet"  enctype="multipart/form-data" role="form">
			<h2>Register your Hotel <small>It's free and always will be.</small></h2>
			<hr class="colorgraph">
			<div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group required ">
                                            
                                                <input type="text" name="hname" id="hname" required="required" class="form-control input-lg" placeholder="Hotel Name" tabindex="1">
                                            
                                        </div>
                                    </div>
				
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group required">
						<input type="text" name="city" id="city" required="required" class="form-control input-lg" placeholder="City" tabindex="2">
					</div>
				</div>
			</div>
                        <div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group required">
                        <input type="text" name="state" id="state" required="required" class="form-control input-lg" placeholder="state" tabindex="3">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group required">
						<input type="text" name="mob" id="mobile" required="required" class="form-control input-lg" placeholder="Mobile" tabindex="4">
                                        </div>
				</div>
			</div>
                        
                        
                        
                        
                        <div class="form-group required">
				<input type="email" name="email" id="email" class="form-control input-lg" required="required" placeholder="Email Address" tabindex="5">
			</div>
			<div class="form-group required">
				<input type="file" name="photo" id="photo" class="form-control input-lg" required="required" placeholder="address" tabindex="6">
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group required">
						<input type="password" name="password" id="password" required="required" class="form-control input-lg" placeholder="Password" tabindex="7">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" id="password_confirmation" required="required"class="form-control input-lg" placeholder="Confirm Password" tabindex="7">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" tabindex="7">I Agree</button>
                        <input type="checkbox" id="t_and_c" class="hidden" value="1">
					</span>
				</div>
				<div class="col-xs-8 col-sm-9 col-md-9">
					 By clicking <strong class="label label-primary">Register</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a> set out by this site, including our Cookie Use.
				</div>
			</div>
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="submit" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				<div class="col-xs-12 col-md-6"><a href="Login.jsp" class="btn btn-success btn-block btn-lg">Login In</a></div>
			</div>
		</form>
	</div>
</div>
</div>


<footer class="navbar-default footercolor">
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

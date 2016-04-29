<%-- 
    Document   : SignUp
    Created on : Oct 16, 2015, 12:09:06 PM
    Author     : Santosh Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/style1.css" rel='stylesheet' type='text/css' />
<link href="css/usersignup/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign Up</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<script type="text/javascript">
    function fun()
    {
        var valid=0;
        var v=document.frm.user.value;
        if(v=="")
        {
            document.getElementById('a').innerHTML="*";
            valid=1;
        }
        else
        document.getElementById('a').innerHTML="";
        
        
        v=document.frm.fnm.value;
        if(v=="")
        {
            document.getElementById('b').innerHTML="*";
            valid=1;
        }
        else
        document.getElementById('b').innerHTML="";
        
        
        
        v=document.frm.lnm.value;
        if(v=="")
        {
            document.getElementById('c').innerHTML="*";
            valid=1;
        }
        else
        document.getElementById('c').innerHTML="";
        
        
        v=document.frm.pwd.value;
        if(v=="")
        {
            document.getElementById('d').innerHTML="*";
            valid=1;
        }
        else
        document.getElementById('d').innerHTML="";
        
        
        
        v=document.frm.dob.value;
        if(v=="")
        {
            document.getElementById('e').innerHTML="*";
            valid=1;
        }
        else
        document.getElementById('e').innerHTML="";
        
        
        v=document.frm.mob.value;
        var pwd_reg=/[0-9]{9,10}$/;
        if(pwd_reg.test(v))
        {
            document.getElementById('f').innerHTML="";
        }
        else
        {
            document.getElementById('f').innerHTML="*";
            valid=1;
        }
        
        v=document.frm.email.value;
        var pwd_reg1=/^\w+@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if(pwd_reg1.test(v))
        {
            document.getElementById('h').innerHTML="";
        }
        else
        {
            document.getElementById('h').innerHTML="*";
            valid=1;
        }
        
        if(!document.frm.r1[0].checked && !document.frm.r1[1].checked)
        {
            document.getElementById('g').innerHTML="*";
            valid=1;
        }
        else
        document.getElementById('g').innerHTML="";
        
        
        if(valid==1)
        return false;
        else
        return true;
        
    }
    </script>
</head>
<body>
    <div class="header">
    <div class="logo-holder">
      <h1 id="logo"><a href="Home.jsp">Hotel reservation</a></h1>
      
    </div>
    <div id="navigation">
      <ul>
        <li><a href="Home.jsp" class="active"><span>Home</span></a></li>
        <li><a href="About.jsp"><span>About Us</span></a></li>

        <li><a href="#"><span>Support</span></a></li>
        <li><a href="Contact"><span>Contact</span></a></li>
      </ul>
    </div>
	
    <div class="cl">&nbsp;</div>
  </div>
<div class="main">
	<div class="social-icons">
		 <div class="col_1_of_f span_1_of_f"><a href="#">
		    <ul class='facebook'>
		    	<i class="fb"> </i>
		    	<li>Connect with Facebook</li>
		    	<div class='clear'> </div>
		    </ul>
		    </a>
		 </div>	
		 <div class="col_1_of_f span_1_of_f"><a href="#">
		    <ul class='twitter'>
		      <i class="tw"> </i>
		      <li>Connect with Twitter</li>
		      <div class='clear'> </div>
		    </ul>
		    </a>
		</div>
		<div class="clear"> </div>	
      </div>
    <div class="clear"> </div>
      <h2>Or Signup with</h2>
		<form name="frm" action="SignUpservlet" method="post" onsubmit="return fun()">

<%
       
       if(request.getAttribute("msg")!=null)
       {
           out.print("<b>");
        out.print("<center><font size='5'>"+request.getAttribute("msg")+"</font></center>");
        out.print("</b>");
       } 
    %>
		   <div class="lable">
                       <div class="col_1_of_2 span_1_of_2"><input type="text" name="fname" class="text" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}"></div>
                       <div class="col_1_of_2 span_1_of_2"><input type="text" name="lname" class="text" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}"></div>
                <div class="clear"> </div>
		   </div>
		   <div class="lable-2">
			<input type="text" class="text" name ="username"value="username " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username ';}">
		        <input type="text" class="text" name="email" value="your@email.com " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'your@email.com ';}">
		        <input type="text" class="text" name="mob" value="Mobile " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile ';}">
                        <input type="date" min="2010-08-14" max="2011-08-14" value="2010-08-14" class="text" name="dob" value="Date of Birth" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Date of Birth ';}">
                        <input type="text" class="text" name="address" value="Address " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address ';}">
                        <input type="text" class="text" name="r1" value="gender " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Gender ';}">
			<input type="password" class="text" name="password" value="Password " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password ';}">
		   </div>
		   <div class="clear"> </div>
		   <h3>By creating an account, you agree to our <span class="term"><a href="#">Terms & Conditions</a></span></h3>
		   <div class="submit">
			  <input type="submit" onclick="myFunction()" value="Create account" >
		   </div>
		   <div class="clear"> </div>
		</form>
		<!-----//end-main---->
		</div>
		 <!-----start-copyright---->
   		<div class="copy-right">
			
		</div>
				<!-----//end-copyright---->
</body>
</html>
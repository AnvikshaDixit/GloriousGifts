<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en-US">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<head>

	<meta charset="utf-8">

	<title>Login</title>

	<link rel="stylesheet">
	<%-- <jsp:include page="/WEB-INF/view/login.css"/> --%>
<style>

@charset "utf-8";

@import url(http://weloveiconfonts.com/api/?family=fontawesome);


@import url(http://meyerweb.com/eric/tools/css/reset/reset.css);


[class*="fontawesome-"]:before {
  font-family: 'FontAwesome', sans-serif;
}



body {
	background-color: #C0C0C0;
	color: #000;
	font-family: "Varela Round", Arial, Helvetica, sans-serif;
	font-size: 16px;
	line-height: 2.5em;
}

input {
	border: none;
	font-family: Lucida Handwriting;
	font-size: inherit;
	font-weight: inherit;
	line-height: inherit;
	-webkit-appearance: none;
}

/* ---------- LOGIN ---------- */

#login {
	margin: 50px auto;
	width: 400px;
}

#login h2 {
	background-color: #830404;
	-webkit-border-radius: 20px 20px 0 0;
	-moz-border-radius: 20px 20px 0 0;
	border-radius: 20px 20px 0 0;
	color: #fff;
	font-size: 28px;
	padding: 20px 26px;
}

#login h2 span[class*="fontawesome-"] {
	margin-right: 14px;
}

#login fieldset {
	background-color: #fff;
	-webkit-border-radius: 0 0 20px 20px;
	-moz-border-radius: 0 0 20px 20px;
	border-radius: 0 0 20px 20px;
	padding: 20px 26px;
}

#login fieldset p {
	color: #777;
	margin-bottom: 14px;
}

#login fieldset p:last-child {
	margin-bottom: 0;
}


body {
    font-family: "Lato", sans-serif;
    transition: background-color .5s;
     background: url(resources/img/b1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

#login fieldset input {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

#login fieldset input[type="email"], #login fieldset input[type="password"] {
	background-color: #eee;
	color: #777;
	padding: 4px 10px;
	width: 328px;
}

#login fieldset input[type="submit"] {
	background-color: #33cc77;
	color: #fff;
	display: block;
	margin: 0 auto;
	padding: 4px 0;
	width: 100px;
}

#login fieldset input[type="submit"]:hover {
	background-color: #28ad63;
}

.jumbotron {
    margin-bottom: 0px;
     
    background-position: 0% 25%;
    background-size: cover;
    background-repeat: no-repeat;
    color: black;
    text-shadow: black 0.3em 0.3em 0.3em;
    margin:5px; 
    padding:0 px;
    color:white;
     background-color: rgba(5,4,2,0.5);
     }

body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px !important;
    margin-left: 50px;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

.error
{
padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #ff0000;;
	background-color: #f2dede;
	border-color: #ebccd1;
}





</style>
</head>

<body>

 <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a href="index">Home<span class="glyphicon glyphicon-home" /></a>
  <a href="#">About Us<span class="glyphicon glyphicon-pencil" /></a>
  <a href="allproducts">Products<span class="glyphicon glyphicon-gift" /></a>
  <a href="#">Contact Us<span class="glyphicon glyphicon-phone-alt" /></a>
  <br>
  
  <br>
  
  <br>
 
  <a href="loginpage">Login<span class="glyphicon glyphicon-log-in" /></a>
  <a href="signup">Sign Up<span class="glyphicon glyphicon-user" /></a>
  
 <br><br>
  </div>

<div class="title" id="main">
<div class="jumbotron">
 <h1 style="text-align:left;font-size:50px; font-family:Segoe Script;color:white;" ><b> Glorious Gifts <span style="float:right;font-size:30px;cursor:pointer" onclick="openNav()" class="glyphicon glyphicon-menu-hamburger"> </span>  </b></h1>
 </div>
                      
                      <br>

	<div id="login">

		<h2><span class="fontawesome-lock"></span>Sign In</h2>
<fieldset>
		<section class="login">
        <form  action="login" method="POST">
        	
        	   <c:if test="${not empty error}">
               <div class="error">${error}</div>
               </c:if>

				<p><label  path="username" name="username"  type="text"  placeholder="Username" >Username</label></p>
				<p><input   path="username" name="username"  type="text"  placeholder="Username"></p> 

				<p><label path="password" name="password" type="password"  placeholder="Password">Password</label></p>
				<p><input path="password" name="password" type="password"  placeholder="Password" ></p> 
                  
				
				<p><input type="submit" value="Log In"></p>

				


			

		</form>
</section>
</fieldset>
	</div> <!-- end login -->
</div>




     
</body>	
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.5)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
   document.body.style.backgroundColor = "none";
}
</script>
</html>
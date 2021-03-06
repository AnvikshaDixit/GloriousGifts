
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<head>
<title>Admin Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body {
 color:white;
    font-family: "Lato", sans-serif;
    transition: background-color .5s;
     background: url(resources/img/b1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

h3
{ color:#ffffff;
}

.submenu {
  list-style: none;
  padding: 0;
  margin: 0;
}
.submenu a {
  background-color: none;
}
.submenu a:hover {
  background-color: none;
}
.submenu {
  overflow: hidden;
  max-height: 0;
  -webkit-transition: all 0.5s ease-out;
}

.mainmenu li:hover .submenu {
  display: block;
  max-height: 200px;
}
.jumbotron {
    margin-bottom: 0px;
     
    background-position: 0% 25%;
    background-size: cover;
    background-repeat: no-repeat;
    text-shadow: black 0.3em 0.3em 0.3em;
    margin:5px; 
    padding:0 px;
    color:white;
     background-color: rgba(5,4,2,0.5);
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
    font-size: 20px;
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
</style>


</head>
<body>
 <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">�</a>
   <ul class="mainmenu">
   <c:if test="${pageContext.request.userPrincipal.name != null}">
			<a href="#"><h4>Hello : ${pageContext.request.userPrincipal.name}</h4> </a>
			
		</c:if>
  <a href="index">Home<span class="glyphicon glyphicon-home" /></a>
  <!-- <a href="Aboutus">About Us<span class="glyphicon glyphicon-pencil" /></a> -->
   
  
  <li> <a href="allproducts">Products<span class="glyphicon glyphicon-gift" /></a>
  <ul class="submenu">
        <li><a href="cartimg">Cakes</a></li>
        <li><a href="">Flowers</a></li>
        <li><a href="">Gifts</a></li>
      </ul>
     
 <a href="ContactUs">Contact Us<span class="glyphicon glyphicon-phone-alt" /></a>
  <c:if test="${pageContext.request.userPrincipal.name != null}">
			 <a href="product">Product Entry<span class="glyphicon glyphicon-hdd" /></a>
			</h3>
		</c:if>
 <br>
 <br>
  
		<!-- 
			<a href="loginpage">Login<span class="glyphicon glyphicon-log-in" /></a>
             <a href="signup">Sign Up<span class="glyphicons glyphicons-group"></span></a>
   -->
			
		
  <sec:authorize access="hasRole('USER')">
		<!-- For login user -->
		<c:url value="/logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<script>
			function formSubmit() {
				document.getElementById("logoutForm").submit();
			}
		</script>

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<a href="javascript:formSubmit()"> Logout</a>
			<!-- <a href="Admin">Admin<span class="glyphicon glyphicon-user" /></a> -->
			</h3>
		</c:if>
	</sec:authorize>
  </ul>
 <br><br>
  </div>	
  
  
  
 <br><br>
  </div>	
<div class="title" id="main">


<div class="row jumbotron">
 <div class=col-sm-6 >
	<h3 style="text-align:left;font-size:40px; font-family:Segoe Script;color:white;"><b> Glorious Gifts </b></h3>
                      </div>
                      <div class="col-sm-5">
                      <span style="float:right;font-size:30px;cursor:pointer" onclick="openNav()" class="glyphicon glyphicon-menu-hamburger"> </span>  
                       </div>
   </div>     
   <div class="jumbotron" Style="Font-size:25px;text-align:center">
   
   Welcome Admin ...
   </div>
      
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
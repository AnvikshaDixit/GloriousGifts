<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width , initial-state=1" />
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/angular.min.js"></script>
	
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Entry of Product Details</title>

<style>
input
{
  -moz-border-radius: 15px;
 border-radius: 15px;
    border:solid 1px black;
    padding:5px;
}

.submit input
    {
    color: #000;
    background: #ffa20f;
    border: 2px outset #d7b9c9
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
</style>
</head>
<body background="resources/img/b1.jpg"  >

 <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a href="index">Home<span class="glyphicon glyphicon-home" /></a>
  <a href=Aboutus>About Us<span class="glyphicon glyphicon-pencil" /></a>
  <a href="allproducts">Products<span class="glyphicon glyphicon-gift" /></a>
  <a href="#">Contact Us<span class="glyphicon glyphicon-phone-alt" /></a>
  <br>
   <a href="product">Product Entry<span class="glyphicon glyphicon-hdd" /></a>
  <br>
  
  <br>
 
  <a href="loginpage">Login<span class="glyphicon glyphicon-log-in" /></a>
  <a href="signup">Sign Up<span class="glyphicon glyphicon-user" /></a>
  
 <br><br>
  </div>

<div class="title" id="main">
 <h1 style="text-align:left;font-size:50px; font-family:Segoe Script;color:white;" class="jumbotron"><b> Glorious Gifts <span style="float:right;font-size:30px;cursor:pointer" onclick="openNav()" class="glyphicon glyphicon-menu-hamburger"> </span>  </b></h1>
                      <br>
                      <br>
                      <br>
<div class="row jumbotron "  style="margin:15px; padding:15 px;">
  <div class="col-sm-1"></div>
    <div class="col-sm-6 jumbotron " >
       <form:form method="POST" action="Productvalues" modelAttribute="Product">
            <table cellspacing="10" align="center" style="font-family:Comic Sans MS;color:#F70934">
        <tr>
        <td><form:label path="productName" type="text" style=" font-family:Comic Sans MS;"><b>PRODUCT NAME:</b></form:label></td>
        <td><form:input path="productName" type="text" STYLE="color: #000000; font-family:Comic Sans MS; "/><br><br></td>
    </tr>
    
     <tr>
        <td><form:label path="price" style=" font-family:Comic Sans MS;"><b>PRICE</b></form:label></td>
        <td><form:input path="price" STYLE="color: #000000; font-family:Comic Sans MS; " /><br><br></td>
    </tr>
    
        
     <tr>
        <td><form:label path="manufacturer" style=" font-family:Comic Sans MS;">MANUFACTURER</form:label></td>
        <td><form:input path="manufacturer" STYLE="color: #000000; font-family:Comic Sans MS; " /><br><br></td>
    </tr>
    
    <tr>
        <td><form:label path="image" style=" font-family:Comic Sans MS;">IMAGE URL:</form:label></td>
        <td><form:input path="image" STYLE="color: #000000; font-family:Comic Sans MS; " /><br><br></td>
    </tr>
    
    <tr>
        <td colspan="2">
            <input type="submit" STYLE="color: #FFF8DC; font-family:Comic Sans MS; background-color:#000000 ;" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</div>
<div class="col-sm-3 " >
<img
					src="<c:url value='resources/img/s1.jpg'/>"
					class="img-responsive img-circle" />
</div>

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


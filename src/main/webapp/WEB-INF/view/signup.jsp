<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width , initial-state=1"/>
 <link rel="stylesheet" href="resources/css/bootstrap.min.css">
   <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  
  <head>
    <title>Sign up Form</title>

    <style>

input
{
  -moz-border-radius: 15px;
 border-radius: 15px;
    border:solid 1px black;
    padding:5px;
}
 label
 {
 color:#ffffff;
 }
body {text-align:center;
    font-family: "Lato", sans-serif;
    transition: background-color .5s;
     background: url(resources/img/b1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
h1{text-align:left;}
div{text-align:center;}

input {
    
    /* make it glow! */
    -webkit-box-shadow: 0px 0px 4px #4195fc;
       -moz-box-shadow: 0px 0px 4px #4195fc;
            box-shadow: 0px 0px 4px #4195fc; /* some variation of blue for the shadow */

}
.err
{ color:#ff0000;
 
}
.jumbotron {
    margin-bottom: 0px;
     
    background-position: 0% 25%;
    background-size: cover;
    background-repeat: no-repeat;
    color: white;
    text-shadow: black 0.3em 0.3em 0.3em;
    margin:5px; 
    padding:0 px;
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

<body >
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


  <div class="title " id="main">
 <h1 style="text-align:left;font-size:50px; font-family:Segoe Script;color:white;" class="jumbotron"><b> Glorious Gifts <span style="float:right;font-size:30px;cursor:pointer" onclick="openNav()" class="glyphicon glyphicon-menu-hamburger"></span>  </b></h1>
            
<div class="row">
<div class="col-sm-3" style="backgroung-color:grey">

</div>
<div class="col-sm-6 " style="backgroung-color:grey" >
 <div class="jumbotron">
<h2 style="font-family:Imprint MT Shadow ;text-align:center"><b><span class="glyphicon glyphicon-user" />PLEASE SIGN UP</b> </h2><br> <br>
<h5 style="font-family:Mistral,text-align:center"><b>PLEASE ENTER THE USER DETAILS</b></h5>

<form:form method="POST" action="Uservalues" modelAttribute="User">
   <table cellspacing="10" align="center" style="font-family:Comic Sans MS">
    <tr>
        <td><form:label path="username"  type="text" style=" font-family:Comic Sans MS;text-color:white">NAME</form:label></td>
        <td><form:input path="username" STYLE="color: #000000; font-family:Comic Sans MS;"/> <br><br></td>
        <td><form:errors path="username" class="err" /></td>
    </tr>
    <tr>
        <td><form:label path="email" style=" font-family:Comic Sans MS;">EMAIL ID</form:label></td>
        <td><form:input path="email"   STYLE="color: #000000; font-family:Comic Sans MS; " /><br><br></td>
        <td><form:errors path="email" class="err" /></td>
    </tr>
     <tr>
        <td><form:label path="password" style=" font-family:Comic Sans MS;">PASSWORD</form:label></td>
        <td><form:input path="password" type="password" STYLE="color: #000000; font-family:Comic Sans MS; "/><br><br></td>
         <td><form:errors path="password" class="err"  /></td>   
    </tr>
    
     <tr>
        <td><form:label path="cPassword" style=" font-family:Comic Sans MS;">CONFIRM-PASSWORD</form:label></td>
        <td><form:input path="cPassword" STYLE="color: #000000; font-family:Comic Sans MS; " /><br><br></td>
        <td><form:errors path="cPassword" class="err" /></td>
    </tr>
    
        
     <tr>
        <td><form:label path="address" style=" font-family:Comic Sans MS;">ADDRESS</form:label></td>
        <td><form:input path="address" STYLE="color: #000000; font-family:Comic Sans MS; " /><br><br></td>
        <td><form:errors path="address" class="err" /></td>
    </tr>
    
    <tr>
        <td><form:label path="phone" style=" font-family:Comic Sans MS;">PHONE</form:label></td>
        <td><form:input path="phone" STYLE="color: #000000; font-family:Comic Sans MS; " /><br><br></td>
        <td><form:errors path="phone" class="err" /></td>
    </tr>
    
    <tr>
        <td colspan="2">
            <input type="submit" STYLE="color: #FFF8DC; font-family:Comic Sans MS; background-color:#000000 ;" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</div>
</div>
<div class="col-sm-3">
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
  
  
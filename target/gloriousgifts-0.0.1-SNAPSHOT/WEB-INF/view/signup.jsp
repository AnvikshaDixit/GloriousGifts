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
  <jsp:include page="/WEB-INF/view/head.jsp"/>
  
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

</style>
    

</head>

<body >
<div class="title" id="main">


<div class="row jumbotron">
 <div class=col-sm-6 >
	<h3 style="text-align:left;font-size:40px; font-family:Segoe Script;color:white;"><b> Glorious Gifts </b></h3>
                      </div>
                      <div class="col-sm-5">
                      <span style="float:right;font-size:30px;cursor:pointer" onclick="openNav()" class="glyphicon glyphicon-menu-hamburger"> </span>  
                       </div>
   </div>                    
                      <br>
                      <br>
                      <br>            
<div class="row">
<div class="col-sm-3" style="backgroung-color:grey">

</div>
<div class="col-sm-6 " style="backgroung-color:grey" >
 <div class="jumbotron">
<h2 style="font-family:Tahoma ;text-align:center"><b><span class="glyphicon glyphicon-user" />PLEASE SIGN UP</b> </h2><br> <br>
<h5 style="font-family:Tahoma,text-align:center"><b>PLEASE ENTER THE USER DETAILS</b></h5>

<form:form method="POST" action="Uservalues" modelAttribute="User">
   <table cellspacing="10" align="center" style="font-family:Tahoma">
    <tr>
        <td><form:label path="username"  type="text" style=" font-family:Tahoma;text-color:white">NAME</form:label></td>
        <td><form:input path="username" STYLE="color: #000000; font-family:Tahoma;"/> <br><br></td>
        <td><form:errors path="username" class="err" /></td>
    </tr>
    <tr>
        <td><form:label path="email" style=" font-family:Tahoma;">EMAIL ID</form:label></td>
        <td><form:input path="email"   STYLE="color: #000000; font-family:Tahoma; " /><br><br></td>
        <td><form:errors path="email" class="err" /></td>
    </tr>
     <tr>
        <td><form:label path="password" style=" font-family:Tahoma;">PASSWORD</form:label></td>
        <td><form:input path="password" type="password" STYLE="color: #000000; font-family:Tahoma; "/><br><br></td>
         <td><form:errors path="password" class="err"  /></td>   
    </tr>
    
     <tr>
        <td><form:label path="cPassword" style=" font-family:Tahoma;">CONFIRM-PASSWORD</form:label></td>
        <td><form:input path="cPassword" STYLE="color: #000000; font-family:Tahoma; " /><br><br></td>
        <td><form:errors path="cPassword" class="err" /></td>
    </tr>
    
        
     <tr>
        <td><form:label path="address" style=" font-family:Tahoma;">ADDRESS</form:label></td>
        <td><form:input path="address" STYLE="color: #000000; font-family:Tahoma; " /><br><br></td>
        <td><form:errors path="address" class="err" /></td>
    </tr>
    
    <tr>
        <td><form:label path="phone" style=" font-family:Tahoma;">PHONE</form:label></td>
        <td><form:input path="phone" STYLE="color: #000000; font-family:Tahoma; " /><br><br></td>
        <td><form:errors path="phone" class="err" /></td>
    </tr>
    
    <tr>
        <td colspan="2">
            <input type="submit" STYLE="color: #FFF8DC; font-family:Tahoma; background-color:#000000 ;" value="Submit"/>
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
</html>
  
  
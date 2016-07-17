<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<jsp:include page="/WEB-INF/view/head.jsp"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address Details</title>
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

</style>





</head>
<body>
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
<h3 style="font-family:Tahoma ;text-align:center"><b><span class="glyphicon glyphicon-home" />PLEASE ENTER YOUR ADRESS DETAILS HERE</b> </h3><br> <br>


<form:form method="POST" action="Addressvalues" modelAttribute="Address">
   <table cellspacing="10" align="center" style="font-family:Tahoma">
    <tr>
        <td><form:label path="houseno"  type="text" style=" font-family:Tahoma;text-color:white">House number</form:label></td>
        <td><form:input path="houseno" STYLE="color: #000000; font-family:Tahoma;"/> <br><br></td>
        <td><form:errors path="houseno" class="err" /></td>
    </tr>
    <tr>
        <td><form:label path="address1" style=" font-family:Tahoma;">Address Line 1</form:label></td>
        <td><form:input path="address1"   STYLE="color: #000000; font-family:Tahoma; " /><br><br></td>
        <td><form:errors path="address1" class="err" /></td>
    </tr>
     <tr>
        <td><form:label path="address2" style=" font-family:Tahoma;">Address Line 2</form:label></td>
        <td><form:input path="address2" type="text" STYLE="color: #000000; font-family:Tahoma; "/><br><br></td>
         <td><form:errors path="address2" class="err"  /></td>   
    </tr>
    
     <tr>
        <td><form:label path="city" style=" font-family:Tahoma;">City</form:label></td>
        <td><form:input path="city" STYLE="color: #000000; font-family:Tahoma; " /><br><br></td>
        <td><form:errors path="city" class="err" /></td>
    </tr>
    
        
     <tr>
        <td><form:label path="state" style=" font-family:Tahoma;">State</form:label></td>
        <td><form:input path="state" STYLE="color: #000000; font-family:Tahoma; " /><br><br></td>
        <td><form:errors path="state" class="err" /></td>
    </tr>
    
    <tr>
        <td><form:label path="country" style=" font-family:Tahoma;">Country</form:label></td>
        <td><form:input path="country" STYLE="color: #000000; font-family:Tahoma; " /><br><br></td>
        <td><form:errors path="country" class="err" /></td>
    </tr>
    
    <tr>
        <td><form:label path="zipcode" style=" font-family:Tahoma;">Zip code</form:label></td>
        <td><form:input path="zipcode" STYLE="color: #000000; font-family:Tahoma; " /><br><br></td>
        <td><form:errors path="zipcode" class="err" /></td>
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
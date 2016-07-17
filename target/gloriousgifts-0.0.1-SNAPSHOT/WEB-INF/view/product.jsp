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
<jsp:include page="/WEB-INF/view/head.jsp"/>
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


</style>
</head>
<body background="resources/img/b1.jpg"  >
<div class="title" id="main">
 <h1 style="text-align:left;font-size:50px; font-family:Segoe Script;color:white;" class="jumbotron"><b> Glorious Gifts <span style="float:right;font-size:30px;cursor:pointer" onclick="openNav()" class="glyphicon glyphicon-menu-hamburger"> </span>  </b></h1>
                      <br>
                      <br>
                      <br>
<div class="row jumbotron "  style="margin:15px; padding:15 px;">
  <div class="col-sm-1"></div>
    <div class="col-sm-6 jumbotron " >
       <form:form method="POST" action="Productvalues" modelAttribute="Product" enctype="multipart/form-data">
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
        <td><form:input type="file" path="image" STYLE="color: #000000; font-family:Comic Sans MS; " /><br><br></td>
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
</html>


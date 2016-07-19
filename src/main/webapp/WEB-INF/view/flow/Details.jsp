<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width , initial-state=1" />
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/angular.min.js"></script>
<jsp:include page="/WEB-INF/view/head.jsp"/>

<title>Details Summary</title>



<style>
input {
    
    /* make it glow! */
    -webkit-box-shadow: 0px 0px 4px #4195fc;
       -moz-box-shadow: 0px 0px 4px #4195fc;
            box-shadow: 0px 0px 4px #4195fc; /* some variation of blue for the shadow */
            color:black;
}

table {
    width:100%;
    text-align: center;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: center;
     image-align:center;
    }
    backg
    th{}
    
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
</style>

</head>




<body ng-app="mymodule" >
<div data-ng-controller="mycontroller">
   <div class="container">
       <div class="title" id="main">
 <div class="row jumbotron">
 <div class=col-sm-6 >
	<h3 style="text-align:left;font-size:40px; font-family:Segoe Script;color:white;"><b> Glorious Gifts </b></h3>
                      </div>
                      <div class="col-sm-5">
                      <span style="float:right;font-size:30px;cursor:pointer" onclick="openNav()" class="glyphicon glyphicon-menu-hamburger"> </span>  
                       </div>
   </div>                      <br>
                      <br>
                      <br>
                      <div class="jumbotron" style="white">
<h1> Address Details</h1>
$ {address.houseno}
${address.address1}
${address. address2}
${address. city}
${address. state}
${address. country}
${address. zipcode}
</div>
</div>

</body>

</html>


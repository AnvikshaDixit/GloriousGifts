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

<title>All products</title>


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

<script>

	var myApp= angular.module('mymodule',[]);
	
	myApp.controller("mycontroller",function($scope) {
	   
	   var products=${JSONdata};
	  
	   $scope.products= products;
   
      
});

</script>


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
  <button type="button" class="btn btn-default" data-toggle="collapse" data-target="#demo" style="align:center;font-family:Comic Sans MS">SEARCH  <span  class="glyphicon glyphicon-search"> </span>
     <div id="demo" >
                     
         <h4> <input type="text" placeholder="Search Product" ng-model="Searchtext" ng-init="Searchtext='Gift'" /></h4>

     </div>
</button>	
   <br> 
   <br>
   <br>
    
    <table border="6" text-align="center" > 
      <thead style=" border: 1px solid black;">
      <tr style=" border: 1px solid black;">
      
      <th style=" border: 1px solid black; background-color:#C70039  ;"><h3><b> Product Name </b></h3></th>
      <th style=" border: 1px solid black; background-color: #C70039  ;"><h3><b>Price</b></h3>  </th>
      <th style=" border: 1px solid black;  background-color: #C70039  ;"><h3><b>Product Manufacturer</b></h3> </th>
      <th style=" border: 1px solid black; background-color: #C70039  ;"><h3><b> Product image </b></h3></th>
      <th style=" border: 1px solid black; background-color: #C70039  ;"><h3><b> Product Details </b></h3></th>
            </tr>
      </thead>
      <tbody>
      <tr  ng-repeat="product in products | filter:Searchtext " style=" border: 1px solid black;">
      <td ><b>{{product.ProductName}}</b></td>
      <td ><b>{{product.Price}}</b></td>
        <td ><b>{{product.Manufacturer}}</b></td>
      <td ><img data-ng-src="{{product.Image}}" class="img-responsive img-rounded" width="200" height="200" /></td>
<td ><a href="cartimgnew/{{product.ProductID}}" class="btn btn-primary">View</a></td> </tr>
  </tbody>
</table>
</div>
</div>
</div>

</body>

</html>


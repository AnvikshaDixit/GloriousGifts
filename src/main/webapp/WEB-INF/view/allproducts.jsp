<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width , initial-state=1" />
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/angular.min.js"></script>

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

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a href="index">Home<span class="glyphicon glyphicon-home" /></a>
  <a href="#">About Us<span class="glyphicon glyphicon-pencil" /></a>
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




<div data-ng-controller="mycontroller">
   <div class="container">
       <div class="title" id="main">
 <h1 style="text-align:left;font-size:50px; font-family:Segoe Script;color:white;" class="jumbotron"><b> Glorious Gifts <span style="float:right;font-size:30px;cursor:pointer" onclick="openNav()" class="glyphicon glyphicon-menu-hamburger"> </span>  </b></h1>
                      <br>
                      <br>
                      <br>
<h4>Search : <input type="text" placeholder="SearchText" ng-model="Searchtext" ng-init="Searchtext='Red Roses'" /></h4>

	
   <br> <br>
    
    <table border="6" text-align="center" class="table table-bordered " style=" border: 3px solid black;" > 
      <thead style=" border: 3px solid black;">
      <tr style=" border: 3px solid black;">
      
      <th style=" border: 3px solid black; background-color:#C70039  ;"><h3><b> Product Name </b></h3></th>
      <th style=" border: 3px solid black; background-color: #C70039  ;"><h3><b>Price</b></h3>  </th>
      <th style=" border: 3px solid black;  background-color: #C70039  ;"><h3><b>Product Manufacturer</b></h3> </th>
      <th style=" border: 3px solid black; background-color: #C70039  ;"><h3><b> Product image </b></h3></th>
      
            </tr>
      </thead>
      <tbody>
      <tr  ng-repeat="product in products | filter:Searchtext " style=" border: 3px solid black;">
      <td style=" border: 3px solid black;"><b>{{product.ProductName}}</b></td>
      <td style=" border: 3px solid black;"><b>{{product.Price}}</b></td>
        <td style=" border: 3px solid black;"><b>{{product.Manufacturer}}</b></td>
      <td style=" border: 3px solid black;"><img data-ng-src="{{product.Image}}" class="img-responsive img-rounded" width="200" height="200" /></td>

    </tr>
  </tbody>
</table>
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


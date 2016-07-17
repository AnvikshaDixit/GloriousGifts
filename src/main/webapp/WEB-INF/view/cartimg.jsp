<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Handmade Doll</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width , initial-state=1"/>
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
   <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
<jsp:include page="/WEB-INF/view/head.jsp"/>
<style>
.deal {
  float: left;
    margin: 10px auto;
    padding: 15px;
    width: 250px;
    height: 250px;
    align: midle;
}
   
   body {text-align:center;
    font-family: "Lato", sans-serif;
    transition: background-color .5s;
     background: url(resources/img/b1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  color:#ffffff;
}
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown:hover .dropdown-content {
    display: block;
}

.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body >
<div class="container" id="product-section">
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
  
   <div class="col-sm-6">
   <div class="col-sm-12">
 <h1 style="font-family:Segoe Script">Chumbak-Handmade Doll</h1>
    </div>
    <div class="row">
 <div class="col-sm-12">
  <span class="label label-primary">New</span>
  <span class="monospaced">Product Id. 26789345
 </span>
 </div>
 </div>
<div class="row">
 <div class="col-sm-12">
  <p class="description">
 HANDMADE DOLL-CHUMBAK
  </p>
 
</div>

 
  </div><!-- end row -->
<div class="container">
<div class="row">
 <div class="col-sm-3">
  <span class="sr-only">Four out of Five Stars</span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
  <span class="label label-success">61</span>

 <li role="presentation" class="active">
  <h4><a href="#">Description</a></h4>
  <p style="font-family:Comic Sans MS"> A very cute doll which is admired by all age of people....made by chumbak....really attractive...if you have craze of buying cute things then you must have this in your collection <br> 
  
 </li>
 
 <br>
  <h2 class="product-price"><b>Rs.900</b></h2>
 </div>
 
 <div class="col-md-3">
  <span class="monospaced">Write a Review</span>
 </div>
</div><!-- end row -->
</div>
<div class="container">
<div class="row">
 <div class="col-md-12 bottom-rule">
 <br>
 <br>
 <br>
 
 </div>
 </div><!-- end row -->
</div>
<div class="container>">
<div class="row add-to-cart">
 <div class="col-sm-6 product-qty">
  <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
  </span>
  <input class="btn btn-default btn-lg btn-qty" value="1" />
  <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
  </span>
 </div>
 <div class="col-md-5">
  <button class="btn btn-success btn-brand btn-full-width">
   <b><a href="Addressdetails"> Add to SHOPPING BASKET</a> </b>
  </button>
 </div>
 </div>
</div><!-- end row -->
<div class="container">
<div class="row">
 <div class="col-sm-4 text-center">
<span  style="color:green"><h3><b>In Stock</b></h3></span>
 </div>
</div><!-- end row -->
</div>
<div class="row">
 <div class="col-md-12 bottom-rule top-10"></div>
</div><!-- end row -->
 
</div>
<div class="col-sm-6" style="align:right">
<div class="dropdown">
    <img src="<c:url value='resources/img/g4.jpg'/>"    height="70%" width = "70%" alt="WESTERN DRESS"   class="img-responsive img-rounded"/>
  <div class="dropdown-content">
  <img src="<c:url value='resources/img/g4.jpg'/>"  height="1000" width = "1000" alt="WESTERN DRESS"   class="img-responsive img-rounded"/>
  <div class="desc" style="color:black">Have a closer look to the image</div>
  </div>
</div>
   </div>

 </div>
 
  <!-- Nav tabs -->
  
<ul class="nav nav-tabs " role="tablist">
 <li role="presentation">
  <a href="#"
   aria-controls="features"
   role="tab"
   data-toggle="tab" class="btn btn-info"
  ><B>SPECIFICATIONS</B><span class="caret"></span></a>
 </li>
 <li role="presentation">
  <a href="#"
   aria-controls="notes"
   role="tab"
   data-toggle="tab"
   ></a>
 </li>
 <li role="presentation">
  <a href="#"
   aria-controls="reviews"
   role="tab"
   data-toggle="tab" class="btn btn-info"
  ><B>REVIEWS</B><span class="caret"></span></a>
 </li>
</ul>
</div>
<div role="tabpanel" class="tab-pane active" id="description">
 <p class="top-10">
   entries will be here
 </p>
 <p>
  <small>
   WALKINSTYLE
  </small>
 </p>
 </div>
 </div><!-- end container -->
  </body>

 
 </html>

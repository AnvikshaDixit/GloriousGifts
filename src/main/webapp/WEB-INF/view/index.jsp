<!Doctype>
<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<head>



<style>



html {
    position: relative;
    min-height: 100%;
}
label
 {
 color:#ffffff;
 }
.carousel-fade .carousel-inner .item {
    opacity: 0;
    transition-property: opacity;
}
.carousel-fade .carousel-inner .active {
    opacity: 1;
}
.carousel-fade .carousel-inner .active.left,
.carousel-fade .carousel-inner .active.right {
    left: 0;
    opacity: 0;
    z-index: 1;
}
.carousel-fade .carousel-inner .next.left,
.carousel-fade .carousel-inner .prev.right {
    opacity: 1;
}
.carousel-fade .carousel-control {
    z-index: 2;
}
@media all and (transform-3d),
(-webkit-transform-3d) {
    .carousel-fade .carousel-inner > .item.next,
    .carousel-fade .carousel-inner > .item.active.right {
        opacity: 0;
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
    }
    .carousel-fade .carousel-inner > .item.prev,
    .carousel-fade .carousel-inner > .item.active.left {
        opacity: 0;
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
    }
    .carousel-fade .carousel-inner > .item.next.left,
    .carousel-fade .carousel-inner > .item.prev.right,
    .carousel-fade .carousel-inner > .item.active {
        opacity: 1;
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
    }
}
.item:nth-child(1) {
    background: url(resources/img/c9.jpg) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
.item:nth-child(2) {
    background: url(resources/img/g1.jpg) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
.item:nth-child(3) {
    background: url(resources/img/f3.jpg) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}

.item:nth-child(4) {
    background: url(resources/img/f4.jpg) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
.item:nth-child(5) {
    background: url(resources/img/c11.jpg) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
.carousel {
    z-index: -99;
}
.carousel .item {
    position: fixed;
    width: 100%;
    height: 100%;
}
.title {
  text-align: center;
  margin-top: 20px;
  padding: 10px;
  text-shadow: 2px 2px #000;
  color: #FFF;
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



<div class="carousel slide carousel-fade" data-ride="carousel">

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
        </div>
        <div class="item">
        </div>
        <div class="item">
        </div>
        <div class="item">
        </div>
        <div class="item">
        </div>
    </div>
</div>
 <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a href="index">Home<span class="glyphicon glyphicon-home" /></a>
  <a href="Aboutus">About Us<span class="glyphicon glyphicon-pencil" /></a>
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

<!-- Remeber to put all the content you want on top of the slider below the slider code -->

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
                            <div class="col-sm-2">
                            </div>
                             <div class="col-sm-3">
                            </div>
                            <div class="col-sm-5">
                             <div class="jumbotron" style="align:center">
                           <div class="slider-text-bottom slider-text-middle5 text-left no-padding">
                                <H2 class="slider-title-big5 white-text margin-eleven" style="font-family:Lucida Handwriting;text-align:center"><b>Welcome to Glorious Gifts</b></H2><br><br>
                                <p style="text-align:center;font-family:Comic Sans MS"> If you want to Surprise your Family and Friends with Amazing and Astonishing Gifts...then You Are on the right Place...<br>
                                Glorious Gifts is a site where you can find all sort of gifts and cakes that you want to use to surprise your near and dear ones...

                                All the products have some or the other unique qualities which would make it look different from other gift....
                               <br>
                              <b> Hope that You would Enjoy Shopping with Us....</b>
                               </p>

                            </div> 
                            </div>   
                      </div>
                        
                    
                </div>
            </div>


</div>
<script >
	
	$('.carousel').carousel();
</script>
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
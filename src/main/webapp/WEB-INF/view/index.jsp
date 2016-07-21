																										<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!Doctype>
<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<jsp:include page="/WEB-INF/view/head.jsp"/>
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

input[type=text] {
   box-align:right;
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('Searchicon.png');
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 100%;
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

<!-- Remember to put all the content you want on top of the slider below the slider code -->

<div class="title" id="main">


<div class="row jumbotron">
 <div class=col-sm-6 >
	<h3 style="text-align:left;font-size:40px; font-family:Segoe Script;color:white;"><b> Glorious Gifts </b></h3>
                      </div>
                      <div class="col-sm-5">
                      <span style="float:right;font-size:30px;cursor:pointer" onclick="openNav()" class="glyphicon glyphicon-menu-hamburger"> </span>  
                      <br>
                      <br>
                      
                      
                      <%--  <a href="<c:url value="/logout"/>"style="float:right;font-size:20px;"><u>Logout</u></a> --%>
                       </div>
   </div>                    
                      <br>
 
  <button type="button" class="btn btn-default" data-toggle="collapse" data-target="#demo" style="float: right">SEARCH  <span  class="glyphicon glyphicon-search"> </span>
  <div id="demo" >
  <input type="text" name="search" placeholder="Search" style="float:right;color:black"> 
</div>
</button>
<br>
<br>
                      <br>
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
                                <H2 class="slider-title-big5 white-text margin-eleven" style="font-family:Snap ITC;text-align:center">	Welcome to Glorious Gifts</H2><br><br>
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


</html>
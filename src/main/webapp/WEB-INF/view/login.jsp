<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en-US">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<jsp:include page="/WEB-INF/view/head.jsp"/>
<head>

	<meta charset="utf-8">

	<title>Login</title>

	<link rel="stylesheet">
	
<style>

@charset "utf-8";

@import url(http://weloveiconfonts.com/api/?family=fontawesome);


@import url(http://meyerweb.com/eric/tools/css/reset/reset.css);


[class*="fontawesome-"]:before {
  font-family: 'FontAwesome', sans-serif;
}



body {
	background-color: #C0C0C0;
	color: #000;
	font-family: "Varela Round", Arial, Helvetica, sans-serif;
	font-size: 16px;
	line-height: 2.5em;
}

input {
	border: none;
	font-family: Lucida Handwriting;
	font-size: inherit;
	font-weight: inherit;
	line-height: inherit;
	-webkit-appearance: none;
}

/* ---------- LOGIN ---------- */

#login {
	margin: 50px auto;
	width: 400px;
}

#login h2 {
	background-color: #830404;
	-webkit-border-radius: 20px 20px 0 0;
	-moz-border-radius: 20px 20px 0 0;
	border-radius: 20px 20px 0 0;
	color: #fff;
	font-size: 28px;
	padding: 20px 26px;
}

#login h2 span[class*="fontawesome-"] {
	margin-right: 14px;
}

#login fieldset {
	background-color: #fff;
	-webkit-border-radius: 0 0 20px 20px;
	-moz-border-radius: 0 0 20px 20px;
	border-radius: 0 0 20px 20px;
	padding: 20px 26px;
}

#login fieldset p {
	color: #777;
	margin-bottom: 14px;
}

#login fieldset p:last-child {
	margin-bottom: 0;
}


body {
    font-family: "Lato", sans-serif;
    transition: background-color .5s;
     background: url(resources/img/b1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

#login fieldset input {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

#login fieldset input[type="email"], #login fieldset input[type="password"] {
	background-color: #eee;
	color: #777;
	padding: 4px 10px;
	width: 328px;
}

#login fieldset input[type="submit"] {
	background-color: #33cc77;
	color: #fff;
	display: block;
	margin: 0 auto;
	padding: 4px 0;
	width: 100px;
}

#login fieldset input[type="submit"]:hover {
	background-color: #28ad63;
}
body {
    font-family: "Lato", sans-serif;
}

.error
{
padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #ff0000;;
	background-color: #f2dede;
	border-color: #ebccd1;
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

	<div id="login">

		<h2><span class="fontawesome-lock"></span>Sign In</h2>
<fieldset>
		<section class="login">
        <form  action="login" method="POST">
        	
        	   <c:if test="${not empty error}">
               <div class="error">${error}</div>
               </c:if>

				<p><label  path="username" name="username"  type="text"  placeholder="Username" >Username</label></p>
				<p><input   path="username" name="username"  type="text"  placeholder="Username"></p> 

				<p><label path="password" name="password" type="password"  placeholder="Password">Password</label></p>
				<p><input path="password" name="password" type="password"  placeholder="Password" ></p> 
                  
				
				<p><input type="submit" value="Log In"></p>

				


			

		</form>
</section>
</fieldset>
	</div> <!-- end login -->
</div>
</body>	

</html>
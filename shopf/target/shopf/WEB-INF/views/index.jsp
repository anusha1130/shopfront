<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%><!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" 
  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>
<!-- Navigation Bar 1 Start -->
	<nav class="navbar navbar" style=background-color:#66666>
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">PeachTree Boutique</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Clothing <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Ethnic wear</a></li>
						<li><a href="#">Western wear</a></li>
				
					</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Accessories <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Jewellery</a></li>
						<li><a href="#">HandBags</a></li>
						<li><a href="#">Footwear</a></li>
				
					</ul></li>
			
				<li><a href="#">Giftcards</a></li>
			</ul>
			
			<c:if test="${!empty categoryList}">
			  <div class="collapse navbar-collapse">
			  <ul class="nav navbar-nav navbar-left">
			  <c:forEach items="${categoryList}" var="category">
			  <li><a href="${category.name}">${category.name}</a></li>
			  </c:forEach>
			  </ul></div>
			  
			<div class="collapse navbar-collapse">
			  <ul class="nav navbar-nav navbar-right">
			  <li style="float: right"><a href="${userId}/viewcart"><i class="active"></i>ViewCart</a></li>
			  <li style="float: right"><a href="#"><i class="active"></i>Hi,${name}</a></li>
	
</ul></div></c:if>
<c:choose>
					<c:when test="${LoggedIn}">

						<li style="float: right"><a href="logout"
							class="w3-hover-none"><i class="fa fa-sign-out"></i></a></li>
						<c:choose>	
						<c:when test="${!Administrator}">	
						<li style="float: right"><a href="${userId}/viewcart"
							class="w3-hover-none"><i class="fa fa-shopping-cart"></i></a></li>
						</c:when>
						</c:choose>

						<li style="float: right"><a href="#" class="w3-hover-none"><i
								class="fa fa-user"></i> Hi, ${name}</a></li>
					</c:when>

					<c:otherwise>
						<li style="float: right"><a href="Register"
							class="w3-hover-none"><i class="fa fa-user-plus"></i></a></li>
						<li style="float: right"><a href="login"
							class="w3-hover-none"><i class="fa fa-sign-in"></i></a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>	
		<c:when test="${!Administrator}">	
			<!-- Category List -->
			<c:if test="${!empty categoryList}">
				<div>
					<ul
						class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 "
						Style="width: 70%; margin-left: 15%; margin-top:-2px;">
						<c:forEach items="${categoryList}" var="category">
							<li><a href="${category.name}" class="w3-hover-none"><i class="fa fa-list-alt" aria-hidden="true"></i> ${category.name}</a></li>
						</c:forEach>
						
					</ul>
				</div>
			</c:if>	
		</c:when>	
	
		<c:when test="${Administrator}">
			<ul class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 " 
			Style="width: 70%; margin-left: 15%; margin-top:-2px;">
				<li><a href="product"class="w3-hover-none"><i class="fa fa-list"
					aria-hidden="true"></i> Products</a></li>
				<li><a href="category" class="w3-hover-none"><i class="fa fa-list"
					aria-hidden="true"></i> Category</a></li>
				<li><a href="supplier" class="w3-hover-none"><i class="fa fa-list"
					aria-hidden="true"></i> Supplier</a></li>
			</ul>
		</c:when>
	</c:choose>		
	</nav>
	</div>
	
	
	
	
	
	
	<!-- Category List End -->
	
	
	<c:choose>
	<c:when test="${IfLoginClicked}">
		<c:import url="/WEB-INF/views/Login.jsp">
		</c:import>
	</c:when>
	
	<c:when test="${IfRegisterClicked}">
		<c:import url="/WEB-INF/views/Register.jsp">
		</c:import>
	</c:when>
	</c:choose>

	<c:choose>
			<c:when test="${ProductPageClicked}">
				<c:import url="/WEB-INF/views/AdminProductPage.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${CategoryPageClicked}">
				<c:import url="/WEB-INF/views/AdminCategoryPage.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${SupplierPageClicked}">
				<c:import url="/WEB-INF/views/AdminSupplierPage.jsp"></c:import>
			</c:when>
		</c:choose>

	<div class="collapse navbar-collapse" >
				<ul class="nav navbar-nav navbar-right">
					<form action="submit"><li><a href="#" ><span
							class="glyphicon glyphicon-log-in"></span>
							<input type="submit" value="login"></form> </a></li>
					<form action="signup"><li><a href="#" ><span
							class="glyphicon glyphicon-log-in"></span>
							<input type="submit" value="signup"></form> </a></li>
				</ul>
			</div>
			</div>
			</nav>
	<!-- Navigation Bar 1 End____________________________________________________________ -->
<!--  <div class="navbar navbar-default">
<ul class="nav nav-tabs">
<li class="active"><a href="http://localhost:8080/UserInterface/home.html">Home</a>
<li><a href="http://localhost:8080/UserInterface/login.html">login</a>
<li><a href="http://localhost:8080/UserInterface/registration.html">registration</a>

</ul>
</div>-->


<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
     
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="C:\Users\HP\Desktop\dressing1.jpg" alt="dressing1" width="460" height="345">
      </div>

      <div class="item">
        <img src="C:\Users\HP\Desktop\acessories.jpg" alt="acessories" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="C:\Users\HP\Desktop\gift-card.jpg" alt="gift-card" width="460" height="345">
      </div>

      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    
  </div>
  
</div>
<c:choose>
<c:when test="${!Administrator}">
<c:if test="${!empty productList}">
		<div class="row">
			<ul>
				<c:forEach items="${productList}" var="product">
					<li><a href="#${product.name}" class="w3-hover-none"><img alt="${product.id}" src="<c:url value="/resources/Images/product/${product.id}.jpg"></c:url>"></a></li>
				<c:choose>
					<c:when test="${LoggedIn}">	
					<li><a href="${userId}//addtoCart//${product.id}">Add to Cart</a></li>
						</c:when>
						</c:choose>
				</c:forEach>
			</ul>
		</div>
	</c:if>
</c:when>
</c:choose>

</body>
</html>

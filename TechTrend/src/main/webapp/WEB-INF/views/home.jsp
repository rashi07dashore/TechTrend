<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="/WEB-INF/views/template/home_header.jsp"%>
<!-- Masthead-->
<header class="masthead">
	<div class="container px-4 px-lg-5 h-100">
		<div
			class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
			<div class="col-lg-8 align-self-end">
				<h1 class="text-white font-weight-bold">Welcome to Tech Trend</h1>
				<hr class="divider" />
			</div>
			<div class="col-lg-8 align-self-baseline">
				<p class="text-white-75 mb-5">Your own place to find all Trends
					in Tech. Buy and Sell Technology items with Tech Trends.</p>
				<a class="btn btn-primary btn-xl" href="#about">See What's We
					Have</a>
			</div>
		</div>
	</div>
</header>
<!-- About-->
<section class="page-section bg-primary" id="about">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 text-center">
				<h2 class="text-white mt-0">We've got what you need!</h2>
				<hr class="divider divider-light" />
				<p class="text-white-75 mb-4">Connect with us and get the
					premium offers and daily deals! Get Free Delivery on your First
					Five Orders!</p>
				<a class="btn btn-light btn-xl" href="#services">Our Premium
					Quality Products!</a>
			</div>
		</div>
	</div>
</section>
<!-- Services-->
<section class="page-section" id="services">
	<div class="container px-4 px-lg-5">
		<h2 class="text-center mt-0">All Our Products</h2>
		<p class="text-center fw-bolder">Checkout all our awesome
			Products!</p>
		<hr class="divider" />
		<table class="table table-striped tabl-hover table-bordered">
			<thead>
				<tr>
					<th>Photo thumb</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Condition</th>
					<th>Price</th>
					<th></th>
				</tr>
			</thead>
			<c:forEach items="${products }" var="product">
				<tr>
					<td><img src="#" alt="img"></td>
					<td>${product.productName }</td>
					<td>${product.productCategory }</td>
					<td>${product.productCondition }</td>
					<td>${product.productPrice } Rupees</td>
					<td><a href='<c:url value="/viewProduct/${product.productId }"/>'>
					<span class="bi bi-info-circle-fill"></span>
					 </a></td>
				</tr>
			</c:forEach>
		</table>

		<div class="row gx-4 gx-lg-5">

			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-gem fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">Tech Items</h3>
					<p class="text-muted mb-0">Our products are updated regularly
						to give you most trendy items!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-laptop fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">100% Return Policy</h3>
					<p class="text-muted mb-0">Get guarantee of each and every
						product</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-globe fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">Available Everywhere</h3>
					<p class="text-muted mb-0">Free Delivery All over World</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-heart fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">Made with Love</h3>
					<p class="text-muted mb-0">Our products are made for you in
						India!</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Portfolio-->
<div id="portfolio">
	<div class="container-fluid p-0">
		<div class="row g-0">
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/assets/img/portfolio/fullsize/1.jpg' />"
					title="Project Name"> <img class="img-fluid"
					src="<c:url value='/resources/assets/img/portfolio/thumbnails/1.jpg' />"
					alt="..." />
					<div class="portfolio-box-caption">
						<div class="project-category text-white-50">Best Items from us</div>
						<div class="project-name">Guaranteed Assurance</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/assets/img/portfolio/fullsize/2.jpg' />"
					title="Project Name"> <img class="img-fluid"
					src="<c:url value='/resources/assets/img/portfolio/thumbnails/2.jpg' />"
					alt="..." />
					<div class="portfolio-box-caption">
						<div class="project-category text-white-50">Buy and Sell Website</div>
						<div class="project-name">Let's Grow Together</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/assets/img/portfolio/fullsize/3.jpg' />"
					title="Project Name"> <img class="img-fluid"
					src="<c:url value='/resources/assets/img/portfolio/thumbnails/3.jpg' />"
					alt="..." />
					<div class="portfolio-box-caption">
						<div class="project-category text-white-50">Happy Customers</div>
						<div class="project-name">From all over the world</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/assets/img/portfolio/fullsize/4.jpg' />"
					title="Project Name"> <img class="img-fluid"
					src="<c:url value='/resources/assets/img/portfolio/thumbnails/4.jpg' />"
					alt="..." />
					<div class="portfolio-box-caption">
						<div class="project-category text-white-50">Find Best Deals</div>
						<div class="project-name">with Tech Trend</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/assets/img/portfolio/fullsize/5.jpg' />"
					title="Project Name"> <img class="img-fluid"
					src="<c:url value='/resources/assets/img/portfolio/thumbnails/5.jpg' />"
					alt="..." />
					<div class="portfolio-box-caption">
						<div class="project-category text-white-50">Share with your friends</div>
						<div class="project-name">And get 20% off on your next order!</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/assets/img/portfolio/fullsize/6.jpg' />"
					title="Project Name"> <img class="img-fluid"
					src="<c:url value='/resources/assets/img/portfolio/thumbnails/6.jpg' />"
					alt="..." />
					<div class="portfolio-box-caption p-3">
						<div class="project-category text-white-50">New Year Sale</div>
						<div class="project-name">Offers on iPhone and Samsung</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>
<!-- Call to action-->
<section class="page-section bg-dark text-white">
	<div class="container px-4 px-lg-5 text-center">
		<h2 class="mb-4">Any Product you feel interested in?</h2>
		<a class="btn btn-light btn-xl" href="#">Order Now!</a>
	</div>
</section>
<%@include file="/WEB-INF/views/template/footer.jsp"%>

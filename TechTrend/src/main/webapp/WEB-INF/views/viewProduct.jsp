<%@page isELIgnored="false"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!-- Services-->

<section class="page-section" id="services">
	<div class="container px-4 px-lg-5">
		<h2 class="text-center mt-0">View Products</h2>
		<p class="text-center fw-bolder">Here is the detailed information
			of Our Products!</p>
		<hr class="divider" />
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="#" src="img" style="width: 100%; height: 300px;" />
			</div>
			<div class="col-md-5">
				<h3>Product Name : ${product.productName }</h3>
				<p>Product Description : ${product.productDescription }</p>
				<p>Manufacturer : ${product.productManufacturer }</p>
				<p>Category : ${product.productCategory }</p>
				<p>Status: ${product.productStatus } </p>
				<p> Units in Stock : ${product.unitInStock }</p>
				<p>Condition : ${product.productCondition }</p>
				<p>Price : <strong> ${product.productPrice } Rupees Only/-</strong></p>
			</div>
		</div>
	</div>
</section>
<%@include file="/WEB-INF/views/template/footer.jsp" %>



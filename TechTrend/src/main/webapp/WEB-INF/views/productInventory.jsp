<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- Services-->
<section class="page-section" id="services">
	<div class="container px-4 px-lg-5">
		<h2 class="text-center mt-0">Product Inventory Page</h2>
		<p class="text-center fw-bolder">Admins can check and modify the
			Product Inventory.</p>
		<hr class="divider" />
		<div class="conatiner">
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
					<td>${product.productPrice }Rupees</td>
					<td><a
						href='<c:url value="/viewProduct/${product.productId }"/>'> <span
							class="bi bi-info-circle-fill"></span>
					</a></td>
					<td><a href='<c:url value="/admin/productInventory/delete/${product.productId}"/>'>
					<span class="bi bi-trash"></span>
					 </a></td>
				</tr>
			</c:forEach>
		</table>
		<a href='<c:url value="/admin/productInventory/addProduct"/>' class="btn btn-success">
		Add Product</a>
		</div>
	</div>
</section>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
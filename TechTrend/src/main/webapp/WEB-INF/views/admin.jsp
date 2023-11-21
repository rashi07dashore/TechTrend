<%@page isELIgnored="false"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!-- Services-->

<section class="page-section" id="services">
	<div class="container px-4 px-lg-5">
		<h2 class="text-center mt-0">Administrator Page</h2>
		<p class="text-center fw-bolder">Admins can edit the Product details here</p>
		<hr class="divider" />
		<h3>
		<div class="text-center">
		<a href='<c:url value="/admin/productInventory"/>' class ="btn btn-lg btn-success">
		Product Inventory
		</a>
		</h3>
		<p class="text-center fw-bolder">Here you can check, edit and update the Product Inventory.</p>
		</div>
	</div>
</section>




<%@include file="/WEB-INF/views/template/footer.jsp"%>
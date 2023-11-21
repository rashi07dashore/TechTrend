<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!-- Services-->

<section class="page-section" id="services">
	<div class="container px-4 px-lg-5">
		<div class="col-lg-8 col-lg-offset-2 text-center">
			<h2 class="text-center mt-0">Add Product Page</h2>
			<p class="text-center fw-bolder">Please fill the below
				information to add Product.</p>
			<hr class="primary" />

		</div>
	</div>
	<div class="container col-md-6 col-md-offset-3">
		<form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" modelAttribute="product" >
            <div class="form-group">
                <label for="name">Product Name</label> <form:errors path="productName" cssClass="text-danger"/>
                <form:input path="productName" id="name" class="form-control" />
            </div>

            <div class="form-group">
                <label for="category">Product Category</label>
                <div class="form-check">
                    <form:radiobutton path="productCategory" id="category-accessory" value="accessory" class="form-check-input"/>
                    <label for="category-accessory" class="form-check-label">Accessory</label>
                </div>
                <div class="form-check">
                    <form:radiobutton path="productCategory" id="category-iphone" value="iphone" class="form-check-input"/>
                    <label for="category-iphone" class="form-check-label">iPhone</label>
                </div>
                <div class="form-check">
                    <form:radiobutton path="productCategory" id="category-samsung" value="samsung" class="form-check-input"/>
                    <label for="category-samsung" class="form-check-label">Samsung</label>
                </div>
            </div>

            <div class="form-group">
                <label for="description">Product Description</label>
                <form:textarea path="productDescription" id="description" class="form-control" />
            </div>
            
            <div class="form-group">
                <label for="price">Price</label> <form:errors path="productPrice" cssClass="text-danger"/>
                <form:input path="productPrice" id="price" class="form-control" />
            </div>

            <div class="form-group">
                <label for="condition">Condition</label>
                <div class="form-check">
                    <form:radiobutton path="productCondition" id="condition-new" value="new" class="form-check-input"/>
                    <label for="condition-new" class="form-check-label">New</label>
                </div>
                <div class="form-check">
                    <form:radiobutton path="productCondition" id="condition-used" value="used" class="form-check-input"/>
                    <label for="condition-used" class="form-check-label">Used</label>
                </div>
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <div class="form-check">
                    <form:radiobutton path="productStatus" id="status-active" value="active" class="form-check-input"/>
                    <label for="status-active" class="form-check-label">Active</label>
                </div>
                <div class="form-check">
                    <form:radiobutton path="productStatus" id="status-inactive" value="inactive" class="form-check-input"/>
                    <label for="status-inactive" class="form-check-label">Inactive</label>
                </div>
            </div>

            <div class="form-group">
                <label for="unitInStock">Units In Stock</label> <form:errors path="unitInStock" cssClass="text-danger"/>
                <form:input path="unitInStock" id="unitInStock" class="form-control" />
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-control" />
            </div>
 
            <br><br>
            <input type="submit" value="Submit" class="btn btn-success" />
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-info">Cancel</a>
        </form:form>

	</div>
	<div class="clearfix"></div>
</section>




<%@include file="/WEB-INF/views/template/footer.jsp"%>
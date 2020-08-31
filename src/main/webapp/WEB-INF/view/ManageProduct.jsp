<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

<form id="form">
	<div class="contact-grids1 w3agile-6">
		<div class="row">
			<div class="col-md-6 col-sm-6 contact-form1 form-group">
				<label class="col-form-label">Name</label>
				<input type="text" class="form-control" placeholder="Name" id="name" name="name" required="required">
				<p id="error_name"></p>
			</div>

			<div class="col-md-6 col-sm-6 contact-form1 form-group">
				<label class="col-form-label">productname</label>
				<input type="text" class="form-control" placeholder="Product Name" id="productname" name="productname" required="required">
				<p id="error_productname"></p>
			</div>

			<div class="col-md-6 col-sm-6 contact-form1 form-group">
				<label class="col-form-label">brandname</label>
				<input type="text" class="form-control" placeholder="Brand Name" id="brandname" name="brandname" required="required">
				<p id="error_brandname"></p>
			</div>


			<div class="col-md-6 col-sm-6 contact-form1 form-group">
				<label class="col-form-label">Description</label>
				<textarea class="form-control" placeholder="Product Description" id="description" rows="3" cols="45" name="description" required="required"></textarea>
				<p id="error_description"></p>
			</div>

			<div class="col-md-6 col-sm-6 contact-form1 form-group">
				<label class="col-form-label">quantityavailable</label>
				<input type="text" class="form-control" placeholder="Product quantityavailable" id="quantityavailable" name="quantityavailable" required="required">
				<p id="error_quantityavailable"></p>
			</div>






			<div class="col-md-6 col-sm-6 contact-form1 form-group">
				<label class="col-form-label">Image</label>
				<input type="file" class="form-control" name="file" id="file" required="required">
				<p id="error_file"></p>
			</div>
			<div class="col-md-6 col-sm-6 contact-form1 form-group">
				<label class="col-form-label">Price</label>
				<input type="text" class="form-control" placeholder="Price" name="price" id="price" required="required">
				<p id="error_price"></p>
			</div>
		</div>

		<div class="right-w3l col-md-6">
			<input type="button" id="submit" class="btn btn-primary form-control" value="Submit">
			<br><br>
		</div>
		<a href="${pageContext.request.contextPath}/product/show" style="float:left;" class="btn btn-success text-right">Show All</a>
	</div>
	<br>
	<div id="success" class="text-center" style="color:green;"></div>
	<div id="error" class="text-center" style="color:red;"></div>
</form>
<p class="text-center">
	<img src="${pageContext.request.contextPath}/resources/images/loader.gif" alt="loader" style="width: 150px;height: 120px;" id="loader">
</p>
<script src="${pageContext.request.contextPath}/resources/js/product1.js"></script>

</body>
</html>

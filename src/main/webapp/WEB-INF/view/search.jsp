<%@include file="/WEB-INF/view/template/header.jsp" %>
<body>
<div class="table-responsive-md" id="table">
<table table class="table table-bordered table-sm table-hover responsive-md">
<thead>
<tr>


    <th scope="col">Product Name</th>
    <th scope="col">Brand Name</th>
    <th scope="col">Description</th>
    <th scope="col">Price</th>
    <th scope="col">Quantity Available</th>
    <th scope="col">Edit</th>
    <th scope="col">Delete</th>
</tr>
</thead>
<tbody>
<c:forEach var="student" items="${students}">

    <tr>


    <td>${student.productname}</td>
    <td>${student.brandname}</td>
    <td>${student.description}</td>
    <td>${student.price}</td>
    <td>${student.quantityavailable}</td>
    </tr>
</c:forEach>
</tbody>
</table>
</div>

</body>

<%@include file="/WEB-INF/view/template/footer.jsp" %>
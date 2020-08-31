<%@ taglib prefix="https" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tanvir
  Date: 7/6/2020
  Time: 7:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Table V01</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/jquery.morecontent.css">


    <link href="<c:url value="/resources/table/demo/css/jquery.morecontent.css" />" rel="stylesheet">
   <link href="<c:url value="/resources/table/demo/css/demo.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/table/images/icons/favicon.ico" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/table/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="">
    <link href="<c:url value="/resources/table/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/table/vendor/animate/animate.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/table/vendor/select2/select2.min.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/table/vendor/perfect-scrollbar/perfect-scrollbar.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/table/css/util.css" />" rel="stylesheet">

    <link href="<c:url value="/resources/table/css/main.css" />" rel="stylesheet">
    <!--===============================================================================================-->
</head>
<body>

<div class="limiter">
    <div class="container-table100">

        <div class="wrap-table100">

            <form  method="get" action="students">
                <h5>View Information:</h5>
                <input id ="txtSearch" type="text" name="keyword"/>
                <button type="submit" >Go</button>
            </form>
            <div class="table100">

                <table>
                    <thead>
                    <tr class="table100-head">
                        <th class="column1 text-left">No:</th>
                        <th class="column2 text-left">Image</th>
                        <th class="column3 text-left">Product Name</th>
                        <th class="column4 text-left">Brand Name</th>
                        <th class="column5 text-left">Description</th>
                        <th class="column6 text-left">Quantityavailable</th>
                        <th class="column7 text-left">Price</th>


                        <th class="column8 text-left">View</th>
                        <th class="column9 text-left">Edit</th>
                        <th class="column10 text-left">Delete</th>
                    </tr>
                    </thead>
                    <tbody>

                        <c:set var="count" value="0" scope="page"></c:set>

                        <c:forEach var="student" items="${students}">


                            <c:set var="count" value="${count + 1}" scope="page"></c:set>

                        <tr>
                        <td class="column1 text-left" >${count}</td>

                            <td class="column2"><img  class="" style="margin:0 auto; width: 150px;"   src="${pageContext.request.contextPath}/product/display/${student.id}" /></td>

                        <td class="column3 text-left">${student.productname}</td>

                        <td class="column4 text-left">${student.brandname}</td>

                        <td class="column5 text-left  example" data-mrc >${student.description}</td>


                            <td class="column6 text-center">${student.quantityavailable}</td>

                        <td class="column7 text-left">${student.price}</td>







                            <td class="column8 text-left"><a href="/productview?id=${student.id }"> View<span>
                                     <i class="fa fa-eye"></i></span></a></td>

                        <td class="column9 text-left"><a href="/edit-product?id=${student.id }"> Edit<span>
                                     <i class="fa fa-edit"></i></span></a></td>



                        <td class="column10 text-left"><a href="/delete-product?id=${student.id }"> Delete<span>
                                     <i class="fa fa-trash-o"></i></span></a></td>




                        </tr>
                    </c:forEach>



                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>



<script src="<c:url value="/resources/table/vendor/jquery/jquery-3.2.1.min.js" />"> </script>
<!--===============================================================================================-->
<script src="<c:url value="https://code.jquery.com/jquery-1.12.4.min.js"/>"></script>

<!--===============================================================================================-->

<script src="<c:url value="/resources/table/vendor/bootstrap/js/popper.js" />"> </script>
<!--===============================================================================================-->

<script src="<c:url value="/resources/table/vendor/bootstrap/js/bootstrap.min.js" />"> </script>
<!--===============================================================================================-->

<script src="<c:url value="/resources/tablevendor/select2/select2.min.js" />"> </script>
<!--===============================================================================================-->

<script src="<c:url value="/resources/table/js/main.js" />"> </script>


<script src="<c:url value="/resources/table/demo/js/jquery.morecontent.js" />"> </script>


<script src="<c:url value="/resources/table/demo/js/demo.js" />"> </script>

</body>
</html>

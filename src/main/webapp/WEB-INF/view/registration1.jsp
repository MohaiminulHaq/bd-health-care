<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Form-v2 by Colorlib</title>
    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Font-->
    <link href="<c:url value="/resources/reg/css/roboto-font.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/reg/fonts/line-awesome/css/line-awesome.min.css" />" rel="stylesheet">

    <!-- Jquery -->
    <link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
    <link href="<c:url value="https://jqueryvalidation.org/files/demo/site-demos.css" />" rel="stylesheet">
    <!-- Main Style Css -->

    <link href="<c:url value="/resources/reg/css/style.css" />" rel="stylesheet">
</head>
<body class="form-v2">
<div class="page-content">
    <div class="form-v2-content">
        <div class="form-left">

            <img src="/resources/reg/images/12.jpg" alt="form">
            <div class="text-1">
                <p><span></span></p>
            </div>
            <div class="text-2">
                <p><span></span></p>
            </div>
        </div>
        <form class="form-detail" action="user_registation1" method="post" id="form">
            <h2>Registration Form</h2>
            <div class="form-row">
                <label>User Name:</label>
                <input type="text" name="name1" id="full_name" class="input-text" placeholder="ex: Mohaiminul" required>
            </div>

            <div class="form-row">
            <label for="your_email">Your Email:</label>
            <input type="text" name="email" id="your_email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
        </div>

            <div class="form-row">
                <label for="your_email">Your Phone:</label>
                <input type="number" name="phone" id="your_P" class="input-text" required pattern="[0-9]{11}">
            </div>
            <div class="form-row">
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" class="input-text" required>
            </div>


            <div class="form-row-last">
                <input type="submit" name="register" class="register" value="Register">
            </div>
        </form>
    </div>
</div>
<script src="<c:url value="https://code.jquery.com/jquery-1.11.1.min.js" />"> </script>
<script src="<c:url value="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js" />"> </script>
<script src="<c:url value="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js" />"> </script>

<script>






</script>
</body>
</html>
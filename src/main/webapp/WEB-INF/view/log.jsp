<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login V15</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/log/images/icons/favicon.ico" />" rel="stylesheet">

    <!--===============================================================================================-->
    <link href="<c:url value="/resources/log/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

    <!--===============================================================================================-->


    <link href="<c:url value="/resources/log/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/log/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />" rel="stylesheet">


    <!--===============================================================================================-->

    <link href="<c:url value="/resources/log/vendor/animate/animate.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/log/vendor/css-hamburgers/hamburgers.min.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/log/vendor/animsition/css/animsition.min.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/log/vendor/select2/select2.min.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/log/vendor/daterangepicker/daterangepicker.css" />" rel="stylesheet">
    <!--===============================================================================================-->

    <link href="<c:url value="/resources/log/css/util.css" />" rel="stylesheet">

    <link href="<c:url value="/resources/log/css/main.css" />" rel="stylesheet">
    <!--===============================================================================================-->
</head>
<body>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-form-title"  style="background-image: url('/resources/log/images/log.jpg');">
					<span class="login100-form-title-1">
						Sign In
					</span>
            </div>


            <form class="login100-form validate-form"  action="login_page1" method="post">
                <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                    <span class="label-input100">Username</span>
                    <input class="input100" type="text" name="name1" placeholder="Enter username">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
                    <span class="label-input100">Password</span>
                    <input class="input100" type="password" name="password" placeholder="Enter password">
                    <span class="focus-input100"></span>
                </div>

                <div class="flex-sb-m w-full p-b-30">
                    <div class="contact100-form-checkbox">
                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                        <label class="label-checkbox100" for="ckb1">
                            Remember me
                        </label>
                    </div>

                    <div>
                        <a href="#" class="txt1">
                            Forgot Password?
                        </a>
                    </div>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Login
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>


<!--===============================================================================================-->

<script src="<c:url value="/resources/log/vendor/jquery/jquery-3.2.1.min.js" />"> </script>
<!--===============================================================================================-->

<script src="<c:url value="/resources/log/vendor/animsition/js/animsition.min.js" />"> </script>
<!--===============================================================================================-->

<script src="<c:url value="/resources/log/vendor/bootstrap/js/popper.js" />"> </script>

<script src="<c:url value="/resources/log/vendor/bootstrap/js/bootstrap.min.js" />"> </script>
<!--===============================================================================================-->

<script src="<c:url value="/resources/log/vendor/select2/select2.min.js" />"> </script>
<!--===============================================================================================-->

<script src="<c:url value="/resources/log/vendor/daterangepicker/moment.min.js" />"> </script>

<script src="<c:url value="/resources/log/vendor/daterangepicker/daterangepicker.js" />"> </script>
<!--===============================================================================================-->

<script src="<c:url value="/resources/log/vendor/countdowntime/countdowntime.js" />"> </script>
<!--===============================================================================================-->

<script src="<c:url value="/resources/log/js/main.js" />"> </script>

</body>
</html>
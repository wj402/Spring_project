<%--
  Created by IntelliJ IDEA.
  User: cooki
  Date: 2024-04-04
  Time: 오전 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="${path}/resources/css/login.css">
    <style>
        body {
            /*background: linear-gradient(to bottom right, #000, #e0e0e0);*/
            background-color: #000;
            overflow: hidden;
        }

        .wrap {
            width: 100%;
            height: 920px;
            background-color : rgb(255,255,255,0.6);
        }
    </style>
</head>

<body>
<div class="wrap">
<%--    <div class="bg">--%>
<%--        <div class="bg_01">--%>
<%--            <img src="${path}/resources/img/section1_bg1.png" alt="배경이미지" />--%>
<%--        </div>--%>
<%--        <div class="bg_02">--%>
<%--            <img src="${path}/resources/img/section1_bg2.png" alt="배경이미지" />--%>
<%--        </div>--%>
<%--        <div class="bg_03">--%>
<%--            <img src="${path}/resources/img/section3_bg1.png" alt="배경이미지" />--%>
<%--        </div>--%>
<%--        <div class="bg_04">--%>
<%--            <img src="${path}/resources/img/section2_bg1.png" alt="배경이미지" />--%>
<%--        </div>--%>
<%--    </div>--%>

<div class="container" style="position: absolute; left: 50%; top: 40%; transform: translate(-50%, -50%); ">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5 login_box" >
                <div class="p-0 login_container">
                    <!-- Nested Row within Card Body -->
                        <div class="login_inner">
                            <div class="p-5 login_text_box">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">회원 로그인</h1>
                                </div>
                                <form class="user" action="/login" method="post">
                                <div class="form-group">
                                        <input type="text" name="username" class="form-control form-control-user"
                                               id="exampleInputEmail" aria-describedby="emailHelp"
                                               placeholder="아이디를 입력해주세요.">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" class="form-control form-control-user"
                                               id="exampleInputPassword" placeholder="비밀번호를 입력해주세요.">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" name="remember-me" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">아이디 저장</label>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-user btn-block">
                                        로그인
                                    </button>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="forgot-password.html">비밀번호를 잊어버리셨나요?</a>
                                </div>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="register.html">회원가입을 하세요!</a>
                                </div>
                            </div>
                        </div>
                </div>
            </div>

        </div>

    </div>

</div>

<!-- Bootstrap core JavaScript-->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/resources/js/sb-admin-2.min.js"></script>
</div>
</body>

</html>
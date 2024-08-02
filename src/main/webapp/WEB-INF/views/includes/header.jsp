<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 24. 7. 15.
  Time: 오후 1:58
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
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/header.css">

    <title>학습시스템</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <header class=" header shadow">
                <a href="http://localhost:8080">
                    <h1 class="logo">
                        <img src="${path}/resources/img/logo.png" alt="로고이미지">
                    </h1>
                </a>
                <div class="logo_nav fixed">
                    <ul class="fixed">
                        <li><a href="#">강의</a></li>
                        <li><a href="#">로드맵</a></li>
                        <li><a href="#">멘토링</a></li>
                        <li><a href="#">커뮤니티</a></li>
                        <li><a href="#">교육정책</a></li>
                    </ul>
                </div>

            </header>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">


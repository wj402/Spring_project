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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>메인 페이지</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/style.css">
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/reset.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

 <link rel="stylesheet" type="text/css" href="${path}/resources/css/header.css">
</head>

<body id="page-top">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <header id="header" class="fixed">
                <div class="header_container">
                    <div class="logo_box">
                      <a href="http://localhost:8080">
                        <h1 class="logo">
                          <img src="${path}/resources/img/logo2.png" alt="로고이미지">
                        </h1>
                      </a>
                    </div>

                    <div>

                    </div>
                <div id="categoryId" class="logo_nav fixed">
                    <ul class="fixed">
                        <li>
                            <a class="btn_sitemap" href="#">
                                <span></span>
                                <span></span>
                                <span></span>
                            </a>
                        </li>
                        <li><a href="/books">도서관리</a></li>
                        <li><a href="/books/bookreturn">반납</a></li>
                        <li><a href="/books/bookborrow">대여</a></li>
                        <li><a href="#">마이페이지</a></li>
                    </ul>
                </div>
                <ul class="member_w">
        <li class="loginBtnGroup join">
            <button type="button" class="join" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">
                <i></i>
                <span>회원가입</span>
            </button>
        </li>
        <li class="loginBtnGroup login">
            <button type="button" class="lnkLogin" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">
                <i></i>
                <span>로그인</span>
            </button>
        </li>
    </ul>
                </div>
            </header>
            <!-- End of Topbar -->

            <%-- Modal --%>
            <div class="pop_gnb gnbmodal" id="modal-gnb" style="display: none;">
                <div class="gnbmodal-inner">
                    <div class="gnb_menu_close_w" style="display: block;">
                        <a class="gnb_menu_close j-gnb_menu_close" href="#"></a>
                    </div>
                    <div class="gnbmodalCon">
                        <div class="gnb_top">
                            <h3>전체메뉴 보기</h3>
                        </div>
                        <div class="gnb_line"></div>
                        <nav class="top">
                            <ul class="sorting_word">
                                <li class="dl">
                                    <span>문고</span>
                                    <ul class="d2">
                                        <li>
                                            <a href="#">국내도서</a>
                                        </li>
                                        <li>
                                            <a href="#">서양도서</a>
                                        </li>
                                        <li>
                                            <a href="#">일본도서</a>
                                        </li>
                                        <li>
                                            <a href="#">문서Only</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dl">
                                    <span>eBook</span>
                                    <ul class="d2">
                                        <li>
                                            <a href="#">eBook</a>
                                        </li>
                                        <li>
                                            <a href="#">오디오(북)</a>
                                        </li>
                                        <li>
                                            <a href="#">동영상</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dl">
                                    <span>sam</span>
                                    <ul class="d2">
                                        <li>
                                            <a href="#">eBook</a>
                                        </li>
                                        <li>
                                            <a href="#">오디오(북)</a>
                                        </li>
                                        <li>
                                            <a href="#">동영상</a>
                                        </li>
                                        <li>
                                            <a href="#">학술논문</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dl">
                                    <span>핫트랙스</span>
                                    <ul class="d2">
                                        <li>
                                            <a href="#">디자인문구</a>
                                        </li>
                                        <li>
                                            <a href="#">독서용품</a>
                                        </li>
                                        <li>
                                            <a href="#">전시/굿즈</a>
                                        </li>
                                        <li>
                                            <a href="#">디지털-tech</a>
                                        </li>
                                        <li>
                                            <a href="#">홈/라이프</a>
                                        </li>
                                        <li>
                                            <a href="#">여행/취미</a>
                                        </li>
                                        <li>
                                            <a href="#">키즈</a>
                                        </li>
                                        <li>
                                            <a href="#">음반/영상</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dl">
                                    <span>스페셜 코너</span>
                                    <ul class="d2">
                                        <li>
                                            <a href="#">오늘의 선택</a>
                                        </li>
                                        <li>
                                            <a href="#">추천</a>
                                        </li>
                                        <li>
                                            <a href="#">선물하기</a>
                                        </li>
                                        <li>
                                            <a href="#">분철서비스</a>
                                        </li>
                                        <li>
                                            <a href="#">특가</a>
                                        </li>
                                        <li>
                                            <a href="#">정가인하</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                        <nav class="bottom">
                            <ul>
                                <li class="b_dl">
                                    <a href="#">
                                        <span>도서관리</span>
                                        <img src="${path}/resources/img/gnb_arrow_r.png" alt="아이콘" />
                                    </a>
                                    <div class="b_dl_line"></div>
                                </li>
                                <li class="b_dl">
                                    <a href="#">
                                        <span>반납</span>
                                        <img src="${path}/resources/img/gnb_arrow_r.png" alt="아이콘" />
                                    </a>
                                    <div class="b_dl_line"></div>
                                </li>
                                <li class="b_dl">
                                    <a href="#">
                                        <span>대여</span>
                                        <img src="${path}/resources/img/gnb_arrow_r.png" alt="아이콘" />
                                    </a>
                                    <div class="b_dl_line"></div>
                                </li>
                                <li class="b_dl">
                                    <a href="#">
                                        <span>마이페이지</span>
                                        <img src="${path}/resources/img/gnb_arrow_r.png" alt="아이콘" />
                                    </a>
                                    <div class="b_dl_line line_last"></div>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <script src="${path}/resources/js/modal.js"></script>

<!-- 모달 HTML 구조 -->
<div class="modal fade my-modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog login_box">
        <div class="modal-content login_container">
            <div class="modal-header login_header">
                <h1 class="h4 text-gray-900 mb-4">회원 로그인</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body login_form">
                <form class="user" action="/login" method="post">
                    <div class="form-group">
                        <input type="text" name="username" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="아이디를 입력해주세요.">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="비밀번호를 입력해주세요.">
                    </div>
                    <div class="form-group login_check">
                        <div class="custom-control custom-checkbox small">
                            <input type="checkbox" class="custom-control-input" name="remember-me" id="customCheck">
                            <label class="custom-control-label" for="customCheck">아이디 저장</label>
                        </div>
                    </div>
                    <button class="btn btn-primary btn-user btn-block">로그인</button>
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

<!-- Bootstrap CSS 및 JavaScript (CDN 사용 예제) -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const modalElement = document.getElementById('exampleModal');

        function loadModalStyles() {
            let link = document.getElementById('modal-style');
            if (!link) {
                link = document.createElement('link');
                link.href = '/resources/css/sb-admin-2.min.css';
                link.rel = 'stylesheet';
                link.id = 'modal-style';
                document.head.appendChild(link);
            }
        }

        function removeModalStyles() {
            const link = document.getElementById('modal-style');
            if (link) {
                document.head.removeChild(link);
            }
        }

        modalElement.addEventListener('show.bs.modal', loadModalStyles);
        modalElement.addEventListener('hidden.bs.modal', removeModalStyles);
    });
</script>
    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
            <!-- Begin Page Content -->
            <div class="container-fluid">


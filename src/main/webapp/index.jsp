<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">




    <link rel="stylesheet" type="text/css" href="${path}/resources/css/index_login.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>

<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
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
<%--        <li class="loginBtnGroup join">--%>
<%--            <a href="/member/login" class="join">--%>
<%--                <i></i>--%>
<%--                <span>회원가입</span>--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li class="loginBtnGroup login">--%>
<%--            <a href="/member/login" class="lnkLogin">--%>
<%--                <i></i>--%>
<%--                <span>로그인</span>--%>
<%--            </a>--%>
<%--        </li>--%>
    </ul>
    </div>
</header><!-- header_wrap -->

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


<div class="bg1">
    <div class="bg1_1"></div>
    <div class="bg1_2"></div>
    <div class="bg1_3"></div>
    <div class="bg1_4"></div>
</div>

<article class="main_slide">
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
        </div>
        <div class="carousel-inner main_slide_box">
            <div class="carousel-item active">
                <img src="${path}/resources/img/book/main/main02.png" class="d-block w-100" alt="배너1">
            </div>
            <div class="carousel-item">
                <img src="${path}/resources/img/book/main/main03.png" class="d-block w-100" alt="배너2">
            </div>
            <div class="carousel-item">
                <img src="${path}/resources/img/book/main/main04.png" class="d-block w-100" alt="배너3">
            </div>
            <div class="carousel-item">
                <img src="${path}/resources/img/book/main/main01.png" class="d-block w-100" alt="배너4">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</article>
<script src="${path}/resources/js/slide.js"></script>


<article class="icon fixed">
  <h1 class="hide">icon</h1>
  <div class="box">
    <a href="#">
      <img src="${path}/resources/img/icon/icon1.svg" alt="icon">
      <p>할인혜택</p>
    </a>
      <a href="#">
          <img src="${path}/resources/img/icon/icon2.svg" alt="icon">
          <p>핫딜</p>
      </a>
      <a href="#">
          <img src="${path}/resources/img/icon/icon3.svg" alt="icon">
          <p>디스커버</p>
      </a>
      <a href="#">
          <img src="${path}/resources/img/icon/icon4.svg" alt="icon">
          <p>음반/영상</p>
      </a>
      <a href="#">
          <img src="${path}/resources/img/icon/icon5.svg" alt="icon">
          <p>바로출판POD</p>
      </a>
      <a href="#">
          <img src="${path}/resources/img/icon/icon6.svg" alt="icon">
          <p>이달의 책</p>
      </a>
      <a href="#">
          <img src="${path}/resources/img/icon/icon7.svg" alt="icon">
          <p>손글쓰기캠페인</p>
      </a>
      <a href="#">
          <img src="${path}/resources/img/icon/icon8.svg" alt="icon">
          <p>Picks</p>
      </a>
      <a href="#">
          <img src="${path}/resources/img/icon/icon9.svg" alt="icon">
          <p>추천</p>
      </a>
      <a href="#">
          <img src="${path}/resources/img/icon/icon10.svg" alt="icon">
          <p>인물&작품</p>
      </a>
  </div>
</article>

<article class="channel2 fixed">
    <div class="channel_text card-body">
        <h2>이주의 책!</h2>
        <span>/</span>
        <p>많이 보고 있는 상품</p>
    </div>
    <div id="carouselExampleControls1" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content3/img01.jpg" alt="이미지">
                        <p>역사/문화</p>
                        <h4>벌거벗은 세계사: 사건편2</h4>
                        <span>tvn (벌거벗은세계사) 제작팀·교보문고</span>
                    </a>
                </div>
                <!-- 다른 컨텐츠들 -->
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content3/img02.jpg" alt="이미지">
                        <p>소설</p>
                        <h4>개를 데리고 다니는 남자</h4>
                        <span>김화진 · 북다 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content3/img03.jpg" alt="이미지">
                        <p>인문</p>
                        <h4>엄마 아닌 여자들</h4>
                        <span>페기 오도널 헤핑턴·북다 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content3/img04.jpg" alt="이미지">
                        <p>소설</p>
                        <h4>다자이 오사무x청춘</h4>
                        <span>다자이 오사무 · 북다 </span>
                    </a>
                </div>
            </div>

            <div class="carousel-item">
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content3/img05.jpg" alt="이미지">
                        <p>소설</p>
                        <h4>아쿠다가와 류노스케X청춘</h4>
                        <span>아쿠타가와 류노스케 · 북다 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content3/img06.jpg" alt="이미지">
                        <p>역사/문화</p>
                        <h4>벌거벗은 세계사: 권력자편</h4>
                        <span>tvn(벌거벗은세계사)제작팀 · 교보문고 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content3/img07.jpg" alt="이미지">
                        <p>경제/경영</p>
                        <h4>시대옙:핵개인의 시대</h4>
                        <span>송길영 · 교보문고 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content3/img08.jpg" alt="이미지">
                        <p>경제/경영</p>
                        <h4>플랜B는 없다</h4>
                        <span>맷 하긴스 · 교보문고 </span>
                    </a>
                </div>
            </div>
            <!-- 다른 carousel-item들 -->
        </div>
        <button class="carousel-control-prev " type="button" data-bs-target="#carouselExampleControls1" data-bs-slide="prev">
            <span class="carousel-control-prev-icon card_sub_img" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls1" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</article>

<%-- Picks --%>
<article class="picks">
    <div class="picks_container">
        <div class="picks_inner">
            <div class="title_wrap">
                <h2 class="title_header">
                    <img src="${path}/resources/img/picks.svg" alt="로고" />
                </h2>
                <div class="title_right">
                    <span>더보기 +</span>
                </div>
            </div>
            <div class="picks_content">
                <div class="content_left">
                    <div class="left_infobox">
                        <p class="pick_desc">발견에 기쁨을 선물합니다.</p>
                        <p class="picks_info">취향을 분석해 꼭 맞는 책을 추천해 드릴게요!</p>
                    </div>
                    <div class="btn_wrap">
                        <a href="#">
                            더 많은 추천받기
                        </a>
                    </div>
                </div>
                <div class="content_right">
                    <ul class="picks_item_list">
                        <li class="picks_item">
                            <div class="picks_item_inner">
                                <p class="picks_info_title">종합추천</p>
                                <div class="picks_prod_contents">
                                    <a href="#">
                                        <div class="img_wrap">
                                            <img src="${path}/resources/img/card/img01.jpg" alt="이미지" />
                                        </div>
                                    </a>
                                </div>
                                <div class="prod_info_box">
                                    <div class="prod_info">
                                        <p class="prod_category">[인문]</p>
                                        <p class="prod_name">마흔에 읽는 쇼펜하우어 (200쇄 기념 확장판)</p>
                                        <p class="prod_author">강용수</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="picks_item">
                            <div class="picks_item_inner">
                                <p class="picks_info_title">작가 Picks</p>
                                <div class="picks_prod_contents">
                                    <a href="#">
                                        <div class="img_wrap">
                                            <img src="${path}/resources/img/card/img02.jpg" alt="이미지" />
                                        </div>
                                    </a>
                                </div>
                                <div class="prod_info_box">
                                    <div class="prod_info">
                                        <p class="prod_category">[청소년]</p>
                                        <p class="prod_name">죽이고 싶은 아이 2</p>
                                        <p class="prod_author">이꽃님</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="picks_item">
                            <div class="picks_item_inner">
                                <p class="picks_info_title">내 마음대로 Picks</p>
                                <div class="picks_prod_contents">
                                    <a href="#">
                                        <div class="img_wrap">
                                            <img src="${path}/resources/img/card/img03.jpg" alt="이미지" />
                                        </div>
                                    </a>
                                </div>
                                <div class="prod_info_box">
                                    <div class="prod_info">
                                        <p class="prod_category">[경제/경영]</p>
                                        <p class="prod_name">불변의 법칙</p>
                                        <p class="prod_author">모건 하우절</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="picks_item">
                            <div class="picks_item_inner">
                                <p class="picks_info_title">소울메이트 Picks</p>
                                <div class="picks_prod_contents">
                                    <a href="#">
                                        <div class="img_wrap">
                                            <img src="${path}/resources/img/card/img04.jpg" alt="이미지" />
                                        </div>
                                    </a>
                                </div>
                                <div class="prod_info_box">
                                    <div class="prod_info">
                                        <p class="prod_category">[외국어]</p>
                                        <p class="prod_name">빨모쌤의 라이브 영어회화 (특별 부록 한정판)</p>
                                        <p class="prod_author">신용하</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</article>


<!-- 3번 슬라이드 -->
<article class="channel3 fixed">
    <div class="channel_text card-body">
        <h2>급상승!</h2>
        <span>/</span>
        <p>많이 보고 있는 상품</p>
    </div>
    <div id="carouselExampleControls2" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content1/img01.jpg" alt="이미지">
                        <p>어린이(초등)</p>
                        <h4>하리, 말할 수 없는 비밀</h4>
                        <span>송아주 · 웅진주니어 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content1/img02.jpg" alt="이미지">
                        <p>소설</p>
                        <h4>이중 하나는 거짓말</h4>
                        <span>김애란 · 문학동네 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content1/img03.jpg" alt="이미지">
                        <p>인문</p>
                        <h4>3분의 철학 1: 서양 고대 철학편</h4>
                        <span>김재훈 · 카시오페아 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content1/img04.jpg" alt="이미지">
                        <p>인문</p>
                        <h4>불안 세대</h4>
                        <span>조너선 하이트 · 웅진지식하우스 </span>
                    </a>
                </div>
            </div>

            <div class="carousel-item">
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content1/img05.jpg" alt="이미지">
                        <p>어린이(초등)</p>
                        <h4>김민형 교수의 수학 추리 탐험대 1</h4>
                        <span>김민형 · 북스그라운드 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content1/img06.jpg" alt="이미지">
                        <p>잡지</p>
                        <h4>데이즈드 앤 컨퓨즈드 Beauty Edition(A형)</h4>
                        <span>렉스트림 편집부 · 렉스트림 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content1/img07.jpg" alt="이미지">
                        <p>인문</p>
                        <h4>사피엔스 그래픽 히스토리 1: 인류의 탄생</h4>
                        <span>유발 하라리 · 김영사 </span>
                    </a>
                </div>
                <div class="channer_box card-body">
                    <a href="#">
                        <img src="${path}/resources/img/content1/img08.jpg" alt="이미지">
                        <p>역사/문화</p>
                        <h4>다시, 역사의 쓸모</h4>
                        <span>최태성 · 프런트페이지 </span>
                    </a>
                </div>
                <!-- 다른 컨텐츠들 -->
            </div>
            <!-- 다른 carousel-item들 -->
        </div>
        <button class="carousel-control-prev " type="button" data-bs-target="#carouselExampleControls2" data-bs-slide="prev">
            <span class="carousel-control-prev-icon card_sub_img" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls2" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</article>

<article class="text">
    <div class="text_box fixed">
      <a href="board/list">
      <div class="text_box_text">
        <h4>
          <span>공지사항</span> / 이달의 소식
        </h4>
        <ul>
          <li>
            <a href="board/list">
              <p>8/14(화) 택배없는 말, 8/15(수) 광복절 배송 일정 안내<span>2024-08-12</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>개인정보처리방침 개정안내 (v7.2)<span>2024-03-28</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>도서문화상품권 북앤라이프 캐시 사용/환전 재개 및 한도 변경 안내<span>2024-08-06</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>24년 8월 신용카드 결제 무이자할부 안내<span>2024-07-31</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>컬처랜드 상품퀀/컬쳐캐쉬 사용 일시 중지 안내<span>2024-07-24</span></p>
            </a>
          </li>
        </ul>
      </div>
      </a>
      <a href="board/list">
      <div class="text_box_text">
        <h4>
          <span>고객센터</span> / FAQ
        </h4>
        <ul>
          <li>
            <a href="board/list">
              <p>[국내도서] 도서 제본 방식과 판형에 따른 특징은 어떤 것들이 있나요?</p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>[외국도서] 직수입 외서/일서 구매후 취소/반품해도 수수료가 부과 되나요?</p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>[품절] 품절, 절판 상품은 구입할 수 없습니까?</p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>[VOD] VOD 관람권 상품을 구매했는데, 관람 코드는 어디서 확인할 수 있나요?</p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>[도서 일반] 도서정가제란 무엇인가요?</p>
            </a>
          </li>
        </ul>
      </div>
      </a>
    </div>
</article>
<footer class="footer">
  <p>&copy; 2024 wj402@naver.com. All rights reserved.</p>
</footer>

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
</div>
</body>
</html>
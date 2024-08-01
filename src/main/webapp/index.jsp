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

</head>

<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<div class="top_navbg">
  <div class="top_nav fixed">
    <ul>
      <li><a href="/member/login">로그인</a></li>
      <li><a href="/member/login">회원가입</a></li>
      <li><a href="#">Language</a></li>
    </ul>
  </div>
</div>
<header class="fixed">
  <h1 class="logo">
    <img src="${path}/resources/img/logo.png" alt="로고이미지">
  </h1>
  <div class="logo_nav fixed">
    <ul class="fixed">
      <li><a href="#">강의</a></li>
      <li><a href="#">로드맵</a></li>
      <li><a href="#">멘토링</a></li>
      <li><a href="#">커뮤니티</a></li>
      <li><a href="#">교육정책</a></li>
    </ul>
  </div>
</header><!-- header_wrap -->

<div class="bg1">
  <div class="bg1_bg1">
    <img src="${path}/resources/img/section1_bg1.png" alt="배경이미지1"/>
  </div>
  <div class="bg1_bg2">
    <img src="${path}/resources/img/section1_bg2.png" alt="배경이미지1"/>
  </div>
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
        <img src="${path}/resources/img/banner01.png" class="d-block w-100" alt="배너1">
      </div>
      <div class="carousel-item">
        <img src="${path}/resources/img/banner02.png" class="d-block w-100" alt="배너2">
      </div>
      <div class="carousel-item">
        <img src="${path}/resources/img/banner03.png" class="d-block w-100" alt="배너3">
      </div>
      <div class="carousel-item">
        <img src="${path}/resources/img/banner04.png" class="d-block w-100" alt="배너3">
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

<article class="icon fixed">
  <h1 class="hide">icon</h1>
  <div class="box">
    <a href="#">
      <img src="${path}/resources/img/icon01.png" alt="icon01" class="icon01">
      <h3>수업 · 연구자료 </h3>
      <p>수업 및 연구자료의 질 향상을<br/>
        위해 노력합니다.
      </p>
      <div class="detail_btn">
        <p>자세히보기</p>
      </div>
    </a>
  </div>
  <div class="box">
    <a href="#">
      <img src="${path}/resources/img/icon02.png" alt="icon02">
      <h3>온라인 예약</h3>
      <p>빠르고 쉽게 진료예약을<br/>
        하쉴 수 있습니다.
      </p>
      <div class="detail_btn">
        <p>자세히보기</p>
      </div>
    </a>
  </div>
  <div class="box">
    <a href="#">
      <img src="${path}/resources/img/icon03.png" alt="icon03">
      <h3>주제별 자료</h3>
      <p>주제별 학습, 영상자료 등의<br/>
        내용을 확인할 수 있습니다.
      </p>
      <div class="detail_btn">
        <p>자세히보기</p>
      </div>
    </a>
  </div>
  <div class="box">
    <a href="#">
      <img src="${path}/resources/img/icon04.png" alt="icon04">
      <h3>우수수업</h3>
      <p>우수수업 동영상을 <br/>
        찾아 보실 수 있습니다.
      </p>
      <div class="detail_btn">
        <p>자세히보기</p>
      </div>
    </a>
  </div>

</article>


<div class="bg2">
  <div class="bg2_bg1">
    <img src="${path}/resources/img/section2_bg1.png" alt="배경이미지2"/>
  </div>
  <div class="bg2_bg2">
    <img src="${path}/resources/img/section2_bg2.png" alt="배경이미지2"/>
  </div>
</div>
<article class="channel fixed">
  <div class="channel_text card-body">
    <h2>로고's Pick</h2>
    <span>/</span>
    <p>더 편하게 만나는 정보</p>
  </div>
  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="channer_box card-body">
          <a href="#">
            <img src="${path}/resources/img/sub_img01.png" alt="이미지">
            <h4>중복</h4>
            <p>열사병과 일사병 뭐가 다를까? <br/>
              #한창 더울 때 야외활동을 줄이라고 하죠? 흔히 일사병, 열사병을 피하기 위해서인데, 개념과 주의사항을 알려드립니다.
            </p>
            <span>2024-08-29</span>
          </a>
        </div>
        <div class="channer_box card-body">
          <a href="#">
            <img src="${path}/resources/img/sub_img02.png" alt="이미지">
            <h4>소서</h4>
            <p>여름과 겨울에 즐기는 스포츠 생활 <br/>
              #안전하게 즐기는 스포츠를 위해 <br/>
              무더위와 추위를 극복하는 계절 스포츠의 매력</p>
            <span>2024-08-29</span>
          </a>
        </div>
        <div class="channer_box card-body">
          <a href="#">
            <img src="${path}/resources/img/sub_img03.png" alt="이미지">
            <h4>초복</h4>
            <p>계절에 따라 날씨가 달라지는 까닭은?.</p>
            <span>2024-08-29</span>
          </a>
        </div>
      </div>
      <div class="carousel-item">
        <div class="channer_box card-body">
          <a href="#">
            <img src="${path}/resources/img/sub_img06.png" alt="이미지">
            <h4>제헌절</h4>
            <p>민주 정치의 원리와 국가 기관의 역할 <br/>
              #법 중의 왕, 헌법을 보호해요 <br/>
              헌법과 헌법 재판소</p>
            <span>2024-09-29</span>
          </a>
        </div>
        <div class="channer_box card-body">
          <a href="#">
            <img src="${path}/resources/img/sub_img05.png" alt="이미지">
            <h4>정보보호의 날</h4>
            <p>우리 사회의 과제와 문화와 발전 <br/>
              #나의 신상 정보를 지켜주세요! <br/>
              우리가 만들어가는 정보 사회</p>
            <span>2024-08-29</span>
          </a>
        </div>
        <div class="channer_box card-body">
          <a href="#">
            <img src="${path}/resources/img/sub_img04.png" alt="이미지">
            <h4>제헌절</h4>
            <p>일상생활과 법 - 일상생활과 법 <br/>
              #법 없이도 살 수 있을까? <br/>
              법의 특성과 필요성</p>
            <span>2024-08-29</span>
          </a>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev " type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
      <span class="carousel-control-prev-icon card_sub_img" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</article>

<article class="information">
  <div class="information_container">
    <div class="row">
      <div class="col-sm-6 card_box">
        <div class="card card_container">
          <h2 class="information_title_text">
            <span>함께 만드는 체험학습지도</span>
            체험학습장소
            <img src="${path}/resources/img/img02_1.png" alt="방방콕콕" />
          </h2>
          <div class="card_img01" style=" width: 360px; height: 400px; background-size: cover; background-image: url('${path}/resources/img/img02.png')"></div>
          <div class="card-body info_text">
            <a href="#" class="btn btn-primary info_text_body">
              체험학습장소
              <span>
                등록하러가기
                <img src="${path}/resources/img/arrow.png" alt="화살표" />
               </span></a>
          </div>
        </div>
      </div>
      <div class="col-sm-6 card_box card_box_margin">
        <div class="card_container02">
          <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
              <button class="nav-link active information_text_button" id="pills-home-tab" data-bs-toggle="pill"
                      data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">최근 등록된 장소</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link information_text_button" id="pills-profile-tab" data-bs-toggle="pill"
                      data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">별점/후기 많은 장소</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link information_text_button" id="pills-contact-tab" data-bs-toggle="pill"
                      data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">추천 많은 장소</button>
            </li>
          </ul>
          <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
              <ul class="list-group">
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <strong class="title">동북아역사재단 독도체험관</strong>
                        <span class="badge card_box_text_round">무료</span>
                      </dt>
                      <dd class="adress">(07305) 서울특별시 영등포구 영중로 15(영등포동4가) 지하 2층 독도체험관</dd>
                      <dd class="tel">02-2068-6101</dd>
                    </dl>
                  </a>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <span class="title">KSPO 스포츠가치센터</span>
                        <span class="badge card_box_text_round">무료</span>
                      </dt>
                      <dd class="adress">(52848) 경상남도 진주시 내동면 삼계로 360 KSPO 스포츠가치센터</dd>
                      <dd class="tel">055-790-9379</dd>
                    </dl>
                  </a>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <strong class="title">민주화운동기념공원</strong>
                        <span class="badge card_box_text_round">무료</span>
                      </dt>
                      <dd class="adress">(17406) 경기도 이천시 모가면 공원로 30 민주화운동기념공원</dd>
                      <dd class="tel">031-8011-9713</dd>
                    </dl>
                  </a>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <strong class="title">세종시립민속박물관</strong>
                        <span class="badge card_box_text_round">무료</span>
                      </dt>
                      <dd class="adress">(30008) 세종특별자치시 전의면 금사길 75 </dd>
                      <dd class="tel">044-120-</dd>
                    </dl>
                  </a>
                </li>
              </ul>
            </div>
            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
              <ul class="list-group">
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <strong class="title">에너지드림센터</strong>
                        <span class="badge card_box_text_round">무료</span>
                      </dt>
                      <dd class="adress">(03901) 서울특별시 마포구 증산로 14(상암동)  </dd>
                      <dd class="tel">02-3151-0562</dd>
                    </dl>
                  </a>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <span class="title">롯데월드</span>
                        <span class="badge card_box_text_round">유료</span>
                      </dt>
                      <dd class="adress">(05554) 서울특별시 송파구 올림픽로 240 롯데월드</dd>
                      <dd class="tel">02-1661-2000</dd>
                    </dl>
                  </a>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <strong class="title">에버랜드</strong>
                        <span class="badge card_box_text_round">유료</span>
                      </dt>
                      <dd class="adress">(17023) 경기도 용인시 처인구 포곡읍 에버랜드로 199 </dd>
                      <dd class="tel">031-320-5000</dd>
                    </dl>
                  </a>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <strong class="title">한국민속촌</strong>
                        <span class="badge card_box_text_round">유료</span>
                      </dt>
                      <dd class="adress">(17075) 경기도 용인시 기흥구 민속촌로 90(보라동) 한국민속촌</dd>
                      <dd class="tel">031-288-0000</dd>
                    </dl>
                  </a>
                </li>
              </ul>
            </div>
            <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
              <ul class="list-group">
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <strong class="title">서울역사박물관</strong>
                        <span class="badge card_box_text_round">무료</span>
                      </dt>
                      <dd class="adress">(43023) 대구광역시 달성군 유가읍 테크노대로6길 20 국립대구과학관 </dd>
                      <dd class="tel">0507-1465-6114</dd>
                    </dl>
                  </a>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <span class="title">국립대구과학관</span>
                        <span class="badge card_box_text_round">유료</span>
                      </dt>
                      <dd class="adress">(43023) 대구광역시 달성군 유가읍 테크노대로6길 20 국립대구과학관</dd>
                      <dd class="tel">0507-1465-6114</dd>
                    </dl>
                  </a>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <strong class="title">롯데월드</strong>
                        <span class="badge card_box_text_round">유료</span>
                      </dt>
                      <dd class="adress">(05554) 서울특별시 송파구 올림픽로 240 롯데월드 </dd>
                      <dd class="tel">02-1661-2000</dd>
                    </dl>
                  </a>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center card_box_text">
                  <a href="#">
                    <dl>
                      <dt>
                        <strong class="title">국립현대미술관 덕수궁</strong>
                        <span class="badge card_box_text_round">유료</span>
                      </dt>
                      <dd class="adress">(04519) 서울특별시 중구 세종대로 99(정동) 국립현대미술관 덕수궁</dd>
                      <dd class="tel">02-2022-0600</dd>
                    </dl>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</article>
<%--<article class="information">--%>
<%--  <h2 class="hide">체험학습장소</h2>--%>
<%--  <div class="information_text">--%>
<%--    <h3>체험학습장소</h3>--%>
<%--    <p> 함께 만드는 체험학습지도</br>--%>
<%--    </p>--%>
<%--    <div class="detail_btn">자세히보기</div>--%>
<%--  </div>--%>
<%--  <div class="information_img">--%>
<%--    <img src="../static/img/img02.png" alt="img02">--%>
<%--  </div>--%>
<%--</article>--%>

<article class="channel fixed video">
  <div class="video_container">
    <div class="channel_text card-body video_text">
      <h2>강의영상</h2>
      <span>/</span>
      <p>유투브 강의 영상</p>
    </div>
    <div id="carouselExampleControls2" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <div class="channer_box card-body">
            <a href="#">
              <img src="${path}/resources/img/video_img01.jpg" alt="이미지">
              <h4도슨트 김찬용></h4도슨트>
              <p>도슨트 김찬용의 미술관 사용법!</p>
              <span>2024-07-27</span>
            </a>
          </div>
          <div class="channer_box card-body">
            <a href="#">
              <img src="${path}/resources/img/video_img02.png" alt="이미지">
              <h4>미쉘TV</h4>
              <p>초등 문법 공부 가이드</p>
              <span>2024-07-27</span>
            </a>
          </div>
          <div class="channer_box card-body">
            <a href="#">
              <img src="${path}/resources/img/video_img03.png" alt="이미지">
              <h4>흔한엄마*</h4>
              <p>공부 잘 하는 아이들의 특징</p>
              <span>2024-08-24</span>
            </a>
          </div>
        </div>
        <div class="carousel-item">
          <div class="channer_box card-body">
            <a href="#">
              <img src="${path}/resources/img/video_img04.jpg" alt="이미지">
              <h4>하와이 대저택</h4>
              <p>100일 미라클 챌린지</p>
              <span>2024-09-10</span>
            </a>
          </div>
          <div class="channer_box card-body">
            <a href="#">
              <img src="${path}/resources/img/video_img05.jpg" alt="이미지">
              <h4>강사 조정식</h4>
              <p>영어 기출서 고르는 기준</p>
              <span>2023-07-11</span>
            </a>
          </div>
          <div class="channer_box card-body">
            <a href="#">
              <img src="${path}/resources/img/video_img06.png" alt="이미지">
              <h4>이서윤쌤</h4>
              <p>하루에 딱 이것만 하면, 전 과목 공부가 훨씬 쉬워집니다</p>
              <span>2023-02-28</span>
            </a>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev " type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
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
              <p>[6월 소식] 에듀넷·티-클리어 새출발, 신규 자료 찾기!<span>2024-06-11</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>[안내] 학습주제 신규 콘텐츠 서비스 안내<span>2024-05-17</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>[5월 소식] 행복과 감사가 가득 찬 가정의 달, 5월<span>2024-05-08</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>2024년 새해 복 많이 받으세요!<span>2024-01-02</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>[안내] 2023년 잇다 플랫폼 사용자 만족도 조사<span>2023-11-14</span></p>
            </a>
          </li>
        </ul>
      </div>
      </a>
      <a href="board/list">
      <div class="text_box_text">
        <h4>
          <span>최신교육동향</span> / 안내
        </h4>
        <ul>
          <li>
            <a href="board/list">
              <p>제6차 사회관계장관회의 개최<span>2024-07-03</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>[독일] 더 많은 아동이 스마트 기기에 접근<span>2024.06.26</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>음대 등 대학의 입시비리를 근절하겠습니다<span>22024-06-18</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>황희찬 축구 국가대표 선수 교육부 홍보대사 위촉<span>2024-06-18</span></p>
            </a>
          </li>
          <li>
            <a href="board/list">
              <p>제4회 한·일·중 교육장관회의 개최 <span>2024-06-17</span></p>
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
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">

    <title>Oh Camping</title>

    <!-- CSS Files -->
    <link href="css/font.css" rel="stylesheet">
    <link href="css/reset_h.css" rel="stylesheet">
    <link href="dist/slick.css" rel="stylesheet">
    <link href="dist/aos.min.css" rel="stylesheet">
    <link href="dist/icon.css" rel="stylesheet">
    <link href="dist/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/common.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>

<body>
    <!-- 메뉴바(header) -->
    <header id="header" class="head_3">
        <nav class="wrap_menu">
            <div class="menu_logo">
                <a href="">
                    <span class="tit_menu pen_name_tit"></span>
                </a>
            </div>
            <div class="menu_items sub">
                <div class="menu_list">
                    <a href="${pageContext.request.contextPath}/resources#">About</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">펜션소개</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="${pageContext.request.contextPath}/resources#">Room</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">미리보기</a>
                        </li>
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">계곡 1 ~ 11</a>
                        </li>
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">대형 1,2,3,4</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="${pageContext.request.contextPath}/resources#">Facility</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">미리보기</a>
                        </li>
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">바베큐</a>
                        </li>
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">수영장</a>
                        </li>
                        <li class="inner_list">
                              <a href="${pageContext.request.contextPath}/resources#">계곡</a>
                        </li>
                        <li class="inner_list">
                              <a href="${pageContext.request.contextPath}/resources#">놀이터</a>
                        </li>
                        <li class="inner_list">
                              <a href="${pageContext.request.contextPath}/resources#">사우나</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="${pageContext.request.contextPath}/resources#">Travel</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                              <a href="${pageContext.request.contextPath}/resources#">미리보기</a>
                        </li>
                        <li class="inner_list">
                              <a href="${pageContext.request.contextPath}/resources#">아침고요수목원</a>
                        </li>
                        <li class="inner_list">
                              <a href="${pageContext.request.contextPath}/resources#">쁘띠 프랑스</a>
                        </li>
                        <li class="inner_list">
                              <a href="${pageContext.request.contextPath}/resources#">남이섬</a>
                        </li>
                        <li class="inner_list">
                              <a href="${pageContext.request.contextPath}/resources#">포천아트밸리</a>
                        </li>
                        <li class="inner_list">
                              <a href="${pageContext.request.contextPath}/resources#">베어스타운스키장</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="${pageContext.request.contextPath}/resources#">Location</a>
                </div>
                <div class="menu_list">
                    <a href="${pageContext.request.contextPath}/resources" class="link_reser">Reservation</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources" class="link_reser">실시간 예약</a>
                        </li>
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">예약안내</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="${pageContext.request.contextPath}/resources#">Community</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">공지사항</a>
                        </li>
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">이용문의</a>
                        </li>
                        <li class="inner_list">
                            <a href="${pageContext.request.contextPath}/resources#">숙박후기</a>
                        </li>
                    </ul>
                </div>
            </div>
       </nav>
    </header>
    <!-- // 메뉴바(header) -->


    <!-- 메인 슬라이드 -->
    <section class="wrap_main">
        <div class="wrap_scroll">
            <b>SCROLL</b>
            <div class="scroll">
                <div class="scroll_bar"></div>
            </div>
        </div>
        <div class="nav_main">
            <div class="box_arrow_main left main">
                <i class="fas fa-arrow-left"></i>
            </div>
            <div class="box_arrow_main right main">
                <i class="fas fa-arrow-right"></i>
            </div>
        </div>
        <div class="wrap_main_slide slide_main">
            <div class="wrap_iframe_pc">
                <div id="iframe_pc" class="iframe_pc iframe_youtube" data-iframe="wWood8cUMlE"></div>
                <div class="bg_iframe"></div>
                <div class="sli_main main_0"></div>
            </div>
            <div class="sli_main main_1"></div>
            <div class="sli_main main_2"></div>
            <div class="sli_main main_3"></div>
        </div>
    </section>
    <!-- 메인 슬라이드 -->
    <div id="NmKe3nO2WVc" class="wrap_mb_iframe">
    </div>
    <!-- // 메인 슬라이드 -->

    <!-- 소개1 -->
    <section class="wrap_ma_intro">
        <div class="wrap_popup">
            <div class="close_pop"></div>
            <img src="img/pop20220318.png" alt="popup1" class="popup">
        </div>

        <div class="bg_main_1">
            <div class="main_intro">
                <h1>Introduction</h1>
                <h3>
                    새소리와 함께하는 계곡속 감성캠핑
                    <!-- 아름다운 자연, 피톤치드, 맑은공기, 천연의 기운을 느낄 수 있는 장소 -->
                </h3>
                <p class="aos-item" data-aos="fade-top" data-aos-once="true">
                    가평 물골길에  위치한 Oh Camping을 소개합니다.<br>
                    숙박하기 쾌적한 내부 시설과
                        <span class="col_li_brown">
                    천연 항균 물질인 피톤치드
                    </span>가 함유된 잣나무로 둘러 쌓여 공기 정화는 물론<br>
                    온갖 종류의 다양한 새소리와 잔잔히 들리는 계곡 물 흐르는 소리는<br>
                    Oh Camping 최고의 자랑거리죠.
                    <br>
                    더불어 사계절 온수수영장외 7-8월엔 야외 수영장 1개소 추가 운영, 핀란드 사우나2곳 운영 (계곡쪽 사우나는 7~8월만 운영),<br>
                    계곡 쉼터, 방방이, 유아용 놀이터, 그네, 개별화장실, 개별바베큐시설. 매점등 편의 시설도 준비 되어 있습니다.<br>
                    아주 가끔은 집이 아닌 다른 곳에서 편안한 휴식시간을 가지고 싶으시죠?
                </p>
                <h3>차 한잔의 여유로 생각에게 휴식을 줄 수 있는 공간.</h3>
                <p class="aos-item" data-aos="fade-top" data-aos-once="true">
                    편안한 대화로 마음의 문을 열 수 있는 공간.<br>
                    추억의 물놀이로 화합을 느낄 수 있는 공간, <br>
                    Oh Camping이라면 가능합니다.<br>
                    가족,연인,친구,직장동료,이웃주민등 환영합니다.
                </p>
            </div>

            <div class="wrap_main_img mt_main2">
                <div class="ma_intro_img ma_img_1 aos-item" data-aos="fade-right" data-aos-once="true"></div>

                <div class="ma_intro_txt aos-item" data-aos="fade-left" data-aos-once="true">
                    <div class="intro_txt">
                        <h2>아름다운 경치</h2>
                        <h1>Beautiful View</h1>
                        <p>저희 펜션의 아름다운 경관과 함께.
                            <span class="span_block">
                                수십만 그루의 잣나무와 편백나무의 피톤치드로 힐링해보세요
                            </span>
                        </p>
                        <a href="${pageContext.request.contextPath}/resources#" class="btn_main_1">
                           View More
                        </a>
                    </div>
                    <div class="intro_img img1"></div>
                </div>
            </div>
        </div>

        <div class="wrap_main_img">
            <div class="ma_intro_txt aos-item" data-aos="fade-right" data-aos-once="true">
                <div class="intro_txt">
                    <h2>확 트인 전망</h2>
                    <h1>Beautiful View</h1>
                    <p>확 트인 전망을 즐길 수 있는 저희 펜션으로 놀러오세요
                        <span class="span_block">
                          미세먼지를 피해 푸르른 숲의 맑은 공기가 가득한곳.
                        </span>
                    </p>
                    <a href="${pageContext.request.contextPath}/resources#" class="btn_main_1">
                        View More
                    </a>
                </div>
                <div class="intro_img img2"></div>
            </div>

            <div class="ma_intro_img ma_img_2 aos-item" data-aos="fade-left" data-aos-once="true"></div>
        </div>

        <div class="wrap_main_img">
            <div class="ma_intro_img ma_img_3 aos-item" data-aos="fade-right" data-aos-once="true"></div>

            <div class="ma_intro_txt aos-item" data-aos="fade-left" data-aos-once="true">
                <div class="intro_txt">
                    <h2>아늑한 인테리어</h2>
                    <h1>Cozy Interior</h1>
                    <p>아늑한 인테리어,아늑한 공간이 당신을 맞이합니다.
                        <span class="span_block">
                          수 많은 새소리로 가득찬 Oh Camping이 당신을 기다립니다
                        </span>
                    </p>
                    <a href="${pageContext.request.contextPath}/resources#" class="btn_main_1">
                        View More
                    </a>
                </div>
                <div class="intro_img img3"></div>
            </div>
        </div>
    </section>


    <!-- 소개2 -->
    <section class="room_preivew">
        <div class="main_intro">
            <h1>Room Previews</h1>
            <h3>저희 펜션에 있는 방들을 한눈에 살펴 보실 수 있습니다</h3>
        </div>

        <div class="wrap_preview">
            <div class="nav_main">
                <div class="box_arrow_main left preview">
                    <i class="fas fa-arrow-left"></i>
                </div>
                <div class="box_arrow_main right preview">
                    <i class="fas fa-arrow-right"></i>
                </div>
            </div>
            <div class="preview_slide">
                <div class="preview_img img_1">
                    <div class="wrap_pre_txt">
                        <div class="pre_txt set_room_1">
                            <h2 class="room_de_name"></h2>
                            <p class="room_de_size"></p>
                            <p class="room_de_type"></p>
                            <p class="room_de_peo"></p>
                                <a href="${pageContext.request.contextPath}/resources#" class="btn_room_pre mt_main2">
                              View more
                            </a>
                        </div>
                    </div>
                </div>
                <div class="preview_img img_3">
                    <div class="wrap_pre_txt">
                        <div class="pre_txt set_room_3">
                            <h2 class="room_de_name"></h2>
                            <p class="room_de_size"></p>
                            <p class="room_de_type"></p>
                            <p class="room_de_peo"></p>
                                <a href="${pageContext.request.contextPath}/resources#" class="btn_room_pre mt_main2">
                              View more
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="room_preivew mb">
        <div class="main_intro">
            <h1 class="mt_none">Room Previews</h1>
            <h3>저희 펜션에 있는 방들을 한눈에 살펴 보실 수 있습니다</h3>
        </div>

        <div class="room_pre_mb wrap_1">
            <div class="block_1 pre_mb_img1"></div>
        </div>
        <div class="room_pre_mb wrap_2">
            <div class="bloxk_2 pre_mb_img1_2"></div>
            <div class="block_intro pre_mb_img1_3">
                <div class="room_pre_txt">
                    <h2>계곡1 ~ 11</h2>
                    <p>사랑하는 연인과 함께 하세요</p>
                    <a href="${pageContext.request.contextPath}/resources#" class="btn_room_mb">
                      View More
                    </a>
                </div>
            </div>
        </div>
        <div class="room_pre_mb wrap_2">
            <div class="bloxk_3 pre_mb_img1_4"></div>
            <div class="bloxk_2 pre_mb_img1_5"></div>
        </div>

        <div class="room_pre_mb wrap_2">
            <div class="bloxk_2 pre_mb_img2_4"></div>
            <div class="bloxk_3 pre_mb_img2_5"></div>
        </div>

        <div class="room_pre_mb wrap_1">
            <div class="block_1 pre_mb_img3"></div>
        </div>
        <div class="room_pre_mb wrap_2">
            <div class="bloxk_2 pre_mb_img3_2"></div>
            <div class="block_intro pre_mb_img3_3">
                <div class="room_pre_txt">
                    <h2>대형 1,2,3,4</h2>
                    <p>사랑하는 연인과 함께 하세요</p>
                        <a href="${pageContext.request.contextPath}/resources#" class="btn_room_mb">
                          View More
                      </a>
                </div>
            </div>
        </div>
        <div class="room_pre_mb wrap_2">
            <div class="bloxk_3 pre_mb_img3_4"></div>
            <div class="bloxk_2 pre_mb_img3_5"></div>
        </div>
    </section>

    <section class="main_service">
        <div class="main_intro">
            <h1>Services</h1>
            <h3>고객여러분의 편안함을 위해 최고의 서비스를 제공합니다</h3>
        </div>

        <div class="wrap_service_list">
            <div class="list_service img1">
                <div class="service_txt">
                    <h1>호텔식 침구</h1>
                    <h2>Lucury Duvet</h2>
                </div>
                <a href="service/service1.php" class="btn_service">
                    View More
                </a>
            </div>
            <div class="list_service img2">
                <div class="service_txt">
                  <h1>싱크대</h1>
                  <h2>Sink</h2>
                </div>
                <a href="service/service2.php" class="btn_service">
                    View More
                </a>
            </div>
            <div class="list_service img3">
                <div class="service_txt">
                    <h1>개별화장실</h1>
                    <h2>Private Bathroom</h2>
                </div>
                <a href="service/service3.php" class="btn_service">
                    View More
                </a>
            </div>
            <div class="list_service img4 mb_none">
                <div class="service_txt">
                    <h1>샤워용품</h1>
                    <h2>Toiletries</h2>
                </div>
                <a href="service/service4.php" class="btn_service">
                  View More
                </a>
            </div>
        </div>
    </section>

    <section class="main_facility">
        <div class="bg_main_2">
            <div class="main_intro">
                <h1>Our Facilities</h1>
                <h3>즐거운 여행을 위해 저희가 준비한 기타 시설</h3>
            </div>
            <div class="wrap_facil">
                <div class="facil_block facil_block1">
                    <div class="main_facil main_facilt_1_1">
                    </div>

                    <div class="main_facil main_facilt_1_2">
                    </div>
                </div>

                <div class="facil_block facil_block2">
                    <div class="main_facil main_facilt_1_5">
                        <div class="wrap_facil_txt">
                            <h1>바베큐</h1>
                            <h2>Barbecue</h2>
                            <a href="${pageContext.request.contextPath}/resources#" class="btn_facil">
                              View More
                            </a>
                        </div>
                    </div>
                </div>
                <div class="facil_block facil_block3 mb_none">
                    <div class="main_facil main_facilt_1_3">
                    </div>
                    <div class="main_facil main_facilt_1_4">
                    </div>
                </div>
            </div>

            <div class="main_intro bg_none">
                <h1>Swimming pool</h1>
                <h3>저희 펜션 수영장에서 즐거운 시간을 보내보세요</h3>
            </div>

            <div class="wrap_facil">
                <div class="facil_block facil_block1">
                    <div class="main_facil main_facilt_2">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>

                    <div class="main_facil main_facilt_2_2">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
               </div>

                <div class="facil_block facil_block2">
                    <div class="main_facil main_facilt_2_5 center">
                        <div class="wrap_facil_txt">
                            <h1>수영장</h1>
                            <h2>Swimming pool</h2>
                                <a href="${pageContext.request.contextPath}/resources#" class="btn_facil">
                                View More
                            </a>
                        </div>
                    </div>
                </div>

                <div class="facil_block facil_block3 mb_none">
                    <div class="main_facil main_facilt_2_3">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
                    <div class="main_facil main_facilt_2_4">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
                </div>
            </div>

            <div class="main_intro bg_none">
                <h1>Valley</h1>
                <h3>저희 펜션 근처에 있는 계곡에서 자연을 만끽해보세요</h3>
            </div>

            <div class="wrap_facil">
                <div class="facil_block facil_block1">
                    <div class="main_facil main_facilt_3">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>

                    <div class="main_facil main_facilt_3_2">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
                </div>

                <div class="facil_block facil_block2">
                    <div class="main_facil main_facilt_3_5 center">
                        <div class="wrap_facil_txt">
                            <h1>계곡</h1>
                            <h2>Valley</h2>
                                <a href="${pageContext.request.contextPath}/resources#" class="btn_facil">
                                View More
                            </a>
                        </div>
                    </div>
                </div>

                <div class="facil_block facil_block3 mb_none">
                    <div class="main_facil main_facilt_3_3">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
                    <div class="main_facil main_facilt_3_4">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
                </div>
            </div>

            <div class="main_intro bg_none">
                <h1>Playground</h1>
                <h3>꼬마손님들을 위한 놀이터가 마련되어있습니다.</h3>
            </div>

            <div class="wrap_facil">
                <div class="facil_block facil_block1">
                    <div class="main_facil main_facilt_4">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>

                    <div class="main_facil main_facilt_4_2">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
                </div>

                <div class="facil_block facil_block2">
                    <div class="main_facil main_facilt_4_5 center">
                        <div class="wrap_facil_txt">
                            <h1>놀이터</h1>
                            <h2>Playground</h2>
                                <a href="${pageContext.request.contextPath}/resources#" class="btn_facil">
                                  View More
                                </a>
                        </div>
                    </div>
                </div>

                <div class="facil_block facil_block3 mb_none">
                    <div class="main_facil main_facilt_4_3">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
                    <div class="main_facil main_facilt_4_4">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
                </div>
            </div>

            <div class="main_intro bg_none">
                <h1>Sauna</h1>
                <h3>자연 속의 청정 사우나에서 쌓인 피로를 풀어보세요</h3>
            </div>

            <div class="wrap_facil">
                <div class="facil_block facil_block1">
                    <div class="main_facil main_facilt_5">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>

                    <div class="main_facil main_facilt_5_2">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
                </div>

                <div class="facil_block facil_block2">
                    <div class="main_facil main_facilt_5_5 center">
                        <div class="wrap_facil_txt">
                            <h1>사우나</h1>
                            <h2>Sauna</h2>
                            <a href="${pageContext.request.contextPath}/resources#" class="btn_facil">
                              View More
                            </a>
                        </div>
                    </div>
                </div>

                <div class="facil_block facil_block3 mb_none">
                    <div class="main_facil main_facilt_5_3">
                        <div class="wrap_facil_txt">
                        </div>
                    </div>
                    <div class="main_facil main_facilt_5_4">
                          <div class="wrap_facil_txt">
                          </div>
                    </div>
                </div>
            </div>
        </div><!-- end -->
    </section>


    <footer>
        <div class="foot_logo">
            <div class="menu_logo footer">
                <a href="${pageContext.request.contextPath}/resources">
                    <span class="tit_menu pen_name_tit"></span>
                </a>
            </div>
        </div>
        <div class="foot_info">
            <h3>CONTACT US</h3>
            <p>
                상호명 :     <span class="pen_name"></span> /
                대표자 :     <span class="pen_owner"></span> /

            </p>
            <p>
                전화 :    <span class="pen_phone"> </span>
            </p>
            <p>
                계좌번호 :    <span class="pen_bank"> </span>
            </p>
            <p>
                상담가능 시간 : 09:00 ~ 21:00
            </p>
            <p>
                이메일 :     <span class="pen_mail"> </span>
            </p>
            <p>
                주소 :    <span class="pen_address"> </span>
            </p>
            <p>
            <span>홈페이지제작 :
              5조
            </span>
          </p>
          <p>
                <a href="#" class="btn_login">관리자 로그인</a>
          </p>
        </div>
    </footer>


    <script src="dist/slick.min.js"></script>
    <script src="dist/aos.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/common.js"></script>
    <script src="js/data.js"></script>

<script>

    setTimeout(function(){
      AOS.init({
          duration: 700,
          // disable: 'mobile',
          // useClassNames: true,
          // // initClassName: false,
          // animatedClassName: 'animated',
        });
    },2000)

  var btn_mute = document.querySelector('.btn_mute');
  var video_viewport = document.querySelector('.box_arrow_main.right');

    $('.mb_btn').on('click',function(){
      $(this).toggleClass('on');
      $('.menu_mb').toggleClass('on');
    })


    if(device_width > 600){

        window.onscroll = function (e) {

            var bounding = video_viewport.getBoundingClientRect();

            if (
                bounding.top >= 0 &&
                bounding.left >= 0 &&
                bounding.right <= (window.innerWidth || document.documentElement.clientWidth) &&
                bounding.bottom <= (window.innerHeight || document.documentElement.clientHeight)
            ) {
                unmuteVideo();
            } else {
                muteVideo();

            }
        }
    }

</script>



</body>

</html>
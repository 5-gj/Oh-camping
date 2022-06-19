<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <title>Oh Camping</title>

    <!-- CSS Files -->
    <!-- Awesome.css -->
	<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/font.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/reset_h.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/dist/slick.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/dist/aos.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/dist/icon.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/dist/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/common.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/sub_st.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<!-- 메뉴바(header) -->
    <header id="header" class="head_3">
        <nav id="navwrap_bg" class="wrap_menu">
            <div class="menu_logo">
                <a href="<%=request.getContextPath() %>/camp_main.do">
                    <img src="<%=request.getContextPath() %>/resources/img/logo.png">
                </a>
            </div>
            <div class="menu_items sub">
                <div class="menu_list">
                    <a href="#">About</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="#">펜션소개</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="#">Room</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="#">미리보기</a>
                        </li>
                        <li class="inner_list">
                            <a href="#">계곡 1 ~ 11</a>
                        </li>
                        <li class="inner_list">
                            <a href="#">대형 1,2,3,4</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="#">Facility</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="#">미리보기</a>
                        </li>
                        <li class="inner_list">
                            <a href="#">바베큐</a>
                        </li>
                        <li class="inner_list">
                            <a href="#">수영장</a>
                        </li>
                        <li class="inner_list">
                              <a href="#">계곡</a>
                        </li>
                        <li class="inner_list">
                              <a href="#">놀이터</a>
                        </li>
                        <li class="inner_list">
                              <a href="#">사우나</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="#">Travel</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                              <a href="#">미리보기</a>
                        </li>
                        <li class="inner_list">
                              <a href="#">아침고요수목원</a>
                        </li>
                        <li class="inner_list">
                              <a href="#">쁘띠 프랑스</a>
                        </li>
                        <li class="inner_list">
                              <a href="#">남이섬</a>
                        </li>
                        <li class="inner_list">
                              <a href="#">포천아트밸리</a>
                        </li>
                        <li class="inner_list">
                              <a href="#">베어스타운스키장</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="#">Location</a>
                </div>
                <div class="menu_list">
                    <a href="" class="link_reser">Reservation</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="" class="link_reser">실시간 예약</a>
                        </li>
                        <li class="inner_list">
                            <a href="#">예약안내</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="#">Community</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="#">공지사항</a>
                        </li>
                        <li class="inner_list">
                            <a href="#">이용문의</a>
                        </li>
                        <li class="inner_list">
                            <a href="#">숙박후기</a>
                        </li>
                    </ul>
                </div>
            </div>
       </nav>
    </header>
    <!-- // 메뉴바(header) -->

</body>
</html>
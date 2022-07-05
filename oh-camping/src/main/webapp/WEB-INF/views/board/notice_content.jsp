<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
</head>
<body>
   <jsp:include page="../inc/oh_camping_top.jsp" />   
   <!-- 서브 슬라이드  -->
    <section class="m_slick s_slick slider board_head">
        <div class="b_h_bg b_h_bg1">
         <h1> 공지사항   </h1>
         <h3> Oh Camping의 소식을 알려드립니다. </h3>
        </div>
        <div class="b_h_bg b_h_bg2">
         <h1> 공지사항   </h1>
         <h3> Oh Camping의 소식을 알려드립니다. </h3>
        </div>
        <div class="b_h_bg b_h_bg3">
         <h1> 공지사항   </h1>
         <h3> Oh Camping의 소식을 알려드립니다. </h3>
        </div>
    </section>
    <!-- // 서브 슬라이드  -->
    <div id="sub_wrap" class="webfont">
        <div id="aside">
            <div class="left_title">
                <p class="big_title">Community</p>
                <p class="small_title">Notice</p>
                <p class="bl_lt">▼</p>
            </div>
            <div class="mid_nav">
                <ul class="mid_menu">
                    <li><a href="<%=request.getContextPath() %>/camp_notice.do" class="nav_on"><i class="fa fa-caret-right"></i>공지사항</a></li>                  
                    <li><a href="<%=request.getContextPath() %>/camp_qa.do"><i class="fa fa-caret-right"></i>이용문의</a></li>
                    <li><a href="#">숙박후기</a></li> <!-- -->
                </ul>
            </div>
        </div>
      
      
        <div id="section">
            <div class="page_count_bg"> 
                <div id="page_count" class="clearfix">
                    <ul>
                        <li><i class="fa fa-home"></i> Home</li>
                        <li><i class="fa fa-home"></i> Community</li>
                        <li> <i class="fa fa-angle-right"></i> <strong>Notice</strong></li>
                    </ul>
                </div>
            </div>
    
            <p class="sub_title">공지사항<span class="sub_title2">Notice</span></p>
            
            <!-- 본문 시작 -->
            <div id="sub_contents">        
                <div id="board_wrap">
                	<c:set var="dto" value="${Cont }" />
                    <table cellspacing="0" width="100%">
					    <tr>
					        <th>글 제목</th>
					        <td> ${dto.notice_title } </td>
					    </tr>
					   	<tr>
					        <th>작성일자</th>
					        <td> ${dto.notice_date } </td>
					    </tr>
					    <tr>
					        <th>조회수</th>
					        <td> ${dto.notice_hit } </td>
					    </tr>
					    <tr>
					        <th>글 내용</th>
					        <td class="board_cont"> 
					         	<textarea readonly>${dto.notice_cont }</textarea>
					        </td>
					    </tr>
					    <tr>
					        <th>첨부파일</th>
					        <td> ${dto.notice_file } </td>
					    </tr>  
					    <c:if test="${empty dto }">
					    	<tr>
					            <td colspan="2" align="center">
					               <h3>조회된 상세 내역이 없습니다.....</h3>
					            </td>
					        </tr>
					    </c:if>
                        <tr>
                            <td align="center" colspan="2" class="board_btn">
                                <input type="button" value="목록" onclick="location.href='camp_notice.do?page=${Page }'">
                            </td>
                        </tr>
                   
                    </table>
      
                </div>
                    
            </div>
    
        </div>
        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/oh_camping_bottom.jsp" />
</body>
</html>
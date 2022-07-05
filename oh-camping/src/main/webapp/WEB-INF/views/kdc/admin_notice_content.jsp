<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
<style type="text/css">

	#sub_contents { 
	max-width: 1100px; 
	margin: auto; 
	overflow-y: hidden; 
	padding: 300px 15px 55px; 
	}

</style>
</head>
<body>
  	<jsp:include page="../inc/admin_top.jsp" />  
   
      
            <!-- 본문 시작 -->
            <div id="sub_contents">        
                <div id="board_wrap">
                	<c:set var="dto" value="${adminCont }" />
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
                            <td align="right" colspan="2" class="board_btn">
                                <input type="button" value="수정하기" onclick="location.href='admin_notice_update.do?no=${dto.notice_no}&page=${adminPage }'">
                                <input type="button" value="삭제하기" onclick="if(confirm('공지사항을 삭제하시겠습니까?')) {
																	location.href='admin_notice_delete.do?no=${dto.notice_no }&page=${adminPage }'
																	}else { return; }">
                            </td>
                        </tr>
					    
                        <tr>
                            <td align="center" colspan="2" class="board_btn">
                                <input type="button" value="목록" onclick="location.href='admin_notice_list.do?page=${adminPage }'">
                            </td>
                        </tr>
                   
                    </table>
      
                </div>
                    
            </div>
    
        </div>
        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/admin_bottom.jsp" />
</body>
</html>
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
                	<c:set var="dto" value="${Update }" />
                	<form method="post" action="<%=request.getContextPath() %>/admin_notice_update_ok.do" >
                		<input type="hidden" name="notice_no" value="${dto.notice_no }">
	   	  				<input type="hidden" name="page" value="${Page }">
                    <table cellspacing="0" width="100%">
					    <tr>
					        <th>글 제목</th>
					        <td> <input type="text" value="${dto.notice_title }" name="notice_title"> </td>
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
					        	<textarea rows="7" cols="100" name="notice_cont" class="input_text">${dto.notice_cont }</textarea> </td>
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
                                <input type="submit" value="수정하기">&nbsp;&nbsp;
                                <input type="button" value="목록" onclick="location.href='admin_notice_list.do?page=${Page }'">
                            </td>
                        </tr>

                   
                    </table>
    			  </form>
                </div>
                    
            </div>
    
        </div>
        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/admin_bottom.jsp" />
</body>
</html>
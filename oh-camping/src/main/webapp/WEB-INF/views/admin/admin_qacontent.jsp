<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

	<div id="sub_contents">        
        <div id="board_wrap">
	<c:set var="dto" value="${qadto }"/>
	<c:set var="page" value="${page }"/>
		
			<table cellspacing="0" width="100%">
				<c:if test="${!empty dto }">
					<tr>
                       <th>작성자</th>
                       <td> ${dto.qa_writer } </td>
                    </tr>
                    
                    <tr>
                       	<th>글 제목</th>
                       	<c:if test="${i.qa_indent != 0}">
                       		<td> ${dto.qa_title } </td>
                       	</c:if>
                       	<c:if test="${i.qa_indent == 0}">
                       		<td> <span>RE</span> ${dto.qa_title } </td>
                       	</c:if>
                    </tr>
                    
                    <tr>
                       <th>글 내용</th>
                       <td> 
                          <textarea readonly>${dto.qa_cont }</textarea>
                       </td>
                    </tr>
                 
                    <tr>
                       <th>조회수</th>
                       <td> ${dto.qa_hit } </td>
                    </tr>
                    
                    <tr>
                          <th>작성일자</th>
                        <td> ${dto.qa_date } </td>
                    </tr>
				</c:if>
				
				<c:if test="${empty dto }">
					<tr>
						<td colspan="2" align="center">
							<h3>조회된 상세 내역이 없습니다.</h3>
						</td>
					</tr>
				</c:if>
				
				<tr>
				
					<!-- 답글인 경우 -->
					<c:if test="${dto.qa_indent==1 }">
						<td colspan="2" align="right">
							<input type="button" value="수정"
								onclick="location.href='admin_qa_update.do?no=${dto.qa_no }&page=${page}'">
							<input type="button" value="삭제"
								onclick="if(confirm('답변을 삭제하시겠습니까?')){
									location.href='admin_qa_delete.do?no=${dto.qa_no}&page=${page }&indent=${dto.qa_indent }'
								}else{
									return;
								}">
							<input type="button" value="목록으로"
								onclick="location.href='admin_qa.do?page=${page}'">
						</td>
					</c:if>
					
					<!-- 문의의 경우 -->
					<c:if test="${dto.qa_indent==0 }">
						<td colspan="2" align="right">
							<input type="button" value="답글쓰기"
								onclick="location.href='admin_qa_write.do?page=${page}&no=${dto.qa_no }'">
							<input type="button" value="삭제"
								onclick="if(confirm('답변도 함께 삭제됩니다. 게시글을 삭제하시겠습니까?')){
									location.href='admin_qa_delete.do?no=${dto.qa_no}&page=${page }&indent=${dto.qa_indent }'
									}else{
										return;
									}">
							<input type="button" value="목록으로"
								onclick="location.href='admin_qa.do?page=${page}'">
						</td>
					</c:if>
				
				
				</tr>
			
			</table>
		</div>
        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/admin_bottom.jsp" />

</body>
</html>
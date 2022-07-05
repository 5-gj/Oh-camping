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
                <div id="table_wrap">
                    <table cellspacing="0" width="100%">
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일자</th>
                            <th>조회수</th>
                        </tr>
            
                        <c:set var="list" value="${adminNoticeList }" />
                        <c:set var="paging" value="${adminPaging }" />
                        
                        <c:if test="${!empty list }">
                        	
				         	<c:forEach items="${list }" var="i">
				            	<tr>
				               		<td> ${i.notice_no } </td>
				               		<td class="board_title"> 
				                  		<a href="<%=request.getContextPath() %>/admin_notice_content.do?no=${i.notice_no }&page=${paging.page }">
				               							${i.notice_title } </a>
				               		</td>
				               		<td> ${i.notice_date } </td>
				               		<td> ${i.notice_hit } </td>
				            	</tr>
				         	</c:forEach>
				      	</c:if>
                        
                        <c:if test="${empty list }">
                            <tr>
                                <td colspan="4"><h4>게시글이 없습니다.</h4></td>
                            </tr>
                        </c:if>
                   
                   	<tr>
                            <td colspan="4" align="right" class="table_btn">
		                           <input type="button" value="글쓰기"
                                      	onclick="location.href='admin_notice_write.do?&page=${paging.page }'">
                            </td>
                   </tr>
                   
                   
                    </table>
        
                    <div class="ext_paging" style="margin-top: 20px;">
                    	<%-- 페이징 처리 부분 --%>
					   <c:if test="${paging.getPage() > paging.getBlock() }">
					      <a href="admin_notice_list.do?page=1">◀◀</a>
					      <a href="admin_notice_list.do?page=${paging.getStartBlock() - 1 }"> &lt;<span class="page_s">이전</span> | </a>&nbsp;
					   </c:if>
					   
					   <c:forEach begin="${paging.getStartBlock() }"
					          				end="${paging.getEndBlock() }" var="i">
					      <c:if test="${i == paging.getPage() }">
					         <b> <a href="admin_notice_list.do?page=${i }">[${i }]</a></b>
					      </c:if>
					   
					   	  <c:if test="${i != paging.getPage() }">
					         <a href="admin_notice_list.do?page=${i }">[${i }]</a>
					      </c:if>
					   </c:forEach>
				
					   <c:if test="${paging.getEndBlock() < paging.getAllPage() }">&nbsp;
					      <a href="admin_notice_list.do?page=${paging.getEndBlock() + 1 }"> | <span class="page_s">다음</span>&gt; </a>
					      <a href="admin_notice_list.do?page=${paging.getAllPage() }">▶▶</a>
					   </c:if>
                    </div>
                    
                    <%-- 검색 부분! --%>
                    <div class="ext_search">
                    	<form method="post"
					      	action="<%=request.getContextPath() %>/camp_notice_search.do">
					   
					   	  	<input type="hidden" name="page" value="${paging.getPage() }">
					   	  
					      	<select name="field">
					         	<option value="title">제목</option>
					         	<option value="cont">내용</option>
					         	<option value="title_cont">제목+내용</option>
					      	</select>
					      
					      	<input name="keyword" class="search_input_text">
					      	<input type="submit" value="검색"  class="search_input_btn">
					   	</form>
					   	
                    </div>
                </div>
                    
            </div>
    
        </div>
        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/admin_bottom.jsp" />
</body>
</html>
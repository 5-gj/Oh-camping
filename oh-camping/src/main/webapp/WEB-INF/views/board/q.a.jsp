<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
<script type="text/javascript">

    function loginAlert() {
        alert("게시판 사용 권한이 없습니다. 로그인 해주세요");
    }
        
</script>
</head>
<body>
   <jsp:include page="../inc/oh_camping_top.jsp" />   
   <!-- 서브 슬라이드  -->
    <section class="m_slick s_slick slider board_head">
        <div class="b_h_bg b_h_bg1">
         <h1> 이용문의   </h1>
         <h3> 친절하게 답변 드리겠습니다. </h3>
        </div>
        <div class="b_h_bg b_h_bg2">
         <h1> 이용문의   </h1>
         <h3> 친절하게 답변 드리겠습니다. </h3>
        </div>
        <div class="b_h_bg b_h_bg3">
         <h1> 이용문의   </h1>
         <h3> 친절하게 답변 드리겠습니다. </h3>
        </div>
    </section>
    <!-- // 서브 슬라이드  -->
    <div id="sub_wrap" class="webfont">
        <div id="aside">
            <div class="left_title">
                <p class="big_title">Community</p>
                <p class="small_title">Q&A</p>
                <p class="bl_lt">▼</p>
            </div>
            <div class="mid_nav">
                <ul class="mid_menu">
                    <li><a href="<%=request.getContextPath() %>/camp_notice.do"><i class="fa fa-caret-right"></i>공지사항</a></li>                  
                    <li><a href="<%=request.getContextPath() %>/camp_qa.do" class="nav_on"><i class="fa fa-caret-right"></i>이용문의</a></li>
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
                        <li> <i class="fa fa-angle-right"></i> <strong>Q&A</strong></li>
                    </ul>
                </div>
            </div>
    
            <p class="sub_title">이용문의<span class="sub_title2">Q&A</span></p>
            
            <!-- 본문 시작 -->
            <div id="sub_contents">        
                <div id="table_wrap">
                    <table cellspacing="0" width="100%" class="qa_board">
                        <tr>
                            <th>번호</th>
                            <th>문의유형</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일자</th>
                            <th>조회수</th>
                        </tr>
            
                        <c:set var="list" value="${QaList }" />
                        <c:set var="paging" value="${Paging }" />
                        
                        <c:if test="${!empty list }">
                        	
				         	<c:forEach items="${list }" var="i">
				            	<tr>
				            		<td> ${i.qa_no } </td>
				            		<td> ${i.qa_type } </td>
				            		<%-- 댓글인 경우 --%>
						 			<c:if test="${i.qa_indent != 0}">
						 				<td class="board_title qa_reply">
						 					<span>RE</span>
							 				<%	// 로그인 안되었을 때 댓글인 경우  
					                            if(session.getAttribute("sessionID")==null){%>
			                            			 <a href="#" onclick="loginAlert()">
			                                            	${i.qa_title } 
			                                         </a>  
					                       	<%  } else { // 로그인 됐을 때 댓글인 경우  
					                    	   		String id = (String)session.getAttribute("sessionID");
					                    	%> 
					                          		<a href="<%=request.getContextPath() %>/camp_qa_content.do?id=<%=id %>&no=${i.qa_no }&page=${paging.page }">
					               							${i.qa_title } 
					               					</a>
					                       	<%  } %>
					                	</td>
						 			</c:if>
						 			<c:if test="${i.qa_indent == 0}">
						 				<td class="board_title qa_title">
							 				<%	// 로그인 안되었을 경우 
					                            if(session.getAttribute("sessionID")==null){%>
				                            		<a href="#" onclick="loginAlert()">
		                                            	${i.qa_title }
		                                       	 	</a>
					                       	<%  } else { // 로그인 됐을 때
					                    	   		String id = (String)session.getAttribute("sessionID");
					                    	%> 
					                            	<a href="<%=request.getContextPath() %>/camp_qa_content.do?id=<%=id %>&no=${i.qa_no }&page=${paging.page }">
				               							${i.qa_title } </a>
					                       	<%  } %>
					                	</td>
						 			</c:if>
				               		<td> ${i.qa_writer } </td>
				               		<td> ${i.qa_date } </td>
				               		<td> ${i.qa_hit } </td>
				            	</tr>
				         	</c:forEach>
				      	</c:if>
                        
                        <c:if test="${empty list }">
                            <tr>
                                <td colspan="6"><h4>게시글이 없습니다.</h4></td>
                            </tr>
                        </c:if>
                   		<tr>
                            <td colspan="6" align="right" class="table_btn">
                            	<%	// 로그인 안되었을 경우 
			                        if(session.getAttribute("sessionID")==null){ %>
			                        	<input type="button" value="글쓰기"
                                       			onclick="loginAlert()">
			                   	<%  } else { // 로그인 됐을 때
			                    	   	String id = (String)session.getAttribute("sessionID");
			                    %> 
		                            	<input type="button" value="글쓰기"
                                      			onclick="location.href='camp_qa_write.do?id=<%=id %>&page=${paging.page }'">
		                       	<%  } %>	
                                
                            </td>
                        </tr>
                    </table>
        
                    <div class="ext_paging" style="margin-top: 20px;">
                    	<%-- 페이징 처리 부분 --%>
					   <c:if test="${paging.getPage() > paging.getBlock() }">
					      <a href="camp_qa.do?page=1">◀◀</a>
					      <a href="camp_qa.do?page=${paging.getStartBlock() - 1 }"> &lt;<span class="page_s">이전</span> | </a>&nbsp;
					   </c:if>
					   
					   <c:forEach begin="${paging.getStartBlock() }"
					          				end="${paging.getEndBlock() }" var="i">
					      <c:if test="${i == paging.getPage() }">
					         <b> <a href="camp_qa.do?page=${i }">[${i }]</a></b>
					      </c:if>
					   
					   	  <c:if test="${i != paging.getPage() }">
					         <a href="camp_qa.do?page=${i }">[${i }]</a>
					      </c:if>
					   </c:forEach>
				
					   <c:if test="${paging.getEndBlock() < paging.getAllPage() }">&nbsp;
					      <a href="camp_qa.do?page=${paging.getEndBlock() + 1 }"> | <span class="page_s">다음</span>&gt; </a>
					      <a href="camp_qa.do?page=${paging.getAllPage() }">▶▶</a>
					   </c:if>
                    </div>
                    
                    <%-- 검색 부분! --%>
                    <div class="ext_search">
                    	<form method="post"
					      	action="<%=request.getContextPath() %>/camp_qa_search.do">
					   
					   	  	<input type="hidden" name="page" value="${paging.getPage() }">
					   	  
					      	<select name="field">
					         	<option value="qaTitle">제목</option>
					         	<option value="qaCont">내용</option>
					         	<option value="qaTitle_cont">제목+내용</option>
					         	<option value="qaWriter">작성자</option>
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
    <jsp:include page="../inc/oh_camping_bottom.jsp" />
</body>
</html>
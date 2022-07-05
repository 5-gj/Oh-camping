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
        // 회원가입 화면의 입력값들을 검사한다.
        function checkValue()
        {
            var form = document.qaWriteForm;
        
            if(form.qa_type.value == "00"){
                alert("유형을 선택하세요.");
                return false;
            }

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
                    <li><a href="<%=request.getContextPath() %>/review.do">숙박후기</a></li> <!-- -->
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
    
            <p class="sub_title">이용문의 글 작성하기<span class="sub_title2">Q&A</span></p>
            
            <!-- 본문 시작 -->
            <div id="sub_contents">        
                <div id="board_wrap">
                	<% String id = (String)session.getAttribute("sessionID"); 
                   		if(!id.equals("admin")){ %>
                   			<c:set var="mdto" value="${Info }" />
                   	<%	} %>
                    <c:set var="page" value="${Page }" />
                    <form method="post" name="qaWriteForm" onsubmit="return checkValue()" 
                    	action="<%=request.getContextPath() %>/camp_qa_write_ok.do" >
                    	
	   	  				<input type="hidden" name="page" value="${Page }"> 
                        <table border="0" cellspacing="0" width="100%" class="table write_table">
                           	<tr>
                              	<th>작성자</th>
                              	<td>
                              		<% 	if(id.equals("admin")){ %>
		                        			<input type="hidden" name="qa_userid" value="admin">
		                        			<input type="text" name="qa_writer" class="input_text"
		    										value="관리자" readonly>
		                        	<%	}else { %>
		                        			<input type="hidden" name="qa_userid" value="${mdto.mem_id }">
		                        			<input type="text" name="qa_writer" class="input_text"
		    										value="${mdto.mem_name }" readonly>
		                        	<%	} %>
                              	</td>
                           	</tr>
                           	<tr>
                                <th>문의 유형</th>
                                <td class="qa_select">
                                	<select name="qa_type">
			                        	<option value="00"> 유형을 선택해주세요 </option>
			                        	<option value="결제문의"> 결제문의 </option>
			                        	<option value="객실문의"> 객실문의 </option>
			                        	<option value="예약문의"> 예약문의 </option>
			                        	<option value="기타문의"> 기타문의 </option>
			                        </select>
                                </td>
                            </tr>
                            <tr>
                                <th>글제목</th>
                                <td><input class="type_text input_text" name="qa_title"></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="emp"></td>
                            </tr>
                            <tr>
                                <th>글내용</th>
                                <td>
                                    <textarea name="qa_cont">
                                    	${dto.qa_cont }
                                    </textarea>
                                </td>
                            </tr>

                            <tr>
                                <td align="center" colspan="2" class="board_btn">
                                    <input type="submit" value="글쓰기">&nbsp;&nbsp;
                                    <input type="button" value="목록" onclick="location.href='camp_qa.do?page=${Page }'">
                                </td>
                            </tr>
                        </table>
                        <div></div>
                    </form>
                    
                </div> <!-- board_wrap -->
                    
            </div> <!-- sub_contents -->
    
        </div>
        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/oh_camping_bottom.jsp" />
</body>
</html>
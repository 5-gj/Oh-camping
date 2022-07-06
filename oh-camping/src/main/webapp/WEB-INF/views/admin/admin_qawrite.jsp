<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
                 <c:set var="dto" value="${qadto }" />
                 <c:set var="page" value="${page }"/>
              <form method="post" action="<%=request.getContextPath()%>/admin_qa_write_ok.do">
              	
              	<input type="hidden" name="qa_userid" value="admin">
              	<input type="hidden" name="qa_writer" value="관리자">
              	<input type="hidden" name="qa_type" value="${dto.qa_type }">
              	<input type="hidden" name="qa_title" value="${dto.qa_title }">
              	<input type="hidden" name="qa_group" value="${dto.qa_group }">
 				<input type="hidden" name="page" value="${page }"> 
                  <table border="0" cellspacing="0" width="100%" class="table write_table">
                     	<tr>
                        	<th>문의 작성자</th>
                        	<td>
                              ${dto.qa_writer } 님
                        	</td>
                     	</tr>
                     	<tr>
                          <th>문의 유형</th>
                          <td class="qa_select">
                          	${dto.qa_type }
                  		</td>
                      </tr>
                      <tr>
                          <th>문의 제목</th>
                          <td>
                          	${dto.qa_title }
                         	</td>
                      </tr>
                      <tr>
                          <th>문의 내용</th>
                          <td>
                              ${dto.qa_cont }
                          </td>
                      </tr>
                      <tr>
                          <td colspan="2" class="emp"></td>
                      </tr>
                      <tr>
                          <td colspan="2" class="center qa_reply">
                          	<span>RE</span> ${dto.qa_title }
                          </td>
                      </tr>
                      <tr>
                          <th>답변하기 </th>
                          <td>
                              <textarea name="qa_cont">
                              </textarea>
                          </td>
                      </tr>

                      <tr>
                          <td align="center" colspan="2" class="board_btn">
                              <input type="submit" value="답변등록">&nbsp;&nbsp;
                              <input type="button" value="목록으로" onclick="location.href='admin_qa.do?page=${page }'">
                          </td>
                      </tr>
                  </table>
                  
              </form>
              	
          </div> <!-- board_wrap -->
              
      <div class="clear"></div>
    </div sub_wrap>
	<jsp:include page="../inc/admin_bottom.jsp" />

</body>
</html>
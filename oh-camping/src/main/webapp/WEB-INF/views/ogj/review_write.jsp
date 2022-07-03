<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
<link rel="stylesheet" href="resources/ogjcss/review_write.css">
<script src="<%=request.getContextPath() %>/resources/js/review_write.js"></script>

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
                    <li><a href="<%=request.getContextPath() %>/camp_qa.do"><i class="fa fa-caret-right"></i>이용문의</a></li>
                    <li><a href="<%=request.getContextPath() %>/review.do"  class="nav_on">숙박후기</a></li> <!-- -->
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
    
            <p class="sub_title">리뷰 작성하기<span class="sub_title2">Q&A</span></p>
            
            <!-- 본문 시작 -->
            <div id="sub_contents">        
                <div id="board_wrap">
                	<% String id = (String)session.getAttribute("sessionID"); %>
                    <c:set var="page" value="${Page }" />
                    <form method="post" name="reviewWriteForm"
                    	action="<%=request.getContextPath() %>/review_write_ok.do" >
                    	
                        <table border="0" cellspacing="0" width="100%" class="table write_table">
                           	<tr>
                              	<th>작성자</th>
                              	<td>

		                        			<input type="text" name="review_id" class="input_text"
		    										value="<%=id %>" readonly>
		                        	
                              	</td>
                           	</tr>
                           	<tr>
                                <th>객실</th>
                                <td><input class="input_text" name="review_roomname" value="${roomName }" readonly></td>
                            </tr>
                            <tr>
                                <th>이용 날짜</th>
                                <td><input class="input_text" name="review_orderdate" value="${orderDate }" readonly></td>
                            </tr>
                            
                            <tr>
                                <th>글제목</th>
                                <td><input class="type_text input_text" name="review_title"></td>
                            </tr>


                            <tr>
                                <td colspan="2" class="emp"></td>
                            </tr>
                            <tr>
                                <th>글내용</th>
                                <td>
                                    <textarea name="review_cont"></textarea>
                                </td>
                            </tr>
                            
<!--                             <tr>
                            	<th>사진첨부 (최대 5개)</th>
								<td>
									<div id="fileDiv">
										<p>
											<input type="file" class="file" name="file_0" />
										</p>
									</div>
								</td>
							</tr> -->

                            <tr>
                                <td align="center" colspan="2" class="board_btn">
                                    <input type="submit" value="글쓰기" >&nbsp;&nbsp;
                                    <input type="button" value="목록" onclick="location.href='review.do?page=${Page }'">
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
    <script type="text/javascript">
/*     var g_count =1;
    
    
    $(document).ready(function(){


        $("a[name='delete']").on("click",function(e){
            e.preventDefault();
            fn_fileDelete($(this));
        })

        
         $(document).on("change",".file",function(e){
        	 e.preventDefault();
        	 
        	 if(g_count < 5){
             fn_fileAdd();
             fn_deleteAdd($(this))}
    });
        $(document).on("click",".btn",function(e){
       	 e.preventDefault();
      	fn_fileDelete($(this));
      	
      	if(g_count == 5){
      		
      	}
   });
        
        
    });
     
     
    function fn_openBoardList(){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/sample/openBoardList.do'/>");
        comSubmit.submit();
    }
     
    function fn_writeBoard(){
        var comSubmit = new ComSubmit("frm");
        comSubmit.setUrl("<c:url value='/sample/writeBoard.do'/>");
        comSubmit.submit();
    }
    function fn_fileDelete(obj){
        obj.parent().remove();
        g_count--;
        
    }
    function fn_deleteAdd(obj){
    	var str = "<a href='#this' name='delete' class='btn'>삭제하기</a> ";
        obj.after(str);
    }
    
    function fn_fileAdd(){
        var str = "<p><input type='file' class='file' name='file_"+(g_count++)+"'/></p> ";
        $("#fileDiv").append(str);
         
        $("a[name='delete']").on("click",function(e){
            e.preventDefault();
            fn_fileDelete($(this));         
        })
    } */
    </script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!--  -->
<script type="text/javascript">
    // 입력값들을 검사한다.
    function checkValue()
    {
        var form = document.userInfo;
    
        if(!form.mem_id.value){
            alert("아이디를 입력하세요.");
            return false;
        }
        
        if(!form.mem_pwd.value){
            alert("비밀번호를 입력하세요.");
            return false;
        }
    }   
</script>
</head>
<body>
   <section class="wrap_login ">
         <div class="wrapper"> 
            <jsp:include page="../inc/oh_camping_top.jsp" />   
         </div>
         <div id="sub_wrap" class="webfont"> 
            <div id="sub_contents">
               <div id="login_wrap">
                  <h1>로그인</h1>
                  <form method="post" name="userInfo" action="<%=request.getContextPath() %>/camp_login_ok.do">
                     <table class="login_t">
                        <tr>
                           <td> 
                               <input class="input_box" name="mem_id" id="mem_id" placeholder="아이디">
                           </td>
                        </tr>
                        
                        <tr>
                           <td> <input type="password" class="input_box" name="mem_pwd" placeholder="비밀번호"> </td>
                        </tr>        
                     </table>
                     <div class="right login_a">
		            	<a href="<%=request.getContextPath() %>/camp_find_password.do" class="find_password">
		            		비밀번호 찾기 <i class="fa fa-chevron-right"></i>
			            </a>
		             </div>
                     <div id="login_menu">
                        <input type="submit" value="로그인" class="login_b submit_b">
			            <hr class="lm_line">
		                <input type="button" value="회원가입" class="join_b" 
			               	onclick="location.href='<%=request.getContextPath() %>/camp_join.do'" >
                     </div>
                     
                  </form>

               </div>
            </div sub_contents>
            
            <div class="clear"></div>
         </div sub_wrap>
      </div>
    </section>  
    
    <div class="footer_no_margin">
    	<jsp:include page="../inc/oh_camping_bottom.jsp" />
    </div>
    
</body>
</html>
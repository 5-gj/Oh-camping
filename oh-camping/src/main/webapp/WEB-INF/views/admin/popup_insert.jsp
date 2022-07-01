<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="h-100">
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
//preview image 
$(document).ready(function(){
   var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            // 파일명 추출
            var filename = $(this)[0].files[0].name;
        } 

        else {
            // Old IE 파일명 추출
            var filename = $(this).val().split('/').pop().split('\\').pop();
        };

        $(this).siblings('.upload-name').val(filename);
    });

    //preview image 
    var imgTarget = $('.preview-image .upload-hidden');

    imgTarget.on('change', function(){
        var parent = $(this).parent();
        parent.children('.upload-display').remove();

        if(window.FileReader){
            //image 파일만
            if (!$(this)[0].files[0].type.match(/image\//)) return;
            
            var reader = new FileReader();
            reader.onload = function(e){
                var src = e.target.result;
                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
            }
            reader.readAsDataURL($(this)[0].files[0]);
        }

        else {
            $(this)[0].select();
            $(this)[0].blur();
            var imgSrc = document.selection.createRange().text;
            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

            var img = $(this).siblings('.upload-display').find('img');
            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
        }
    });
});
</script>
<script language="javascript">

  function formCheck()
  {
    var pform = document.popup;

    if(pform.popup_title.value.length == 0)
    {
      alert('제목을 입력하세요.');
      pform.popup_title.focus();
      return false;
    }
    if(pform.popup_top.value.length == 0 || pform.popup_top.value < 0)
    {
      alert('팝업창의 TOP위치를 입력하세요.');
      pform.popup_top.focus();
      return false;
    }
    if(pform.popup_left.value.length == 0 || pform.popup_left.value < 0)
    {
      alert('팝업창의 LEFT위치를 입력하세요.');
      pform.popup_left.focus();
      return false;
    }

    pform.submit();
  }

</script>
</head>
<body class="d-flex flex-column h-100">
    
    <jsp:include page="../inc/admin_top.jsp" />   
    <div id="admin_wrap" class="container webfont">
        <!-- 왼쪽 메뉴 -->
        <div id="aside">
            <div class="leftmenu">
                <h3 id="left_menu_head">팝업관리</h3>
                <ul class="left_menu_ul">
                    <li>
                        <a href="<%=request.getContextPath() %>/admin_popup.do">
                            <i class="fa fa-caret-right"></i> 팝업리스트
                        </a>
                    </li>                  
                    <li class="nav_on">
                        <a href="<%=request.getContextPath() %>/admin_popup_insert.do">
                            <i class="fa fa-caret-right"></i> 팝업등록
                        </a>
                    <li>
                </ul>
            </div>
        </div>
        <!-- // 왼쪽 메뉴 -->
                
        <!-- 본문 -->
        <div id="section">
            <!-- 본문 타이틀 -->
            <h3 class="admin_title">팝업 등록 <span class="sub_title2">Pop-up</span></h3>

            <!-- 본문 내용 시작 -->
            <div id="sub_contents">        
                <div id="board_wrap">
                    <c:set var="page" value="${Page }" />
                    <form method="post" name="popup" onsubmit="return formCheck()" 
                    	enctype="multipart/form-data"
                    	action="<%=request.getContextPath() %>/admin_popup_insert_ok.do" >
                    	
	   	  				<input type="hidden" name="page" value="${Page }"> 
                        <table border="0" cellspacing="0" width="100%" class="table write_table pinputtable">
                            <tr>
                                <th>제목</th>
                                <td><input class="type_text input_text" name="popup_title"></td>
                            </tr>
                            <tr class="filebox bs3-primary preview-image">
					   	        <th>팝업창 이미지 선택</th>
					   	        <td><input name="popup_file" class="upload-name" value="파일선택" readonly > &nbsp;
									<label for="input-file">업로드</label> 
									<input type="file" id="input-file" name="file1" class="upload-hidden"> </td>
					   	    </tr>
                     		<tr>
                                <th>팝업창 위치</th>
                                <td class="tbcont">
									TOP
									<input type="text" size="3" id="border" name="popup_top" value="0" 
										onkeyup="check_value(document.popup.popup_top, 'int')">&nbsp;pixel
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									LEFT
									<input type="text" size="3" id="border" name="popup_left" value="0" 
										onkeyup="check_value(document.popup.popup_left, 'int')">&nbsp;pixel
								</td>
                            </tr>
							<tr>
                                <th>팝업창 사용 여부</th>
                               	<td class="tbcont">
									<input type="radio" name="popup_use" value="1" class="radio" checked="">&nbsp;사용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="popup_use" value="0" class="radio">&nbsp;사용안함
								</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" class="board_btn">
                                    <input type="submit" value="등록">&nbsp;&nbsp;
                                    <input type="button" value="목록" onclick="location.href='admin_popup.do?page=${Page }'">
                                </td>
                            </tr>
                        </table>
                        <div></div>
                    </form>
                    
                </div> <!-- board_wrap -->
                    
            </div>
            <!-- 본문 내용(sub_contents) 끝 -->
        </div>
        <!-- 본문(section) 끝 -->


        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/admin_bottom.jsp" />
</body>
</html>
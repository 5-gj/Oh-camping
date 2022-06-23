<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	.wrapper {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
		margin-top: 200px;
		align-items: center;
		font-size: 12pt;
		font-family: Dotum, 돋움;
	}
	
	.content {
		width: 600px;
		display: flex;
		flex-direction: column;
		align-items: center;
		border: 1px solid #aaa;
	}
	
	.title_bar {
		width: 100%;
		height: 86px;
		background-color: black;
	}
	
	.title_content {
		height: 86px;
		text-align: center;
		font-size: 20px;
		line-height: 86px;
		color: #fff;
	}
	
	.search {
		margin-top: 15px;
		width: 80%;
	}
	
	.search_text {
		font-size: 12px;
		margin-top: 15px;
		margin-bottom: 20px;
		
	}
	
	.input_text {
		width: 100%;
		border: 0px;
		border-bottom: 1px solid #D9D9D9;
		padding: 12px 0px;
		font-size: 14px;
		border-radius: 0px;
	}
	
	.search_button {
		margin-top: 40px;
		margin-bottom: 40px;
	}
	
	.button {
		width: 100%;
		height: 50px;
		background-color: #fff;
		border: 1px solid #aaa;
		border-radius: 3px;
		color: #aaa;
		cursor: pointer;
		font-size: 14px;
	
	}

	
	

</style>
</head>
<body>

	<div class="wrapper">


	<div class="content">
	<div class="title_bar">
		<div class="title_content">예약조회</div>
	</div>

	<div class="search">
		<div class="search_content">
		<div class="search_text">예약번호</div>
		<div class="search_input">
		<input type="text" name="res_no" class="input_text" maxlength="10"
			placeholder="00000000">
		</div>
		
		<div class="search_text">예약자명</div>
		<div class="search_input">
		<input type="text" name="res_name" class="input_text" maxlength="10"
			placeholder="예약자명을 입력해주세요.">
		</div>
		
		<div class="search_text">휴대폰번호</div>
		<div class="search_input">
		<input type="text" name="res_no" class="input_text" maxlength="10"
			placeholder="'-'없이 입력해 주세요.">
		</div>
		</div>
		
		<div class="search_button">
		<input type="button" value="조회하기" class="button"> 
		</div>
	</div>
	</div>

	<div style="padding-top: 2rem; color: #333; font-size: 12px;">
	※ 입실일 이후 최대 30일까지의 예약건만 조회 가능합니다.
	</div>
	
	</div>

</body>
</html>
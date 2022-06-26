<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align="center">
<table border="1" cellspacing="0" width="700">
<tr>
	<th>글번호</th><th>객실</th><th>글제목</th><th>작성자</th><td>날짜</td><th>조회수</th>
</tr>
<c:set var="list" value="${List }"/>
<c:set var="Paging" value="${Paging }" />

<c:if test="${!empty list }">
<c:forEach items="${list }" var="r">
<tr>
	<td>${r.review_no }</td>
	<td>${r.review_roomno }</td>
	<td>${r.review_title }</td>
	<td>${r.review_id }</td>
	<td>${r.date }</td>
	<td>${r.views }</td>
</tr>

</c:forEach>

</c:if>
<c:if test="${empty list }">
	<td colspan="6">
	<h3>조회된 리뷰가 없습니다.</h3>
	</td>
</c:if>
<tr>
	<td colspan="6" align="right">
		<input type="button" value="리뷰 작성" onclick="location.href='review_write.do'">
	</td>
</tr>


</table>

</div>


</body>
</html>
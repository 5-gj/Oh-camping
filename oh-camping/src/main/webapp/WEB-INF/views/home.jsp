<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>

<a href="<%=request.getContextPath()%>/calendar.do">예약달력</a>
<a href="<%=request.getContextPath()%>/payinfo.do">요금안내</a>
<a href="<%=request.getContextPath()%>/reserveinfo.do">예약 확인/조회</a>
<a href="<%=request.getContextPath()%>/calendar_iframe7.do">7월 iframe</a>
<a href="<%=request.getContextPath()%>/calendar_iframe8.do">8월 iframe</a>


</body>
</html>
